package main

import (
	"autodeploy/pkg/http"
	"log"
)

func main() {
	err := http.Run()
	if err != nil {
		log.Fatalln(err)

	}
}
