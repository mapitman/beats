package main

import (
	"fmt"
	"time"
	"github.com/mapitman/internet-time"
)

func main() {
	fmt.Printf("@%03d", internettime.ConvertToBeats(time.Now().UTC()))
	fmt.Println()
}
