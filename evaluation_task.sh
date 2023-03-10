#!/bin/bash

#initialise the counter
counter=3

#Loop to give user 3 attempts if user input is invalid 
while [ $counter -ge 1 ]; do

  # User selection to start an application
  echo "Enter which application to start:"
  echo "1. Application 1"
  echo "2. Application 2"
  echo "3. Application 3"

  # Read the user's input
  read input

  #starts supervisor
  supervisord

  # Download the selected application(s) and start using supervisor
  if [[ $input =~ ^[123]+$ ]]; then
    for i in $(seq 1 ${#input}); do
      case ${input:i-1:1} in
        1)
          # Download and start Application 1
          curl -o Application1  \
           -H "Accept: application/vnd.github.raw" \
           -H "Authorization: Bearer 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"\
           -H "X-GitHub-Api-Version: 2022-11-28" \
          https://api.github.com/repos/tenzin7/Evaluataion-Task-applications/contents/test_app_1_darwin_arm64
          chmod +x /users/tenzinlodoe19/evaluation_task/Application1
          supervisorctl update Application1
          supervisorctl start Application1
          ;;
        2)
          # Download and start Application 2
          curl -o Application2  \
           -H "Accept: application/vnd.github.raw" \
           -H "Authorization: Bearer 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"\
           -H "X-GitHub-Api-Version: 2022-11-28" \
          https://api.github.com/repos/tenzin7/Evaluataion-Task-applications/contents/test_app_2_darwin_arm64
          chmod +x /users/tenzinlodoe19/evaluation_task/Application2
          supervisorctl update Application2
          supervisorctl start Application2
          ;;
        3)
          # Download and start Application 3
          curl -o Application3  \
           -H "Accept: application/vnd.github.raw" \
           -H "Authorization: Bearer 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"\
           -H "X-GitHub-Api-Version: 2022-11-28" \
          https://api.github.com/repos/tenzin7/Evaluataion-Task-applications/contents/test_app_3_darwin_arm64
          chmod +x /users/tenzinlodoe19/evaluation_task/Application3
          supervisorctl update Application3
          supervisorctl start Application3
          ;;
      esac
    done
    break
  else
    echo "Invalid input. Please try again."
    counter=$(( $counter-1 ))
    echo "$counter:attempt remaining"
  fi
done