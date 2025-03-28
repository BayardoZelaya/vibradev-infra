package main

import (
	"fmt"
	"net/http"
	"os"
)

func handler(w http.ResponseWriter, r *http.Request) {
	greeting := os.Getenv("GREETING")
	if greeting == "" {
		greeting = "Hello from Go backend!"
	}
	fmt.Fprintf(w, greeting)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Go service is running on port 8081")
	err := http.ListenAndServe(":8081", nil)
	if err != nil {
		fmt.Println("Error starting server:", err)
		os.Exit(1)
	}
}
