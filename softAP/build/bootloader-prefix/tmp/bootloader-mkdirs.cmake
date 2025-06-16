# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/opt/simon/Espressif-IDE/ESP-IDF/esp-idf-v5.4.1/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/opt/simon/Espressif-IDE/ESP-IDF/esp-idf-v5.4.1/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader"
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix"
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/tmp"
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/src/bootloader-stamp"
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/src"
  "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/simon/Dropbox/UNRN/4.Arquitectura_de_computadoras_y_sistemas_embebidos/espresside/configurador/softAP/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
