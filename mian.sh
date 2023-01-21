encryption() {      #encryption function 
printf "\t"

printf "\tplease enter the name of the plain text file : " ; read file
printf " \n "

   string=$(cat $file)     # get the plain text Contents and put them in   string variable
  
 string=$( echo "$string" | sed 's/[^a-zA-Z0-9 ]//g' )  #remove non-appha char 
   string=$( echo "$string" | tr "[:upper:]" "[:lower:]" ) #convert to lower
   

now=1       #Define a variable calls Number OF World ( to use it in sum of word char operation 

for (( ii=0; ii<${#string}; ++ii ))  
do 
            var=${string:$ii:1}      #loop to Read the Characters of the text char by char and make the sum operation of this char and store the result in arguments calss name[now] (To express the number of words in sentence from now=1
    
    case "$var" in                 #case command to selsect the spesifc char
       "a") a=$((0 + $((a + 1))))
name[now]=$((0 + $((name[now] + a))));;
       "b") b=$((0 + $((b + 1))))
name[now]=$((0 + $((name[now] + b)))) ;;
       "c") c=$((0 + $((c + 1)))) 
name[now]=$((0 + $((name[now] + c))));;
       "d") d=$((0 + $((d + 1))))
name[now]=$((0 + $((name[now] + d)))) ;;
       "e") e=$((0 + $((e + 1))))
name[now]=$((0 + $((name[now] + e)))) ;;
       "f") f=$((0 + $((f + 1))))
name[now]=$((0 + $((name[now] + f)))) ;;
       "g") g=$((0 + $((g + 1)))) 
name[now]=$((0 + $((name[now] + g))));; 
       "h") h=$((0 + $((h + 1))))
name[now]=$((0 + $((name[now] + h)))) ;;    #for example this cases "h" , here
       "i") i=$((0 + $((i + 1))))           # +I calclute the frequencise of  
name[now]=$((0 + $((name[now] + i)))) ;;    # +"h" char and put the number h=..
       "j") j=$((0 + $((j + 1))))           # +in name[now] acoording to number 
name[now]=$((0 + $((name[now] + j)))) ;;    # +number of world
       "k") k=$((0 + $((k + 1))))
name[now]=$((0 + $((name[now] + k)))) ;;
       "l") l=$((0 + $((l + 1))))
name[now]=$((0 + $((name[now] + l)))) ;;
       "m") m=$((0 + $((m + 1))))
name[now]=$((0 + $((name[now] + m)))) ;;
       "n") n=$((0 + $((n + 1))))
name[now]=$((0 + $((name[now] + n)))) ;;
       "o") o=$((0 + $((o + 1))))
name[now]=$((0 + $((name[now] + o)))) ;;
       "p") p=$((0 + $((p + 1))))
name[now]=$((0 + $((name[now] + p)))) ;;
       "q") q=$((0 + $((q + 1))))
name[now]=$((0 + $((name[now] + q)))) ;;
       "r") r=$((0 + $((r + 1))))
name[now]=$((0 + $((name[now] + r)))) ;;
       "s") s=$((0 + $((s + 1))))
name[now]=$((0 + $((name[now] + s)))) ;;
       "t") t=$((0 + $((t + 1))))
name[now]=$((0 + $((name[now] + t)))) ;;
       "u") u=$((0 + $((u + 1))))
name[now]=$((0 + $((name[now] + u)))) ;;
       "v") v=$((0 + $((v + 1))))
name[now]=$((0 + $((name[now] + v)))) ;;
       "w") w=$((0 + $((w + 1))))
name[now]=$((0 + $((name[now] + w)))) ;;
       "x") x=$((0 + $((x + 1))))
name[now]=$((0 + $((name[now] + x)))) ;;
       "y") y=$((0 + $((y + 1))))
name[now]=$((0 + $((name[now] + y)))) ;;
       "z") z=$((0 + $((z + 1))))
name[now]=$((0 + $((name[now] + z)))) ;;
       " ") now=$(($now + 1))     #if the reading is "space" , plus the number 
            continue;;            # +of world and continue reading the remain 
       *) exit;;                  # +of text

    esac 
 
done        #done reading and the sum operation to calclate the shift value now

for (( i=1; i<= $now ; i++ ))
do 
    echo "The sum of World number $i = ${name[i]} " #print the sum of each word
done
max=${name[now]}        # Define the max as  the sum of last word (for exp !!) 
for n in "${name[@]}"   # Exprision word using n 
do 
    ((n > max)) && max=$n    # get the truth max Value 
done

echo "The Max value is $max "    #print the max value ( not wanted!!) 
ShiftValue=$(($max % 26))        # calclate the shift value as wanted)
echo "The Shift value = $ShiftValue"   # and print it 
 
#select the Shift value to doing the encryption operation of the text 
#here am using tr command ==> let take the shift value = 3 
# so you can se that the a convert to d and and z convert to c  ..
    
    case "$ShiftValue" in             
       0) string=$(echo $string | tr '[a-z]' '[a-za-z]') ;;
       1) string=$(echo $string | tr '[a-z]' '[b-za-a]') ;;
       2) string=$(echo $string | tr '[a-z]' '[c-za-b]') ;;
       3) string=$(echo $string | tr '[a-z]' '[d-za-c]') ;;
       4) string=$(echo $string | tr '[a-z]' '[e-za-d]') ;;
       5) string=$(echo $string | tr '[a-z]' '[f-za-e]') ;;
       6) string=$(echo $string | tr '[a-z]' '[g-za-f]') ;; 
       7) string=$(echo $string | tr '[a-z]' '[h-za-g]') ;;
       8) string=$(echo $string | tr '[a-z]' '[i-za-h]') ;;
       9) string=$(echo $string | tr '[a-z]' '[j-za-i]') ;;
       10)string=$(echo $string | tr '[a-z]' '[k-za-j]') ;;
       11)string=$(echo $string | tr '[a-z]' '[l-za-k]') ;;
       12)string=$(echo $string | tr '[a-z]' '[m-za-l]') ;;
       13)string=$(echo $string | tr '[a-z]' '[n-za-m]') ;;
       14)string=$(echo $string | tr '[a-z]' '[o-za-n]') ;;
       15)string=$(echo $string | tr '[a-z]' '[p-za-o]') ;;
       16)string=$(echo $string | tr '[a-z]' '[q-za-p]') ;;
       17)string=$(echo $string | tr '[a-z]' '[r-za-q]') ;;
       18)string=$(echo $string | tr '[a-z]' '[s-za-r]') ;;
       19)string=$(echo $string | tr '[a-z]' '[t-za-s]') ;;
       20)string=$(echo $string | tr '[a-z]' '[u-za-t]') ;;
       21)string=$(echo $string | tr '[a-z]' '[v-za-u]') ;;
       22)string=$(echo $string | tr '[a-z]' '[w-za-v]') ;;
       23)string=$(echo $string | tr '[a-z]' '[x-za-w]') ;;
       24)string=$(echo $string | tr '[a-z]' '[y-za-x]') ;;
       25)string=$(echo $string | tr '[a-z]' '[z-za-y]') ;;
       *) exit;;

    esac 
# here to Ask user to input the cipher file which the encryption text move to it
 

printf " \n "
     printf "\tplease enter the name of the cipher text file : " ; read file1
printf " \n "

  echo $string > $file1
  
  printf " \n "
  echo " Almost Done !! ,,, Thank You"
  printf " \n "

} 


decryption() { #decryption function

printf "\t"

# here to Ask user to input the cipher file which the contain the text that we need to decrypt it 

printf "\tplease enter the name of the cipher text file : " ; read file
printf " \n "

   string=$(cat $file) ## get the cipher text Contents and put them in   string variable

   

now=1        # like before litraly 

for (( ii=0; ii<${#string}; ++ii )) 
do 
            var=${string:$ii:1}
    
    case "$var" in 
       "a") a=$((0 + $((a + 1))))
name[now]=$((0 + $((name[now] + a))));;
       "b") b=$((0 + $((b + 1))))
name[now]=$((0 + $((name[now] + b)))) ;;
       "c") c=$((0 + $((c + 1)))) 
name[now]=$((0 + $((name[now] + c))));;
       "d") d=$((0 + $((d + 1))))
name[now]=$((0 + $((name[now] + d)))) ;;
       "e") e=$((0 + $((e + 1))))
name[now]=$((0 + $((name[now] + e)))) ;;
       "f") f=$((0 + $((f + 1))))
name[now]=$((0 + $((name[now] + f)))) ;;
       "g") g=$((0 + $((g + 1)))) 
name[now]=$((0 + $((name[now] + g))));; 
       "h") h=$((0 + $((h + 1))))
name[now]=$((0 + $((name[now] + h)))) ;;
       "i") i=$((0 + $((i + 1))))
name[now]=$((0 + $((name[now] + i)))) ;;
       "j") j=$((0 + $((j + 1))))
name[now]=$((0 + $((name[now] + j)))) ;;
       "k") k=$((0 + $((k + 1))))
name[now]=$((0 + $((name[now] + k)))) ;;
       "l") l=$((0 + $((l + 1))))
name[now]=$((0 + $((name[now] + l)))) ;;
       "m") m=$((0 + $((m + 1))))
name[now]=$((0 + $((name[now] + m)))) ;;
       "n") n=$((0 + $((n + 1))))
name[now]=$((0 + $((name[now] + n)))) ;;
       "o") o=$((0 + $((o + 1))))
name[now]=$((0 + $((name[now] + o)))) ;;
       "p") p=$((0 + $((p + 1))))
name[now]=$((0 + $((name[now] + p)))) ;;
       "q") q=$((0 + $((q + 1))))
name[now]=$((0 + $((name[now] + q)))) ;;
       "r") r=$((0 + $((r + 1))))
name[now]=$((0 + $((name[now] + r)))) ;;
       "s") s=$((0 + $((s + 1))))
name[now]=$((0 + $((name[now] + s)))) ;;
       "t") t=$((0 + $((t + 1))))
name[now]=$((0 + $((name[now] + t)))) ;;
       "u") u=$((0 + $((u + 1))))
name[now]=$((0 + $((name[now] + u)))) ;;
       "v") v=$((0 + $((v + 1))))
name[now]=$((0 + $((name[now] + v)))) ;;
       "w") w=$((0 + $((w + 1))))
name[now]=$((0 + $((name[now] + w)))) ;;
       "x") x=$((0 + $((x + 1))))
name[now]=$((0 + $((name[now] + x)))) ;;
       "y") y=$((0 + $((y + 1))))
name[now]=$((0 + $((name[now] + y)))) ;;
       "z") z=$((0 + $((z + 1))))
name[now]=$((0 + $((name[now] + z)))) ;;
       " ") now=$(($now + 1))
            continue;;
       *) exit;;

    esac 
 
done

for (( i=1; i<= $now ; i++ ))
do 
    echo "The sum of World number $i = ${name[i]} "
done

max=${name[now]}
for n in "${name[@]}"
do 
    ((n > max)) && max=$n
done

echo "The Max value is $max "
ShiftValue=$(($max % 26))
echo "The Shift value = $ShiftValue"

#select the Shift value to doing the decryption operation of the text 
#here am using tr command ==> let take the shift value = 3 
# so you can se that the d convert to a and and c convert to z  ..

    
    case "$ShiftValue" in 
       0) string=$(echo $string | tr '[a-za-z]' '[a-z]') ;;
       1) string=$(echo $string | tr '[b-za-a]' '[a-z]') ;;
       2) string=$(echo $string | tr '[c-za-b]' '[a-z]') ;;
       3) string=$(echo $string | tr '[d-za-c]' '[a-z]') ;;
       4) string=$(echo $string | tr '[e-za-d]' '[a-z]') ;;
       5) string=$(echo $string | tr '[f-za-e]' '[a-z]') ;;
       6) string=$(echo $string | tr '[g-za-f]' '[a-z]') ;;
       7) string=$(echo $string | tr '[h-za-g]' '[a-z]') ;;
       8) string=$(echo $string | tr '[i-za-h]' '[a-z]') ;;
       9) string=$(echo $string | tr '[j-za-i]' '[a-z]') ;;
       10)string=$(echo $string | tr '[k-za-j]' '[a-z]') ;;
       11)string=$(echo $string | tr '[l-za-k]' '[a-z]') ;;
       12)string=$(echo $string | tr '[m-za-l]' '[a-z]') ;;
       13)string=$(echo $string | tr '[n-za-m]' '[a-z]') ;;
       14)string=$(echo $string | tr '[o-za-n]' '[a-z]') ;;
       15)string=$(echo $string | tr '[p-za-o]' '[a-z]') ;;
       16)string=$(echo $string | tr '[q-za-p]' '[a-z]') ;;
       17)string=$(echo $string | tr '[r-za-q]' '[a-z]') ;;
       18)string=$(echo $string | tr '[s-za-r]' '[a-z]') ;;
       19)string=$(echo $string | tr '[t-za-s]' '[a-z]') ;;
       20)string=$(echo $string | tr '[u-za-t]' '[a-z]') ;;
       21)string=$(echo $string | tr '[v-za-u]' '[a-z]') ;;
       22)string=$(echo $string | tr '[w-za-v]' '[a-z]') ;;
       23)string=$(echo $string | tr '[x-za-w]' '[a-z]') ;;
       24)string=$(echo $string | tr '[y-za-x]' '[a-z]') ;;
       25)string=$(echo $string | tr '[z-za-y]' '[a-z]') ;;
       *) exit;;

    esac 

# here to Ask user to input the plain file which the decryption text move to it
 

printf " \n "
     printf "\tplease enter the name of the plain text file : " ; read file1
printf " \n "

  echo $string > $file1
  
printf " \n "
  echo " Almost one !! ,,, Thank You"
printf " \n "


} 


while [ $# -ne 1 ] # the program still working until the user choose to exit
do 
 
                   # Welcom messege 
printf "\n\tWelcome to Text Message Encryption and Decryption programming 

\tpress 1 to continue ... 

\tpress Any Thing to exit.\t" 

#the user should choose between continue or exit from Programming
printf " Your choise is " ; read choise  

if [ $choise == 1 ]
then 
#the user should choose between Encryption or Encryption Operation.
printf "\n\t please choose between Encryption and Decription :  
    
                A - To Encryption  ... Click e 
             
                B - To Decryption ... Click d "

printf "\tYour choise is " ; read answer

printf "\n\t\t" 

printf "\n" 

if [ $answer == 'e' ]
then 
   encryption             # move to encryption function if the user choose it
elif [ $answer == 'd' ] 
then
    decryption            # move to decryption function if the user choose it
else
    exit 0
fi 


else 
    exit 0              # exit if user select any things except 1 (continue)
fi  

done