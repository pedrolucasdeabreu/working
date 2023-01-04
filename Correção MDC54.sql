--Caso tenha algum problema de pico de REDE no MDC 54 - TAPOUT - VOZ
--Provavelmente o script que trata o OR011 não rodou.
--Sendo assim, conferir no banco se tem algum retorno dessa operadora NULL (provavelmente vai ter), filtrado pelo nome do arquivo.

--Correção

select
--sum (duracao)/60
* from RD_T_VOZ_ROAM_MOC_OR011_MDC54
--where source like 'USER_CONSULTA_VOZ_ROAMING_MOC_26042022%'
where source in ('USER_CONSULTA_VOZ_ROAMING_MOC_24072022_20220728050404.csv')
and operadora is null
and TIPO_BILHETE = 'MOC'
and TIPO_ROAMING = 'RI'
order by CDRDATE desc

Para corrigir, rodar o update abaixo, filtrando pelo nome do arquivo correto.

update RD_T_VOZ_ROAM_MOC_OR011_MDC54 a
set
TIPO_ROAMING = 'OUTROS'
where source like 'USER_CONSULTA_VOZ_ROAMING_MOC_24072022_20220728050404.csv'
and operadora is null
and TIPO_BILHETE = 'MOC'
and TIPO_ROAMING = 'RI'