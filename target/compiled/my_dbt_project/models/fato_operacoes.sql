SELECT 
    cedente::VARCHAR(8000) AS CEDENTE,
    etapa::VARCHAR(8000) AS ETAPA,
    CAST(NULLIF(REGEXP_REPLACE(cpf_cnpj_cedente, '[^0-9]', '', 'g'), '') AS BIGINT) AS CPF_CNPJ_CEDENTE,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(prazo_medio, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS PRAZO_MEDIO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_bruto, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_BRUTO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_desagio, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_DESAGIO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_liquido, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_LIQUIDO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_recompra_pendencia, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_RECOMPRA_PENDENCIA,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(cred_cedente, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS CRED_CEDENTE,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_pagto_operacao, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_PAGTO_OPERACAO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_saldo, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_SALDO,
    TO_DATE("data", 'DD-MM-YYYY') AS DATA,
    TO_DATE(finalizacao, 'DD-MM-YYYY') AS FINALIZACAO,
    operador::VARCHAR(8000) AS OPERADOR,
    captador::VARCHAR(8000) AS CAPTADOR,
    TO_DATE(pagamento_operacao, 'DD-MM-YYYY') AS PAGAMENTO_OPERACAO,
    CAST(NULL AS VARCHAR(8000)) AS CONTA_PAGTO
FROM "operacoes"."public"."f_operacoes"

UNION ALL

SELECT 
    cedente::VARCHAR(8000) AS CEDENTE,
    etapa::VARCHAR(8000) AS ETAPA,
    CAST(NULLIF(REGEXP_REPLACE(cpf_cnpj_cedente, '[^0-9]', '', 'g'), '') AS BIGINT) AS CPF_CNPJ_CEDENTE,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(prazo_medio, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS PRAZO_MEDIO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_bruto, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_BRUTO,
    NULL AS VALOR_DESAGIO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_liquido, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_LIQUIDO,
    NULL AS VALOR_RECOMPRA_PENDENCIA,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(cred_cedente, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS CRED_CEDENTE,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_pagto_operacao, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_PAGTO_OPERACAO,
    CAST(NULLIF(REGEXP_REPLACE(REGEXP_REPLACE(valor_saldo, '[^0-9,]', '', 'g'), ',', '.', 'g'), '') AS DECIMAL(10,2)) AS VALOR_SALDO,
    TO_DATE("data", 'DD-MM-YYYY') AS DATA,
    TO_DATE(finalizacao, 'DD-MM-YYYY') AS FINALIZACAO,
    operador::VARCHAR(8000) AS OPERADOR,
    captador::VARCHAR(8000) AS CAPTADOR,
    TO_DATE(pagamento_operacao, 'DD-MM-YYYY') AS PAGAMENTO_OPERACAO,
    CAST(NULL AS VARCHAR(8000)) AS CONTA_PAGTO
FROM "operacoes"."public"."f_operacoes_fidc"