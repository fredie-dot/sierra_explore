package hello

import (
	"context"
	"encore.dev/beta/errs"
)

// HelloRequest represents the request to the hello endpoint
type HelloRequest struct {
	Name string `json:"name"`
}

// HelloResponse represents the response from the hello endpoint
type HelloResponse struct {
	Message string `json:"message"`
}

// SayHello endpoint: accessible at /hello/:name
// Example: GET /hello/world → {"message": "Hello, world!"}
//
//encore:api public path=/hello/:name method=GET
func SayHello(ctx context.Context, name string) (*HelloResponse, error) {
	if name == "" {
		return nil, errs.B().Msg("name cannot be empty").Err()
	}
	return &HelloResponse{Message: "Hello, " + name + "!"}, nil
}
