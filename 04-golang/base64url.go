/*
----- BASE64URL.GO -----

To run this program:

  go run base64url.go > myfile-0001.txt

Then to use Qrencode:

  qrencode -8 -o qr-myfile-0001.png -r myfile-0001.txt

Or Zint:

  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile-0001.txt

*/
package main

import (
  b64 "encoding/base64"
    "fmt"
)

func main() {

// Change the data to suit your needs:
  data := "20240503-175240@kevinleake01"

  uEnc := b64.URLEncoding.EncodeToString([]byte(data))
  fmt.Println(uEnc)
}