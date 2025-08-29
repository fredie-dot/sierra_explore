package main

import (
	"context"

	"encore.dev"
	"encore.dev/beta/errs"
)

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

func main() {
	// Encore apps don't need a main loop, but we keep main for Go module
	encore.Run()
}
