# BHEU17

## Black Hat 2017 - Wi-Fi Direct to Hell

## Abstract

Today Wi-Fi is everywhere and is by far the most widely used wireless networking protocol. During the last years, Wi-Fi security research was mainly focused on WPA/WPA2 security mechanisms. But modern Wi-Fi firmware's and drivers support several protocols that could be targeted by attackers. This is the case of Wi-Fi P2P, also known as Wi-Fi Direct. This protocol provides with the ability to discover nearby devices and connect directly to each other via Wi-Fi without an intermediate access point.

This talk will present an in-depth security analysis of Wi-Fi Direct protocol including an architectural overview, description of the discovery process, description of the connection process and a description of the frame formats. Additionally, we will use Android, HP Printers, and Samsung Smart TVs among others as an example of vulnerable implementations. At the end of the presentation, we will release PoC for the vulnerabilities and a tool for fingerprinting devices supporting Wi-Fi Direct protocol.

## WIG

Project: https://github.com/6e726d/WIG

Wi-Fi Direct functionality commit: https://github.com/6e726d/WIG/commit/f3a7ff6bdc621e51bb2294650b247ebcd7e7c0fc
