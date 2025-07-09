# TOT Fitness Club

A fitness application with workout programs, nutrition information, and premium subscription features.

## Features

- **Authentication System**: Email/password registration and login with social authentication options (Google, Apple, Facebook)
- **Premium Subscription**: Access to exclusive workout programs and features through Stripe payments
- **Workout Programs**: Various programs including Muscle Building, Bodyweight, Booty Pump, and Full Body workouts
- **Exercise Database**: Comprehensive collection of exercises with descriptions and muscle targeting
- **Nutrition Guide**: Healthy recipes and meal plans for fitness enthusiasts

## Project Structure

The project is organized into frontend and backend directories:

- **Frontend**: React application using Vite, Tailwind CSS, and React Router
- **Backend**: Express API with PostgreSQL database integration

## Setup & Use

### Project Initialization

- Clone this repository and navigate to the project root directory
- Run `npm install` in both the frontend and backend directories
- Create `.env` files in both frontend and backend directories (see example files)

### Environment Configuration

#### Backend (.env)
```
# Database
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=yourpassword
DB_NAME=tot_fitness

# Authentication
JWT_SECRET=your_secret_key

# Stripe
STRIPE_SECRET_KEY=your_stripe_secret_key
```

#### Frontend (.env)
```
# API URL
VITE_API_URL=http://localhost:5000

# OAuth Configuration
VITE_ENABLE_MOCK_OAUTH=true

# Stripe Configuration
VITE_STRIPE_PUBLIC_KEY=your_stripe_public_key
VITE_STRIPE_MONTHLY_PRICE_ID=price_monthly_id
VITE_STRIPE_ANNUAL_PRICE_ID=price_annual_id

# Feature flags
VITE_ENABLE_PREMIUM_PROGRAMS=true
```

### Available Commands

- `npm run dev` : Starts both servers (frontend + backend) in one terminal
- `npm run dev-front` : Starts the React frontend server
- `npm run dev-back` : Starts the Express backend server
- `npm run migrate` : Run the database migration script
- `npm run lint` : Runs validation tools, and refuses unclean code

## Authentication System

The application implements a complete authentication system with:

- Email/password registration and login
- JWT-based authentication with token persistence
- Social login options for Google, Apple, and Facebook (placeholders in development)
- Protected routes that redirect unauthenticated users to login

### Testing OAuth in Development

In development mode, social login is mocked to simulate the authentication flow without actual OAuth providers. Enable this by setting `VITE_ENABLE_MOCK_OAUTH=true` in your frontend environment.

## Premium Features

The application includes a subscription system with:

- Premium and free content separation
- Stripe payment integration for subscription management
- User-friendly prompts for upgrading to premium
- Preview functionality for premium content to encourage conversions

## Deployment

For deployment, you have to go to `secrets` → app `actions` on the github repo to insert via `New repository secret` :

- CAPROVER_BACK_APPNAME : name app on caprover
- CAPROVER_FRONT_APPNAME : name app on caprover
- CAPROVER_PASSWORD : password caprover
- CAPROVER_SERVER : link of domain

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
