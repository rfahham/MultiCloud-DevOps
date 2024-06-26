# DATE

## O comando date permite exibir uma data em diversos formatos:

%D:  mm/dd/yy.       
%d: Dia do mês (01 a 31).       
%a: Dias da semana abreviado (Sun, Mon … Sat).
%A: Dias da semana por extenso (Sunday, Monday…Saturday).
%h ou %b: Mês abreviado (Jan, Feb… Dec).
%B: Mês por extenso (January… December).
%m: Mês em numeral (01 to 12).
%y: Dois últimos dois digitos do ano (00 a 99).
%Y: Ano com quatro dígitos (2019). 
%T: Hora no formato 24 horas HH:MM:SS.
%H: Hora.
%M: Minuto.
%S: Segundo.
%j: Dia do ano (122)
%u: dia da semana (1… 7) – 7 representa domingo.
%w: dia da semana (0… 6) – 0 representa domingo.
%F: Formato ANO-MES-DIA

```bash
date +'Hoje é %A, %d de %B de %Y, o %j dia do ano, as %H:%M'

Hoje é Wednesday, 26 de June de 2024, o 178 dia do ano, as 09:48
```

```bash
date +'%d/%m/%Y - %H:%M:%S'

26/06/2024 - 09:48:47
```