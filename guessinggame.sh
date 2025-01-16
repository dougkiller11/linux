#!/bin/bash
guessing_game() {
  local correct_answer=$(ls -l | grep -v ^l | wc -l)
  local guess=0

  while [[ $guess -ne $correct_answer ]]
  do
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess

    if [[ $guess -lt $correct_answer ]]
    then
      echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $correct_answer ]]
    then
      echo "Trop haut ! Essayez encore."
    fi
  done

  echo "Bravo ! Vous avez trouvé le bon nombre de fichiers : $correct_answer."
}
guessing_game
