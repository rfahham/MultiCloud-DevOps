Syntax for a single-line Bash infinite while loop

while true; do ls -la; sleep 30; done => listar de 5 em 5 segundos


while true; do ss -s; sleep 5; done  => Verificar TCP de 5 5m 5 segundos


while sleep 2; do echo thinking; done


while true; do touch pic-`date +%s`.jpg sleep 5 done

while true; do
touch pic-`date +%s`.jpg
sleep 5
done


while true; do touch pic-`date +%s`.jpg; sleep 5; done

while true; do curl -LI http://api-broadcast-go-qa2.gcloud.qa02.globoi.com/v1/globolive/broadcasts/4452349?ip=189.19.161.207 -o /dev/null -w 'Status code %{http_code}\n' -s; sleep 5; done



while true; do ssh root@cmaq24mp01ld14 ; sleep 5; done


while true; do curl -I https://portal-qa2-nginx.apps.tsuru.dev.gcp.i.globo/ ; sleep 10; done


while true; do kubectl top nodes; sleep 1; done

while true; do git pull && say novas atualizacoes; sleep 5; done
