PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ make salon appointment ~~~~~\n"

MAIN_MENU (){
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo "Here are our services:"
  echo -e "\n1) cut\n2) trim\n3) style\n4) color\n5) exit\n"
  read SERVICE_ID_SELECTED
  if [[ ! $SERVICE_ID_SELECTED =~ ^[1-5]+$ ]]
  then 
    MAIN_MENU "Please enter number 1-5."
  else
    if [[ $SERVICE_ID_SELECTED = 5 ]]
    then
      EXIT
    else
      SERVICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
      echo -e "\nWhat's your phone number?"
      read CUSTOMER_PHONE
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
      if [[ -z $CUSTOMER_ID ]]
      then
        echo -e "\nWelcome our new customer! What is your name?"
        read CUSTOMER_NAME
        INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
        CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
      else
        CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      fi
      echo -e "\nWhat time works best for you?"
      read SERVICE_TIME
      INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      if [[ $INSERT_APPOINTMENT_RESULT == "INSERT 0 1" ]]
      then
        echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
      else
        MAIN_MENU "\nSomething went wrong, please select your service again:"
      fi
    fi
  fi
}
