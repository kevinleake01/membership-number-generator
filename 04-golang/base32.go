/*
----- BASE32.GO -----

To run this program:

  go run base32.go > myfile-0001.txt

Then to use Qrencode:

  qrencode -8 -o qr-myfile-0001.png -r myfile-0001.txt

Or Zint:

  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile-0001.txt

*/
package main

import (
  b32 "encoding/base32"
    "fmt"
)

func main() {

// Change the data to suit your needs:
  data := "20231012-1701@kevinleake01"

  uEnc := b32.StdEncoding.EncodeToString([]byte(data))
  fmt.Println(uEnc)
}