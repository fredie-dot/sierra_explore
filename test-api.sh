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
echo "   POST /users/get                      - Get user"
echo "   POST /payments                       - Create payment"
echo "   POST /payments/get                   - Get payment"
echo "   POST /locations                      - Create location"
echo "   POST /locations/get                  - Get location"
echo "   POST /locations/search               - Search locations"
echo "   POST /notifications                  - Create notification"
echo "   POST /notifications/get              - Get notification"
echo "   POST /notifications/list             - List notifications"
echo "   POST /notifications/read             - Mark as read"
