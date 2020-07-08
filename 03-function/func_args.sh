function get_salestax () {
    if test $1 = ""
    then 
        echo "You must supply a full expense amount"
    else
        echo "Full amount :" $1
        tax_amount=`echo "$1/1.15" | bc`
        echo "Tax amount is : " `echo $1-$tax_amount | bc`
        # Running echo $? after the script returns the tax amount
        return $tax_amount
    fi
}