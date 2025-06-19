# Configurador Web para ESP32

Este proyecto permite configurar salidas GPIO de un ESP32 a través de una interfaz web accesible vía Wi-Fi. Simula un menú de mantenimiento para un dispositivo configurable desde el navegador.

## Funcionalidades principales

- El ESP32 se inicia en modo Access Point con un captive portal
- Interfaz web clara y accesible desde cualquier dispositivo
- Permite:
  - Probar configuraciones instantáneamente (GPIO ON/OFF)
  - Guardar configuraciones en memoria no volátil (NVS)
  - Aplicar configuraciones persistentes en el arranque

## Requisitos

- ESP-IDF instalado y configurado
- ESP32 (WROOM o compatible)
- Navegador para acceder al portal
- Acceso a la terminal (`idf.py`)

## Instrucciones rápidas

```
idf.py set-target esp32
idf.py menuconfig         # Opcional: cambiar SSID/AP
idf.py build
idf.py flash
idf.py monitor
```

Luego, conectarse al Wi-Fi creado por el ESP32, y acceder desde el navegador (se redirige automáticamente).

## Estructura

- `main/`: lógica del servidor web y control de GPIOs
- `html/`: contenido de la interfaz embebida
- `nvs`: configuración persistente de pines
- `README.md`: este archivo
- `Informe.pdf`: documentación completa del proyecto

## Autor

Desarrollado por Simon Aulet para la materia "Arquitectura de Computadoras y Sistemas Embebidos" – UNRN 2025.

Para más detalles técnicos, ver el informe incluido en este repositorio.
