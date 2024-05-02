/*
----- RAND-0007.GO -----

To run this program:

  go run rand-0007.go > myfile-0001.txt

Then to use Qrencode:

  qrencode -8 -o qr-myfile-0001.png -r myfile-0001.txt

Or Zint:

  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile-0001.txt

*/
package main

import (
  "fmt"
  "math/rand"
)

var num int64;
var randnum int64;

func main() {

  rand.Seed(196383);

  for num:=int64(0); num<=40; num++   {
    randnum=random(0, 255);  /* Get the random number */
    fmt.Printf("%02x", randnum);  /* Print this number */
  }
  fmt.Printf("\n");
}

func random(randmin int64, randmax int64) int64 {
    return rand.Int63n(255);
}

