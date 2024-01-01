#! /bin/bash
clear
echo "[Tool is starting.......]" | pv -qL 20;
sleep 4
cmatrix
Banner() {
figlet "                           Find-Me" 
echo "                               {Produce By }--->(SpiderHacker)" 
}
clear
Banner
echo "+--------------------------------------------------------------------------------------------+"
service tor start
echo "[Welcome To Find-Me Tool]" | pv -qL 20;
echo "[Modes]"
echo "[1]---[One time change] "
echo "[2]---[Every time change]"
echo "[3]---[Stop]"
read -p '[Enter the number]--[#]>' mode
case $mode in
     [1] ) echo "[You select number]---[1]" | pv -qL 20;
           clear 
            python $PWD/Data/torghost.py -s
              ;;
[2] ) echo "[You select number]---[2]" | pv -qL 20;
            echo "[IP- Address time]" | pv -qL 20;
echo "[1]---[Every 5sec]-[👿]"
echo "[2]---[Every 10sec]-[😡]"
echo "[3]---[Every 15sec]-[😠]"
read -p '[Enter the Number]-[#]>' ans_1
case $ans_1 in 
     [1] ) echo "[You select Number]---[1]" | pv -qL 10;
           sleep 2
           clear
           echo "[Now , your Ip change every 5sec]" | pv -qL 10;
           while true 
           do
           python $PWD/Data/torghost.py -s
           sleep 5
           python $PWD/Data/torghost.py -r
           sleep 5
           done
           ;;
     [2] ) echo "[You select Number]---[2]" | pv -qL 10;
           sleep 2
           clear
           echo "[Now , your Ip change every 5sec]" | pv -qL 10;
           while true 
           do
           python $PWD/Data/torghost.py -s
           sleep 10echo "" 
           python $PWD/Data/torghost.py -r
           sleep 10
           done
           ;;
     [3] ) echo "[You select Number]---[3]" | pv -qL 10;
           sleep 2
           clear
           echo "[Now , your Ip change every 5sec]" | pv -qL 10;
           while true 
           do
           python $PWD/Data/torghost.py -s
           sleep 15
           python $PWD/Data/torghost.py -r
           sleep 15
           done
           ;;     
esac
            ;;
    [3] ) echo "[You select number]---[3]" | pv -qL 20;
            python $PWD/Data/torghost.py -x
esac

