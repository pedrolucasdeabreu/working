#Script que altera o nome da máscara do arquivo de RAID_ocs* para ocs*, eliminando o prefixo raid.

import os
pasta = '/apps/raid/pedro/'
for diretorio, subpastas, arquivos in os.walk(pasta):
    for arquivo in arquivos:
        file = (os.path.join(diretorio, arquivo))
        certo = arquivo[-59:]
        os.replace(file,pasta+certo)
