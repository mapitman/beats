package main

import (
	"fmt"
	"time"
)

func main() {
	var t = time.Now().UTC()
	var beats = int(float64(t.Second() + t.Minute() * 60 + (t.Hour() + 1) * 3600) / 86.4)
	fmt.Printf("@%d", beats)
	fmt.Println()
}
