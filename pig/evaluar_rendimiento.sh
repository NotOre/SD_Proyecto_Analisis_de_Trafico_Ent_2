#!/bin/bash
set -e

ORIGINAL="../eventos_filtrados.csv"
TEST_DATA="../data_temp.csv"

declare -a TAMAÑOS=("1000" "5000" "10000")

echo "Evaluando rendimiento de Apache Pig..."
echo "---------------------------------------"

for N in "${TAMAÑOS[@]}"; do
    echo "[+] Preparando muestra de $N eventos..."

    # Crear subconjunto de datos
    head -n $N "$ORIGINAL" > "$TEST_DATA"

    # Reemplazar entrada en los scripts (creamos enlaces simbólicos)
    cp "$TEST_DATA" "../eventos_filtrados.csv"

    # Medir tiempo
    START=$(date +%s)
    bash run_pig.sh > /dev/null 2>&1
    END=$(date +%s)

    DIFF=$(( END - START ))
    echo "  Tiempo para $N eventos: ${DIFF}s"
    echo "---------------------------------------"
done

echo "Evaluación completa."
