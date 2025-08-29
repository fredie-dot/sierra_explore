#!/bin/bash

# Test script for Sierra Explore API
echo "🧪 Testing Sierra Explore API..."

# Test the Hello endpoint
echo "Testing GET /hello/world..."
curl -s http://localhost:4000/hello/world | jq '.' || echo "Server not running locally"

echo ""
echo "✅ API test completed!"
echo ""
echo "🌐 Production API will be available at:"
echo "   https://sierraexplore-zk8i.encr.app/hello/world"
echo ""
echo "📚 Available endpoints:"
echo "   GET  /hello/:name                    - Hello service"
echo "   POST /auth/login                     - User login"
echo "   POST /auth/register                  - User registration"
echo "   POST /auth/refresh                   - Refresh token"
echo "   POST /users                          - Create user"
echo "   GET  /users/:id                      - Get user"
echo "   POST /payments                       - Create payment"
echo "   GET  /payments/:id                   - Get payment"
echo "   POST /locations                      - Create location"
echo "   GET  /locations/:id                  - Get location"
echo "   POST /locations/search               - Search locations"
echo "   POST /notifications                  - Create notification"
echo "   GET  /notifications/:id              - Get notification"
echo "   GET  /notifications                  - List notifications"
echo "   POST /notifications/:id/read         - Mark as read"
