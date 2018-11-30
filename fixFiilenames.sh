for uc_filename in *
do
    #shell expands the variable then looks for spaces to break p the args
    #changing uc to lower case adn assigning to lc 

    #to handle filenames that have spaces - fix by putting double quotes around 
    #your shell variable. 
    lc_filename = 'echo $uc_filename |tr A-Z a-z' 
    #cp source to destination
    test -d "$uc_filename" && continue #incase file is a directory 
    if test "$lc_filename" != "$uc_filename" #make sure files source and des is different
    then
        #if files have same names with different capitalization
        if test ! -e "$lc_filename"
        then
            mv "$uc_filename" "$lc_filename"
        else
            echo "$lc_filename" already exists
             #if cp has the same filenames, then you get 'files have same content' message  
             #if cp works, then do rm
             #if cp doesnt work then do rm cause disk space is full
            cp "$uc_filename" "$lc_filename" && rm "$uc_filename"
        fi
    fi
done