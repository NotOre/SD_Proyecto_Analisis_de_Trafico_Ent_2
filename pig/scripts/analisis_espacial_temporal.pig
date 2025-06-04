filtered = LOAD '/data/filtrado_output' USING PigStorage(',')
    AS (id:chararray, type:chararray, street:chararray, city:chararray, pubmillis:long);

by_hour = FOREACH filtered GENERATE
    id,
    type,
    city,
    (long)pubmillis / 3600000 AS hour_bucket;

grouped = GROUP by_hour BY hour_bucket;
counted = FOREACH grouped GENERATE group AS hora, COUNT(by_hour) AS total_incidentes;

DUMP counted;
STORE counted INTO '/data/temporal_output' USING PigStorage(',');
