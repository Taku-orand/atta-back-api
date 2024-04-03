package main

import (
	"github.com/gin-gonic/gin"
)

func healthcheck() {
	router := gin.Default()

	router.GET("/healthcheck", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "OK",
		})
	})

	router.Run()
}
