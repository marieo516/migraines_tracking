#!/bin/sh

echo "What do you want to log?"
echo "1) Migraine"
echo "2) Symptom only"
echo "3) Medication"
echo "4) Custom note"
printf "> "
read choice

echo "Use current date and time? (y/n)"
printf "> "
read use_now

if [ "$use_now" = "n" ]; then
  printf "Enter date: "
  read custom_date
  echo "Date: $custom_date" >> migraines.txt
else
  echo "Date: $(TZ=America/Toronto date)" >> migraines.txt
fi

case $choice in
  1)
    printf "Pain level (1-10): "
    read pain

    printf "Symptoms: "
    read symptoms
    printf "Possible trigger: "
    read trigger

    echo "Type: Migraine" >> migraines.txt
    echo "Pain: $pain" >> migraines.txt
    echo "Symptoms: $symptoms" >> migraines.txt
    echo "Trigger: $trigger" >> migraines.txt
    ;;
  2)
    printf "Symptoms: "
    read symptoms

    echo "Type: Symptom" >> migraines.txt
    echo "Symptoms: $symptoms" >> migraines.txt
    ;;
  3)
    printf "Medication taken: "
    read meds

    echo "Type: Medication" >> migraines.txt
    echo "Medication: $meds" >> migraines.txt
    ;;
  4)
    printf "Note: "
    read note

    echo "Type: Note" >> migraines.txt
    echo "Note: $note" >> migraines.txt
    ;;
  *)
    echo "Invalid option."
    exit 1
    ;;
esac

echo "___________________________________" >> migraines.txt
echo "Saved."
