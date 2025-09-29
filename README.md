# RNS-Gate

## Objective

Create a standalone device for access and routing within the Reticulum Network Stack 

## Interfaces for accessing other network nodes

* Integrated:
  - LoRa module (E22/E32 via SPI)
  - WiFi
  - Bluetooth
  - 10/100 Ethernet
* External:
  - RNode (via USB or Bluetooth)
  - WiFi in monitor mode (via USB)
* Audio access and PTT control for connecting analog VHF and HF radios with soft modem implementation 
* Connection of DMR stations via USB (OpenGD77 firmware) 

## Access to user devices

* BlueTooth 
* IP via WiFi and Ethernet

## Implementation

A 3-component "tower":

* Single-board computer based on Orange Pi Zero 
* Add-on board with an E22/E32 LoRa module 
* Add-on board with an HF/VHF audio interface

## Device configuration

Web interface over IP
