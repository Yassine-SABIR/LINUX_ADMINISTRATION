#! /bin/sh

#  SABIR Yassine

commande='';

echo -n "Donner le nom du nouveau utilisateur : ";
read username;

echo -n "\nVoulez vous attribuer un uid spécifique à cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner l'uid de ce utilisateur : ";
	read uid;
	commande=$commande" -u "$uid;
fi;

echo -n "\nVoulez vous ajouter un commentaire à cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner le commentaire : ";
	read comment;
	commande=$commande" -c '"$comment"'";
fi;

echo -n "\nVoulez vous spécifier le repertoire de connexion de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner ce repertoire : ";
	read repertoire;
	commande=$commande" -d "$repertoire;
fi;

echo -n "\nVoulez vous créer le répertoire de connexion de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	commande=$commande" -m";
fi;

echo -n "\nVoulez vous spécifier le groupe initial de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner ce groupe : ";
	read groupe;
	commande=$commande" -g "$groupe;
fi;

echo -n "\nVoulez vous spécifier les groupes de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner goupes séparés par , : ";
	read groups;
	commande=$commande" -G "$groups;
fi;

echo -n "\nVoulez vous spécifier la date d'expiration de ce compte Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner la date : ";
	read date;
	commande=$commande" -e "date;
fi;

echo -n "\nVoulez vous spécifier le répertoire de peuplement de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner ce répertoire : ";
	read repertoire;
	commande=$commande" -k "$repertoire;
fi;


echo -n "\nVoulez vous spécifier le shell de cet utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 1 ] 
then 
	echo -n "\nDonner le shell : ";
	read shell;
	commande=$commande" -s "$shell;
fi;


echo -n "\nVoulez vous créer un groupe avec le même nom de l'utilisateur Oui[1] / Non[2] : ";
read choix;

if [ $choix -eq 2 ] 
then 
	commande=$commande" -N";
fi;
commande="useradd "$commande" "$username;

eval $commande;
