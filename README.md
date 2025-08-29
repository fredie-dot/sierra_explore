# Sierra Explore - Encore Backend

This is the backend API for Sierra Explore, built with Encore and Go.

## 🚀 Quick Start

### Prerequisites
- Go 1.21 or later
- Encore CLI installed (`go install encore.dev@latest`)

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/fredie-dot/sierra_explore.git
   cd sierraexplore
   ```

2. **Run locally**
   ```bash
   encore run
   ```

3. **Test the API**
   ```bash
   curl http://localhost:4000/hello/world
   ```

### Deployment

The app automatically deploys to Encore when you push to the main branch:

```bash
git add .
git commit -m "Initial Encore backend setup"
git push origin main
```

## 📡 API Endpoints

### Public Endpoints

#### Hello Service
- `GET /hello/:name` - Returns a greeting message
  ```bash
  curl http://localhost:4000/hello/world
  # Response: {"message": "Hello, world!"}
  ```

#### Authentication
- `POST /auth/login` - User login
- `POST /auth/register` - User registration  
- `POST /auth/refresh` - Refresh access token

### Private Endpoints (require authentication)

#### Users
- `POST /users` - Create a new user
- `GET /users/:id` - Get user by ID

#### Payments
- `POST /payments` - Create a new payment
- `GET /payments/:id` - Get payment by ID

#### Maps/Locations
- `POST /locations` - Create a new location
- `GET /locations/:id` - Get location by ID
- `POST /locations/search` - Search for locations

#### Notifications
- `POST /notifications` - Create a new notification
- `GET /notifications/:id` - Get notification by ID
- `GET /notifications` - List user notifications
- `POST /notifications/:id/read` - Mark notification as read

## 🏗️ Project Structure

```
sierraexplore/
├── encore.app          # Encore app configuration
├── go.mod              # Go module file
├── main.go             # Main application entry point
├── backend/            # Service implementations
│   ├── auth/           # Authentication service
│   ├── users/          # User management service
│   ├── payments/       # Payment processing service
│   ├── maps/           # Maps and location service
│   └── notifications/  # Notification service
└── frontend/           # React Native mobile app (future)
```

## 🔧 Configuration

The following Encore secrets are already configured:

- `ADMIN_AUTH_SECRET` - Admin authentication secret
- `ADMIN_PORTAL_SECRET` - Admin portal secret
- `AWS_SES_KEY` - AWS SES API key
- `AWS_SES_SECRET` - AWS SES API secret
- `CALENDAR_API_KEY` - Calendar API key
- `CLOUDINARY_KEY` - Cloudinary API key
- `CLOUDINARY_SECRET` - Cloudinary API secret
- `GOOGLE_CLIENT_ID` - Google OAuth client ID
- `GOOGLE_MAPS_KEY` - Google Maps API key
- `JWT_SECRET` - JWT signing secret
- `MAPBOX_ACCESS_TOKEN` - Mapbox access token
- `ORANGE_MONEY_KEY` - Orange Money API key
- `ORANGE_MONEY_SECRET` - Orange Money API secret
- `PASSWORD_PEPPER` - Password hashing pepper
- `RBAC_CONFIG_KEY` - Role-based access control config
- `SENDGRID_KEY` - SendGrid API key
- `SESSION_SECRET` - Session encryption secret
- `STRIPE_SECRET_KEY` - Stripe secret key
- `STRIPE_WEBHOOK_SECRET` - Stripe webhook secret

## 🌐 Production URLs

- **API Base URL**: `https://sierraexplore-zk8i.encr.app`
- **Encore Dashboard**: Available in your Encore dashboard under app ID `sierraexplore-zk8i`

## 🔄 Development Workflow

1. **Local Development**: Use `encore run` for local development
2. **Testing**: All endpoints include placeholder implementations for testing
3. **Deployment**: Push to main branch for automatic deployment
4. **Monitoring**: Use Encore dashboard for logs and monitoring

## 📝 TODO

The following services are currently placeholder implementations and need to be fully implemented:

- [ ] **Authentication Service**: Implement JWT-based auth with proper user management
- [ ] **Users Service**: Add database integration and user CRUD operations
- [ ] **Payments Service**: Integrate with Stripe for payment processing
- [ ] **Maps Service**: Integrate with Mapbox for location services
- [ ] **Notifications Service**: Add email/SMS integration with SendGrid/AWS SES

## 🤝 Contributing

1. Create a feature branch
2. Implement your changes
3. Test locally with `encore run`
4. Push to your branch
5. Create a pull request

## 📄 License

This project is part of Sierra Explore.
