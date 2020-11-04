$flag=0 #initialize a random variable
$hash_table=@{}   #initialize the hash table
$var_input = 'abcdedcba' # read the input string
$var_lower = $var_input.tolower()  #convert to lower case however 
$var_omitspace=$var_lower.replace(' ','') # replace the spaces in the sting so that it does not take whitespace as a character
$var_array=$var_omitspace.toCharArray() #convert the string to array 


<# this block checks for each character in a string and then adds to the hash table with the character as key and its value as 1
in the further iterations if the new character exists in the hash table that is outputted as the recurring character and the loop breaks

#>
foreach ($char in $var_array)
    {
    if($hash_table.keys -contains $char){
        Write-host "The first recurring character is  $char "
        $flag=1
        break
        }
    else {
            $hash_table.Add($char,1)
        }
}

if ($flag -eq 0){
       Write-host "there are no recurring characters"
    }
    

