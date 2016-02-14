#! /bin/sh

#Programmé par Pascal Audet 
#Aout 2014
#Ce script sert a faire une sauvegarde des fichiers
#de l'ordinateur
#Il doit être applé de la manière suivante:
#>sudo sh Script_Backup.sh
#le mot de passe de l'admin doit alors être entrer
#Le disque dur externe doit être connecté avant de lancer le script



#source="$HOME/Documents//"
source="/Users/"
cible="/Volumes/BACKUP_1/"
#rapport="$HOME/Desktop/rapport.txt"
rapport="/Volumes/BACKUP_1/RapportDuBackup.txt"


cible="/Volumes/EXCHANGE/Backup_MacMini/"
rapport="/Volumes/EXCHANGE/RapportDuBackup.txt"

cible="/Volumes/BACKUP_1/Backup_MacMini/"
rapport="/Volumes/BACKUP_1/RapportDuBackup.txt"

heures=$(date +%H)
minutes=$(date +%M)
jour=$(date +%d)
mois=$(date +%m)
an=$(date +%Y)
secondes=$(date +%S)


echo ""
echo "=====Script pour faire les Backup===="

echo "" >> $rapport
echo "=======================================" >> $rapport
echo 'Backup du dossier '$source 'du' $jour'/'$mois 'a' $heures'h'$minutes >> $rapport
echo "=======================================" >> $rapport

echo 'Backup du dossier '$source
echo 'vers  le  dossier '$cible
echo 'début '$heures':'$minutes':'$secondes

rsync -vrup --delete "${source}" "${cible}" >> $rapport
echo "" >>$rapport


echo 'Backup du dossier '$source 'du' $jour'/'$mois'/'$an >> $rapport
echo 'debut '$heures':'$minutes':'$secondes >> $rapport
heures=$(date +%H)
minutes=$(date +%M)
secondes=$(date +%S)
echo 'fin   '$heures':'$minutes':'$secondes
echo ""
echo "==========Backup terminé==========="


echo 'fin   '$heures':'$minutes':'$secondes >> $rapport
echo "" >> $rapport
echo "**************************************" >> $rapport
exit 0
