#!/bin/bash
export rds_mysql=<ENDPOINT>
export usuariodb=<USR>
export acessords=<PASS>
export basedados=<DATA-BASE>

mysqldump -h ${rds_mysql}   \
   # --all-databases        \
   --databases ${basedados} \
   -u ${usuariodb}          \
   -P 3306                  \
   -p${acessords} > new-dump.sql 
