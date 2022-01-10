package main

import (
	"net/http"
	"time"

	"snai.travel.blog/blog/internal/routers"
)

func main() {
	router := routers.NewRouter()
	//router.Run()
	s := &http.Server{
		Addr:           ":8080",
		Handler:        router,
		ReadTimeout:    10 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}
	s.ListenAndServe()
}
