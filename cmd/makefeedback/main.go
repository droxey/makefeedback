package main

import (
	"fmt"
	"time"
)

// Feedback storage
type Feedback struct {
	ID     int
	Rating int
	Date   time.Time
	Time   time.Time
	Slug   string
}

func sendFeedback(slug string, rating int) {
	f := Feedback{Rating: rating, Slug: slug}
	fmt.Println(f.Slug, "received a rating of:", f.Rating)
}

func main() {
	sendFeedback("a-test-slug", 5)
}
