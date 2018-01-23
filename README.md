1.Pour que ça fonctionne avec ton compte mail il te faut un dossier get_credential.rb avec tes identifiants et clés

COPIER LES FONCTIONS ET REMPLIR
def identifiant
   'ton_identifiant'
end


def code
  'ton_code'
end


2.Le fichier à exécuter est le appraf.rb
    -En l'exécutant tel quel on va sortir un array avec les mails de toutes les viles
    -Ma ligne 9-10 envoie des mails à des gens que je connais.
        POUR VÉRIFIER: -tu peux rajouter ton mail dans le array
                       -puis décommenter la ligne 10
                       -et exécuter

3.Lignes 12 à 18 je recupère les données du scrapper pour n'avoir qu'un tableau d'emails en ligne 18
(c'est ce que ça fait quand on exécute avec la ligne 10 commentée)


4.Lignes 20-21 on envoie à toutes les mairies mais on le fait pas parce qu'on est gentil
(il suffit pour cela de décommenter la ligne 21)

  
