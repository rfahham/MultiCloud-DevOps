# AWK

Troque a "," por "."

```bash
x=1,234
echo $x

awk '{printf "%.3f\n",$1}' <<< ${x/,/.}

1.234
```

```bash
awk -F';' '{print $2}' nome do arquivo | tail > glbids.csv
```