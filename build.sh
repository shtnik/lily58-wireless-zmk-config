#!/bin/bash

west build -d /build/left -p -b "nice_nano_v2" -s /zmk-config/zmk/app -S studio-rpc-usb-uart -- \
    -DSHIELD="lily58_left nice_view_adapter nice_view" \
    -DZMK_CONFIG="/zmk-config/config"
    
west build -d /build/right -p -b "nice_nano_v2" -s /zmk-config/zmk/app -- \
    -DSHIELD="lily58_right nice_view_adapter nice_view" \
    -DZMK_CONFIG="/zmk-config/config" 
cp -f /build/left/zephyr/zmk.uf2 /zmk-config/firmware/left.uf2
cp -f /build/right/zephyr/zmk.uf2 /zmk-config/firmware/right.uf2
