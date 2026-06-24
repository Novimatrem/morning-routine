# morning-routine.sh
tput civis
clear


item9="Bathroom, plus clean glasses while in there"
item8="Shave, and I mean the best you can, shave hard, shave well, shave clean. + also shave hands & wrists."
item7="Shower (towels are on radiator)"
item6="Brush teeth (purple toothbrush)"
item5="Dress, in a way where you look good in the mirror. Nothing gaudy or inappropriate like pyjamas."
item4="Spray"
item3="Eat"
item2="Drink + Take 1 vitamin D tablet. Drink a lot of water always, 4 litres a day at least. Only water counts as water."
item1="(wait until mother around to help, usually 12:30) Have your mother dry and then brush your hair"









counternum=1

currentdisplayed="$(echo $item1 && echo $item2 && echo $item3 && echo $item4 && echo $item5 && echo $item6 && echo $item7 && echo $item8 && echo $item9)"



echo "$currentdisplayed" | tail -n $counternum | head -n 1
while :
do

echo $counternum



  read -s -n 1 key
  case "$key" in
    w)
    clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1 && counternum="$(($counternum - 1))"
if [ "$counternum" -le "1" ]; then
counternum="1"
fi

	;;
    s)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1 && counternum="$(($counternum + 1))"

if [ "$counternum" -ge "9" ]; then
counternum="9"
fi	;;
    a)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
	d)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
	j)
	clear
	echo "$currentdisplayed" | tail -n $counternum | head -n 1
	;;
  esac
  # the below sleep value must be exactly 0.05s
  sleep 0.05s # length of input buffer is needed so holding keys works
  # but so the input lag isn't absolutely abysmal
  tput civis
  clear && echo "$currentdisplayed" | tail -n $counternum | head -n 1
done
