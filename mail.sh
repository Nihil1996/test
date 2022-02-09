echo "Kérem adjon meg egy weboldal címet,aminek tudni szeretné az email szerver domain neveit"
read  bekert
echo "Szeretnl mentenni egy fájl-ba a email domain neveket ?"
echo "Kéremn válaszoljon igen vagy nem ?"
read  valasztott
#válasz  elementése egy változóban
valasz="igen"
if [[ $valasztott == "$valasz" ]]
then
	host -t mx $bekert | tee  mentett.txt
	echo -e "\n Az állomány elmentve (mentett.txt)"
else
	host -t mx $bekert
	echo -e "\n Az állomány nincs mentve"
fi
