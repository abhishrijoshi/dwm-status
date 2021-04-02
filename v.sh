while true;
do
 a=$(curl -ss  inr.rate.sx/1xmr)
 b=$(curl -ss https://api.nanopool.org/v1/xmr/balance/ YOUR WALLET | jq ".data")
  f=$(cat /sys/class/thermal/thermal_zone0/temp)
  t=$(echo $f | cut -b -2).$(echo $f | cut -b 3-) 
  r=$(echo $a | cut -b -7)
  h=$(echo "$a * $b"|bc -l | cut -b -6)
  xsetroot -name " $r | $h | $t  "
 sleep 15m
done
