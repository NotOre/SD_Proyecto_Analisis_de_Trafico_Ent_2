# Asegura que los errores interrumpan el script
set -e

# Directorio base del proyecto montado en /data
cd /data

echo "Ejecutando limpieza y filtrado de eventos..."
pig -x local scraper/scripts/limpieza_filtrado.pig

echo "Ejecutando clasificación de incidentes..."
pig -x local scraper/scripts/clasificacion_incidentes.pig

echo "Ejecutando análisis espacial y temporal..."
pig -x local scraper/scripts/analisis_espacial_temporal.pig

echo "Todos los scripts de Apache Pig fueron ejecutados exitosamente."
