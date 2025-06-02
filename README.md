# SD_Proyecto_Analisis_de_Trafico_Ent_2

Este repositorio es la segunda entrega de un proyecto semestral para el ramo de 'Sistemas Distribuidos' de la 'Universidad Diego Portales', la primera entrega se encuentra en el siguiente link: https://github.com/NotOre/SD_Proyecto_Analisis_de_Trafico

En este repositorio se encuentran los codigos y archivos requeridos para el uso de nuestro sistema de analisis de trafico, especificamente sobre la Region Metropolitana de Chile, basado en Docker, el cual funciona mediante un scraper utilizado sobre la plataforma Live-Map de Waze (https://www.waze.com/live-map), asi adquiriendo los eventos dentro del area establecida, almacenandolos en una base de datos y en un cache basados en Redis y, para determinar que almacena el cache, el sistema incluye un simulador de consultas el cual ayuda a definir los eventos almacenados en cache.

Este sistema esta orientado principalmente a usuarios que usen sistemas Unix-like (Linux o macOS), y se asume que dicho usuario ya tiene instaladas las dependencias y todo lo necesario para el uso de Docker y Python3.

Este proyecto sera dividido en 3 entregas que se iran actualizando con respecto a la realizacion de dichos avances.
