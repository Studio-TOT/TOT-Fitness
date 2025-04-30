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
