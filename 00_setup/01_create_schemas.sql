/*
Objetivo:
Criar os schemas que organizarão o laboratório de estudos.

Camadas:
raw: dados recebidos como vierem da fonte
stg: dados tratados e padronizados
mart: tabelas e views prontas para análise
sandbox: área livre para testes e consultas temporárias
*/

CREATE SCHEMA IF NOT EXISTS raw;

CREATE SCHEMA IF NOT EXISTS stg;

CREATE SCHEMA IF NOT EXISTS mart;

CREATE SCHEMA IF NOT EXISTS sandbox;

COMMENT ON SCHEMA raw IS
'Dados brutos recebidos das fontes de origem.';

COMMENT ON SCHEMA stg IS
'Dados tratados, padronizados e prontos para transformação analítica.';

COMMENT ON SCHEMA mart IS
'Tabelas e views analíticas prontas para consumo em BI.';

COMMENT ON SCHEMA sandbox IS
'Área de testes, consultas temporárias e experimentos.';


SELECT
    schema_name
FROM information_schema.schemata
WHERE schema_name IN (
    'raw',
    'stg',
    'mart',
    'sandbox'
)
ORDER BY schema_name;