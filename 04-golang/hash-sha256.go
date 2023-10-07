/*
----- HASH-SHA256.GO -----

To run this program:

  go run hash-sha256.go > myfile-0001.txt

Then to use Qrencode:

  qrencode -8 -o qr-myfile-0001.png -r myfile-0001.txt

Or Zint:

  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile-0001.txt

*/
package main

import (
  b64 "encoding/base64"
  "crypto/sha256"
  "fmt"
)

func main() {

// Change the data in s to suit your needs:
  s := "20231012-1918@kevinleake01"

  h := sha256.New()
  h.Write([]byte(s))
  bs := h.Sum(nil)

  uEnc := b64.URLEncoding.EncodeToString([]byte(bs))
  fmt.Println(uEnc)
}