require_relative 'projet'
require_relative 'scrap_mairies'
def get_rows_from_items(items) # boîboîte (fonction) "utilitaire" (reçoit un truc ave des hash ... mais s'assure qu'on ne retourne qu'un array = une ligne avec n colonnes = utilisable par un tableaur !)
  items.map { |item| [item[0]] + item[1].values } # je transforme un tableau contenant un hash en un "simple" tableau = plus de clés (juste les valeurs = les colonnes) => 1 ligne d'infos (1 colonne = 1 info, ex.: nom de la ville, email, etc.) = 1 ville ... n lignes = n villes ... c'est une TABLE (= le MÊME nombre de colonnes à CHAQUE ligne) !!!
end
destinataires = ['rafcapdeville@gmail.com', 'sebdoe75@gmail.com', 'jean25pierre2@gmail.com', 'whois.marvin.42@protonmail.com']


$base_url = "http://annuaire-des-mairies.com/"
p get_emails_from_all_towns_in_dpt("val-d-oise.html")

# send_mails(destinataires)
