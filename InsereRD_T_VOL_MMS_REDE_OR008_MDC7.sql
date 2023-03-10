SELECT DATA_MMS, TIPO_ASSINANTE, SUM(CHAMADOS) CHAMADO_TOTAL
FROM SRAID_RAS8_DAT001.RD_T_VOL_MMS_REDE_OR008_MdC7
WHERE UPPER(TIPO_ASSINANTE) = ('PREPAID')
AND DATA_MMS = '26/08/22'
GROUP BY DATA_MMS, TIPO_ASSINANTE

INSERT INTO RD_T_VOL_MMS_REDE_OR008_MdC7 (DATA_MMS,TIPO_ASSINANTE,CHAMADOS,SOURCE, DATA_ELAB)
VALUES (TO_DATE('26/08/22', 'dd/mm/yy'),'prepaid','1935','TRAFEGO_MMS_2022_08_29.csv',TO_DATE('29/08/22', 'dd/mm/yy'))
COMMIT