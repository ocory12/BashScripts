clear
declare -i hasuppercase=0
declare -i haslowercase=0
declare -i hasnumbers=0
declare -i points=0
echo "Enter a password: "
read password
echo $password > password
nocaps=$(echo $password | sed 's/[a-z]//g')

if [ ! -z "$nocaps" ]
then
    echo -e "\e[32m+ Password contains uppercase letters.\e[0m"
    let hasuppercase=1
else
    echo -e "\e[31m- Password doesn't contain capital letters.\e[31m-3 POINTS\e[0m\e[0m\e[1m"
fi


if [ ! -z "$checknumbers" ]
then
    echo -e "\e[32m+ Password contains numbers.\e[0m"
else
    echo -e "\e[31m- Password doesn't contain numbers.\e[31m-3 POINTS\e[0m\e[0m\e[1m"
fi

if [ ${#password} -lt 7 ]
then
    echo -e "\e[31m- Password is shorter than 7 characters.\e[1m-3 POINTS\e[0m\e[1m"
else
    echo -e "\e[32m+ Password is longer than 7 characters\e[0m"
fi
