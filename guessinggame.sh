 function guess_files {
      local file_count=$(ls -1 | wc -l)
       while true; do 
             echo "Guess how many files are in the current directory:"
             read guess 
             if [[ $guess -eq $file_count ]]; then 
                 echo "Congratulations! you guessed it right."
                 break
              elif [[ $guess -lt $file_count ]]; then 
                 echo "Your guess is too low. try again."
              else 
                 echo"Your guess is too high.try again>"
              fi
       done
}

guess_files


