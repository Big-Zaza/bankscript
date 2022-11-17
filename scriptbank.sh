#!bin/bash
      #This script is to automate your bank account balance
      
      balance="20000"
      username="ntui"
      pin="1234"
      groupname="teamtechops"
      bankname="Etechbank"
      #add=$(echo "scale=4; $balance + $adder" | bc)
     #sub=$(echo "scale=4; $balance - $amount" | bc)
     
     menu() {
              echo "----------------------------------------------"
     
              echo "Choose the option of your choice"
     
              echo " 1. Beginning balance "
              echo " 2. Withdrawal "
              echo " 3. Topup "
       echo " 4. Exit "
     
              echo "-----------------------------------------------"
     
      }
     
     withdraw() {
       read -p "Enter the amount you wish to withdraw: " amount
      sleep 2
     
              if [[ $amount -le $balance ]]; then
              echo "You have successfully withdrawn $amount"
       echo "Current balance is $((balance-amount))"
       sleep 1
       check 
      else
          echo "Insufficient funds, kindly topup"
     
      fi
     
      }
     
     check() {
        echo "Beginning balance was $balance"
             echo "Transaction was carried out by $user"
             echo "Transaction was carried out on the $(date)"
              echo "This atm card belongs to $groupname"
              sleep 1.5
             echo "Thanks for using $bankname and hope to see you soon"
     }
     
     
     topup() {
     
     read -p "Enter the amount you wish to topup: " adder
     sleep 2
     echo "You have successfully funded your account with $adder"
     echo "Your current balance is $((balance+adder))"
     #add=`echo "$balance+$adder | bc`
     #echo $add
     sleep 1
     check
     
     }
     
     echo "Please kindly login to your bank account to proceed"
     
     
     read -p 'Username: ' user
     read -sp 'Password: ' pass
     
     if (( $user == $username && $pass == $pin ))
     then
       echo -e "\nWelcome $user to $bankname! You have sucessfully logged in\n"
      
        option=x
              while [ "$option" != "4" ]
              do
              menu
              read -p "Enter your choice: " choice
              if [[ $choice -eq 1 ]]; then
              echo "Beginning balance is $balance"
              elif [[ $choice -eq 2 ]]; then
              withdraw
              elif [[ $choice -eq 3 ]]; then
              topup
      elif [[ $choice -eq 4 ]] ; then
                 exit
             else 
             echo "Wrong option"
       fi
             done
             sleep 3
     
      else
       echo -e "\nLogin unsuccessful\n"
     fi