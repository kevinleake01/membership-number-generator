/*
----- AES256-GCM.GO -----

To run this program:

  go run aes256-gcm.go > myfile-0001.txt

Then to use Qrencode:

  qrencode -8 -o qr-myfile-0001.png -r myfile-0001.txt

Or Zint:

  zint -b 58 --eci=26 -o qr-myfile-0001.png -i myfile-0001.txt

*/
package main

import (
  "crypto/aes"
  "crypto/cipher"
  "crypto/rand"
  b64 "encoding/base64"
  "encoding/hex"
  "fmt"
  "io"
)

func main() {

// Change the data in key and plaintext to suit your needs:
  key, _ := hex.DecodeString("000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f")
  plaintext := []byte("20231012-1756@kevinleake01")

  block, err := aes.NewCipher(key)
  if err != nil {
    panic(err.Error())
  }

  nonce := make([]byte, 12)
  if _, err := io.ReadFull(rand.Reader, nonce); err != nil {
    panic(err.Error())
  }

  aesgcm, err := cipher.NewGCM(block)
  if err != nil {
    panic(err.Error())
  }

  ciphertext := aesgcm.Seal(nil, nonce, plaintext, nil)
  uEnc := b64.URLEncoding.EncodeToString([]byte(ciphertext))
  fmt.Println(uEnc)
}
