# # -/un programme aui affiche le nom,age,taille et si il est etudiant-/

# # """ nom=input("entrez voter nom :")
# # prenom=input("entrez votre prenom :")
# # age=input("entrez votre age: ")
# # taille=input("quel est votre taille :")
# # etudiant=input("etudiant (oui/nom) :")

# # print("je repond au nom de:",nom)
# # print("est mon prenom c'est :",prenom)
# # print("j'ai :",age)
# # print("je mesure :",taille)
# # print(etudiant) """
# ======================================================================================
#                        #la fonction int et float
# #la fonction int ou float permet de transformer la variable string en format integer.

# # nom=input("entrez voter nom :")
# # prenom=input("entrez votre prenom :")
# # age=int(input("entrez votre age: "))
# # taille=float(input("quel est votre taille :"))
# # etudiant=input("etudiant (oui/nom) :")

# # print("je repond au nom de:",nom)
# # print("est mon prenom c'est :",prenom)
# # print("j'ai :",age)
# # print("je mesure :",taille)
# # print(etudiant)
# =========================================================================
# age=int(input("entrez votre ag : "))
# print("dans 10 ans, tu auras",age+10,"ans")
# ==========================================================================

# """ les conditions IF et ELSE """
# un programme qui demande a l'utudiant d'entrer les points,si point>=50 affiche reusi
# si inferieur le programme affiche echec

# point=int(input("entrer les points : "))
# if point >= 70:
#     print("excellent")
# elif 50<=point<=69:
#     print("reussi")
# elif  50>=point:
#     print("echoue")
#  ===================================================================
# un programme pour la banque (si salaire est>= 2000000 pret accorder,entre 1000000 et 1999999
# le dossier encour d'analyse,inferieur 1000000 pret defuser)
# salaire=int(input("entrez votre salaire : "))
# if salaire>=2000000:
#     print("pret accorder")
# elif 1000000<=salaire<=1999999:
#     print("le dossier encour")
# elif salaire<1000000:
#     print("votre demande de pret est refusee")
#  =======================================================================
# un programe qi calcule les notes et classe les eleves selons leur Note

# note=int(input("entrez les notes d'un etudiant :"))
# if 90<=note<=100:
#     print("excellent")
# elif 70<=note<=89:
#     print("tres biens")
# elif 50<=note<69:
#     print("reussi")
# elif 0<=note<49:
#     print("echoue")
# else:
#     print("echouer")

# ===================================================================
     #       les operateurs logique (and,or,not)
# salaire=int(input("entrez le salaire : "))
# age=int(input("entrer votre age :"))
# if salaire >=2000000 and age>=18:
#     print("pret accorder")
# else:
#     print("pret refuser")


# #      la boucle (while)

# compteur  =  1
# while compteur  <= 5:
#     print("rehani")

# =========================================
# compteur =1
# while compteur <=5:
#     print(compteur)
#     compteur= compteur+1
# ==================================================

# LA BOUCLE for

# for i in range(1,20,2):
#     print(i)

# for i in range(1,5):
#     print(i)
  
# =================================================
# MANUPILATEUR DE TEXTE(LEN,UPPER,LOWER)

# texte=input("ecrire un texte que vous haiter : ")
# print(texte.upper())
# print(len(texte))
# print(texte.lower())

#==============================================================
#LES LISTES
#les listes nous permetent de stocker plusieurs variables
# nombre=[12,34,67,89,89]
# print(nombre) 
# print(nombre[0])
# print(len(nombre))
#================================================================
#INSERTION D'UN ELEMENT DANS UNE LISTE avec la fonction append
# cours=['sql','excel','python']
# cours.append('power bi')
# print(cours)
#====================================================================
#SUPPRESSION D'UN ELEMENT DANS UNE LISTE AVEC LA FONCTION REMOVE

# cours=['sql','excel','python','power bi']
# cours.remove('power bi')
# print(cours)

#=======================================================================
#AJOUT D'UNE POSITION AVEC LA FONCTION INSERT
# cours=['sql','python','power bi']
# cours.insert(1,'excel')
# print(cours)

#=====================================================================
#MODIFICATION D'UN ELEMENT DANS UNE LISTE 

# cours=['sql','excel','power bi']
# cours[1]='tableau'
# print(cours)

#====================================================================
# Méthode
# Rôle
# append()
# Ajouter un élément à la fin
# remove()
# Supprimer un élément
# insert()
# Insérer un élément à une position précise
# sort()
# Trier du plus petit au plus grand
# sort(reverse=True)
# Trier du plus grand au plus petit
# #===================================================================
# cours=['SQL', 'Python', 'Excel', 'Power BI']
# cours.pop(2)
# print(cours)

#===============================================================
#PARCOURIR UNE LISTE AVEC LA BOUCLE for

# fruits = ['Pomme', 'Banane', 'Orange', 'Mangue']
# for fruits_un in fruits:
#     print(fruits_un)

#=================================================================
#AFFICHAGE DES ELEMENTS AVEC LEURS INDICES
fruits = ['Pomme', 'Banane', 'Orange', 'Mangue']
for i  in range(len(fruits)):
    print(i,fruits[i])

