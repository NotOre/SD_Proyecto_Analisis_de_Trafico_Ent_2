filtered = LOAD '/data/filtrado_output' USING PigStorage(',')
    AS (id:chararray, type:chararray, street:chararray, city:chararray, pubmillis:long);

grouped = GROUP filtered BY (type, city);
counted = FOREACH grouped GENERATE group.type AS tipo, group.city AS comuna, COUNT(filtered) AS cantidad;

DUMP counted;
STORE counted INTO '/data/clasificacion_output' USING PigStorage(',');
