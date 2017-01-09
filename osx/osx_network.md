
# Usage
`% networksetup`

## Turn on wifi with terminal
`% networksetup -setairportpower en0 on`

## Turn off wifi with terminal
`% networksetup -setairportpower en0 off`

## Network service list
```bash
% networksetup -listnetworkserviceorder

---------------------------------------------------------------------------------------------------
Usage: networksetup -listnetworkserviceorder
        Display services with corresponding port and device in order they are tried for connecting
        to a network. An asterisk (*) denotes that a service is disabled.
---------------------------------------------------------------------------------------------------

An asterisk (*) denotes that a network service is disabled.
(1) USB Modem
(Hardware Port: Modem (usbmodem1421), Device: usbmodem1421)

(2) Bluetooth DUN 2
(Hardware Port: Bluetooth DUN, Device: Bluetooth-Modem)

(3) USB Ethernet
(Hardware Port: USB Ethernet, Device: en2)

(4) Wi-Fi
(Hardware Port: Wi-Fi, Device: en0)

(5) iPhone USB
(Hardware Port: iPhone USB, Device: en4)

(6) Bluetooth PAN
(Hardware Port: Bluetooth PAN, Device: en3)

(7) Thunderbolt Bridge
(Hardware Port: Thunderbolt Bridge, Device: bridge0)
```
