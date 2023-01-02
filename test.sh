Instructions for using the solution of evaluation task: 

Make sure you have installed curl and supervisor.
Clone the repository to your local machine.
Navigate to the directory where supervisor config files are stored:
     1. edit supervisord.conf file. 
     2. copy commands from supervisor_configs.txt file and paste it at the end of supervisord.conf file.
     3. Path should be the path of your pwd and path where you want to store your log files. 
     4. Make sure that the directories specified in the PATH for log files be created.
In the evaluation_task.sh script, specify the PATH of your PWD.
Make the evaluation_task.sh script executable with chmod +x evaluation_task.sh.
Run the script with ./start_apps.sh.
Follow the prompts to select which application(s) to download and start.
The selected applications should now be running with the help of supervisor. 
Running status of the application can be checked with: supervisorctl status command. 
Error log files can be viewed at the PATH specified in the supervisord.conf file.