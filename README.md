# SimTRON

MultiSim SMS device !

This repo contains source code and hardware specifications for building a 8 SIMs communications device to monitor SMS reception on up to 8 mobile lines.

# List of materials

| Name | link | Unit price | Quantity | Total price |
|------|------|------------|----------|-------------|
| IC 74HC4051 | http://www.digital-sa.com/tienda/product_info.php?products_id=2479 | 0.50 € | 2 | 1.0 € |
| GPRS SIm800L Modem | https://www.amazon.es/Sharplace-SIM800L-Tarjeta-Cuatribanda-QUAD-BAND/dp/B075D9ZYPW/ref=sr_1_16?ie=UTF8&qid=1528789781&sr=8-16&keywords=sim800l | 12.99 € | 8 | 103.92 € |
| Arduino Pro Mini 328P | https://www.amazon.es/Arduino-ATMEGA328-Avr328P-desarrollo-development/dp/B01DLPAAAK/ref=sr_1_2?ie=UTF8&qid=1528790069&sr=8-2&keywords=arduino+pro+mini | 5 € | 1 | 5 € |
| FTDI USB Adapter | https://www.amazon.es/tinxi%C2%AE-FT232RL-adaptador-convertidor-Arduino/dp/B01C2P9GD2/ref=sr_1_8?s=electronics&ie=UTF8&qid=1528790180&sr=1-8&keywords=ftdi+usb | 5.99 € | 1 | 5.99 € |
| Mini USB to Micro USB cable | https://www.amazon.es/Extensi%C3%B3n-Adaptador-Dispositivo-Charger-Converter/dp/B01MEDCEBJ/ref=sr_1_6?s=electronics&ie=UTF8&qid=1528911416&sr=1-6&keywords=mini+usb+to+micro+usb | 7.99 € | 1 | 7.99 € |
| Raspberry PI Zero W Starter kit | https://www.amazon.es/PiHut-Zero-Essentials-Kit-Raspberry/dp/B06XCYGP27/ref=sr_1_5?ie=UTF8&qid=1528790276&sr=8-5&keywords=raspberry+pi+zero+w | 25 € | 1 | 25 € |
| Micro ATX enclosure | https://www.amazon.es/gp/product/B00TKP0E34/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1 | 46.95 € | 1 | 46.95 € |
| Manufactoring at China | https://www.pcbway.com/ | 10 € | 1 | 10 € |

Total price: 205.85 €

# Burning the firmware to Arduino Pro Mini

As the firmware enables the Watch Dog Timer, in order to being able using an Arduino Pro Mini, you need to burn the Arduino UNO bootloader first, this is completely safe as Arduino Pro Mini is a tiny but full featured version of the Arduino UNO.

Follow these instructions to burn the bootloader using another arduino as programmer:

https://www.luisllamas.es/usar-arduino-para-reprogramar-el-bootloader/

