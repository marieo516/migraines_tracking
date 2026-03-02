#### **Migraine Logger**

A simple shell script to log migraines, symptoms, medications, and notes to a text file.



###### Why

My healthcare provider asked me to log my migraines for a month and suggested using an app, saying there were many available. I tried several, but they were either too complicated or too restrictive for my needs. When you're dealing with a migraine, the last thing you want is a clunky interface. I needed something fast to log an entry in a few seconds, with the freedom to track exactly only what I need. Running it from a terminal on my phone lets me do that instantly. Then I can just print the file to give to my healthcare provider. Eventually, I plan to turn this into a proper app, but I'll keep the same philosophy: simple UI, maximum flexibility.



###### Features

Log full migraine entries with pain level, symptoms, and triggers

Log symptoms only without a full migraine entry

Track medications taken

Add custom notes

Use current date/time or enter a custom date

All entries are timestamped and stored in migraines.txt



###### Usage

Run the script *(depending on your terminal)*:

 	./migrainesLogging.sh

 	sh migrainesLogging.sh

 	bash migrainesLogging.sh



###### Time zones

I set the time zone to the one I need. You will need to modify this if you are in another time zone. 

Make sure your terminal can access your time zone properly or it will automatically use UTC. I use the iSH app and keep the files on my phone so I can quickle log migraines from my phone, and I needed to install the package for it to use the right time zone.
Time zone package : apk add tzdata



###### How it Works

You'll be prompted to:

 	1.Choose a log type:

 		Migraine (includes pain level 1-10, symptoms, trigger)

 		Symptom only

 		Medication

 		Custom note

 	2.Choose a date/time:

 		Use current date and time (Toronto timezone)

 		Enter a custom date

 	3.Enter relevant details based on your chosen log type

Your entry will be appended to migraines.txt.



###### Log Format

Each entry is formatted as:



 	Date: \[date]

 	Type: \[Migraine/Symptom/Medication/Note]

 	\[Type-specific fields]



###### Requirements

Linux or Unix shell (sh, bash, etc.)

Write access to the directory where the script runs

Make sure it is executable : chmod +x script.sh



###### Output

All logs are saved to migraines.txt in the same directory as the script.



###### Example Entry

Date: Mon Mar  2 15:30:45 EST 2026

Type: Migraine

Pain: 7

Symptoms: Throbbing, light sensitivity

Trigger: Stress


