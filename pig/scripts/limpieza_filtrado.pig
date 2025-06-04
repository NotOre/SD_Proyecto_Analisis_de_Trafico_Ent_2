raw = LOAD '/data/eventos_filtrados.csv' USING PigStorage(',') 
    AS (id:chararray, type:chararray, street:chararray, city:chararray, pubmillis:long);

filtered = FILTER raw BY (type IS NOT NULL AND city IS NOT NULL AND pubmillis IS NOT NULL);
DUMP filtered;
STORE filtered INTO '/data/filtrado_output' USING PigStorage(',');
