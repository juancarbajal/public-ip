package main

import (
    "fmt"
    externalip "github.com/glendc/go-external-ip"
)

func main() {
    consensus := externalip.DefaultConsensus(nil, nil)
    ip, err := consensus.ExternalIP()
    if err == nil {
        fmt.Println(ip.String())
    }
}
