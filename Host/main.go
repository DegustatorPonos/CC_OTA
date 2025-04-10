package main

import (
	"net/http"
	"strconv"
	"strings"
)

const FILES_LOCATION string = "../programs"
const PORT int = 6969

func main() {
	var fileserver = http.FileServer(http.Dir(FILES_LOCATION))
	http.Handle("/", fileserver)
	http.ListenAndServe(strings.Join([]string{":", strconv.Itoa(PORT)}, ""), nil)
}
