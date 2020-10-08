#! /bin/bash
var1=$RANDOM
var2=$RANDOM
val3=$(((var1 * var2) % (1<<20)))
result="$val3 "
end="true"
for ((i = 2 ; i < $val3 ; i++)); do
  if [[ $(($val3 % $i)) -eq 0 ]]; then
  	end="false"
  	break
  fi
done

echo $result $end