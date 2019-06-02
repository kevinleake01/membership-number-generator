package main

import (
  "fmt"
  "math/rand"
)

var num int64;
var randnum int64;

func main() {

  rand.Seed(26);

  for num:=int64(0); num<=32; num++   {
    randnum=random(0, 255);  /* Get the random number */
    fmt.Printf("%02x", randnum);  /* Print this number */
  }
  fmt.Printf("\n");
}

func random(randmin int64, randmax int64) int64 {
    return rand.Int63n(255);
}

