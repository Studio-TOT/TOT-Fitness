-- Create tables for exercise data
CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_en_us VARCHAR(255),
    name_alternative VARCHAR(255),
    slug VARCHAR(255),
    description TEXT,
    description_en_us TEXT,
    need_warmup BOOLEAN DEFAULT false,
    advanced_weight INTEGER,
    featured_weight INTEGER,
    weight INTEGER,
    impact INTEGER,
    use_youtube_links BOOLEAN DEFAULT false,
    featured BOOLEAN DEFAULT false,
    sponsered_link BOOLEAN DEFAULT false,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE muscles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_en_us VARCHAR(255),
    scientific_name VARCHAR(255),
    url_name VARCHAR(255),
    description TEXT,
    description_en_us TEXT,
    lft INTEGER,
    rght INTEGER,
    tree_id INTEGER,
    level INTEGER,
    parent INTEGER
);

CREATE TABLE exercise_muscles (
    exercise_id INTEGER REFERENCES exercises(id),
    muscle_id INTEGER REFERENCES muscles(id),
    is_primary BOOLEAN DEFAULT false,
    is_secondary BOOLEAN DEFAULT false,
    is_tertiary BOOLEAN DEFAULT false,
    PRIMARY KEY (exercise_id, muscle_id)
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_en_us VARCHAR(255),
    include_in_api BOOLEAN DEFAULT true,
    include_in_workout_generator BOOLEAN DEFAULT true,
    display_order INTEGER,
    enable BOOLEAN DEFAULT true,
    featured BOOLEAN DEFAULT false,
    image VARCHAR(255),
    mobile_icon VARCHAR(255),
    description TEXT
);

CREATE TABLE exercise_categories (
    exercise_id INTEGER REFERENCES exercises(id),
    category_id INTEGER REFERENCES categories(id),
    is_primary BOOLEAN DEFAULT false,
    PRIMARY KEY (exercise_id, category_id)
);

CREATE TABLE difficulties (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    name_en_us VARCHAR(255)
);

CREATE TABLE forces (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    url_name VARCHAR(255),
    name_en_us VARCHAR(255),
    description TEXT,
    description_en_us TEXT
);

CREATE TABLE mechanics (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    url_name VARCHAR(255),
    name_en_us VARCHAR(255),
    description TEXT,
    description_en_us TEXT
);

CREATE TABLE exercise_details (
    exercise_id INTEGER REFERENCES exercises(id),
    difficulty_id INTEGER REFERENCES difficulties(id),
    force_id INTEGER REFERENCES forces(id),
    mechanic_id INTEGER REFERENCES mechanics(id),
    PRIMARY KEY (exercise_id)
);

CREATE TABLE exercise_steps (
    id SERIAL PRIMARY KEY,
    exercise_id INTEGER REFERENCES exercises(id),
    order_num INTEGER NOT NULL,
    text TEXT,
    text_en_us TEXT,
    UNIQUE (exercise_id, order_num)
);

CREATE TABLE exercise_images (
    id SERIAL PRIMARY KEY,
    exercise_id INTEGER REFERENCES exercises(id),
    gender VARCHAR(50),
    order_num INTEGER,
    og_image VARCHAR(255),
    original_video VARCHAR(255),
    unbranded_video VARCHAR(255),
    branded_video VARCHAR(255),
    UNIQUE (exercise_id, gender, order_num)
);

-- Add indexes for better performance
CREATE INDEX idx_exercise_muscles_exercise_id ON exercise_muscles(exercise_id);
CREATE INDEX idx_exercise_muscles_muscle_id ON exercise_muscles(muscle_id);
CREATE INDEX idx_exercise_categories_exercise_id ON exercise_categories(exercise_id);
CREATE INDEX idx_exercise_categories_category_id ON exercise_categories(category_id);
CREATE INDEX idx_exercise_steps_exercise_id ON exercise_steps(exercise_id);
CREATE INDEX idx_exercise_images_exercise_id ON exercise_images(exercise_id);

-- USERS TABLE
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    stripe_customer_id VARCHAR(255) UNIQUE,
    is_premium BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW()
);

-- SUBSCRIPTIONS TABLE
CREATE TABLE IF NOT EXISTS subscriptions (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    stripe_subscription_id VARCHAR(255) UNIQUE NOT NULL,
    status VARCHAR(50) NOT NULL,
    current_period_end TIMESTAMP,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS saved_programs (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    program_id VARCHAR(50) NOT NULL,
    program_data JSONB NOT NULL,
    program_info JSONB NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, program_id)
);

-- Programs table to store both predefined and user-created programs
CREATE TABLE IF NOT EXISTS programs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    type VARCHAR(50) NOT NULL, -- 'predefined' or 'user_created'
    created_by INTEGER REFERENCES users(id) ON DELETE SET NULL, -- NULL for predefined programs
    is_public BOOLEAN DEFAULT false, -- for user-created programs
    difficulty VARCHAR(50),
    duration_weeks INTEGER,
    image_url VARCHAR(255),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Program weeks to structure the program
CREATE TABLE IF NOT EXISTS program_weeks (
    id SERIAL PRIMARY KEY,
    program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
    week_number INTEGER NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(program_id, week_number)
);

-- Program days to structure each week
CREATE TABLE IF NOT EXISTS program_days (
    id SERIAL PRIMARY KEY,
    program_week_id INTEGER REFERENCES program_weeks(id) ON DELETE CASCADE,
    day_number INTEGER NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(program_week_id, day_number)
);

-- Program exercises to store exercises for each day
CREATE TABLE IF NOT EXISTS program_exercises (
    id SERIAL PRIMARY KEY,
    program_day_id INTEGER REFERENCES program_days(id) ON DELETE CASCADE,
    exercise_id INTEGER REFERENCES exercises(id) ON DELETE CASCADE,
    sets INTEGER,
    reps INTEGER,
    rest_time INTEGER, -- in seconds
    order_index INTEGER NOT NULL,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- User program progress to track completion
CREATE TABLE IF NOT EXISTS user_program_progress (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
    current_week INTEGER DEFAULT 1,
    current_day INTEGER DEFAULT 1,
    started_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP WITH TIME ZONE,
    status VARCHAR(50) DEFAULT 'in_progress', -- 'in_progress', 'completed', 'paused'
    UNIQUE(user_id, program_id)
);

-- User exercise completion tracking
CREATE TABLE IF NOT EXISTS user_exercise_completion (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    program_exercise_id INTEGER REFERENCES program_exercises(id) ON DELETE CASCADE,
    completed_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    UNIQUE(user_id, program_exercise_id, completed_at::date)
);

-- Program likes/favorites
CREATE TABLE IF NOT EXISTS program_likes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    program_id INTEGER REFERENCES programs(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, program_id)
);

-- Add indexes for better performance
CREATE INDEX idx_program_weeks_program_id ON program_weeks(program_id);
CREATE INDEX idx_program_days_week_id ON program_days(program_week_id);
CREATE INDEX idx_program_exercises_day_id ON program_exercises(program_day_id);
CREATE INDEX idx_user_program_progress_user_id ON user_program_progress(user_id);
CREATE INDEX idx_user_program_progress_program_id ON user_program_progress(program_id);
CREATE INDEX idx_user_exercise_completion_user_id ON user_exercise_completion(user_id);
CREATE INDEX idx_program_likes_user_id ON program_likes(user_id);
CREATE INDEX idx_program_likes_program_id ON program_likes(program_id);
