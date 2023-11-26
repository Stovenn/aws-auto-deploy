package http

import "net/http"

func Run() error {

	server := http.NewServeMux()

	server.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello, World"))
	})

	return http.ListenAndServe(":8080", server)
}
