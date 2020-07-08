func()
{
   # declare sets the variable scop to local within this function
   declare costcenter="Tpronto"
   headquater="Glasgow" 
}

func1 () {
    func
    echo "Costcenter is - "$costcenter
    echo "Headquater is - "$headquater
}

func1