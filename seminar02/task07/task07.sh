awk '{a=$1; $1=$2; $2=a} 1' digits.txt
