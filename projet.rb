require 'gmail'
puts "hello"
#J'inclue le contenu de mon fichier 'get_credential' dans lequel il y mon identifiant et mon code
require_relative 'get_credential'

#On se connecte à Gmail avec son identifiant et son code
$gmail = Gmail.connect(identifiant, code)
# play with your gmail...


# end
#envoyer à un seul destinataire
def send_mail(destinataire)
  $gmail.deliver do
    #destinataire du mail
    to "#{destinataire}"     #on pourrait écrire directement un email ici mais pour envoyer à plein de monde on va boucler sur le paramètre (destinataire)
    #objet du mail
    subject "Having fun in Puerto Rico! 13:00"
    #message dans le mail
    text_part do
      body "Text of plaintext message."
    end
  end
end

#envoyer à plusieurs destinataires
def send_mails(liste_destinataires)

  liste_destinataires.each do |element_de_la_liste_du_tableau|
    send_mail(element_de_la_liste_du_tableau)
  end
end



# send_mail('rafcapdeville@gmail.com')

# send_mails(['rafcapdeville@gmail.com', 'sebdoe75@gmail.com', 'jean25pierre2@gmail.com'])



#   # html_part do
#   #   content_type 'text/html; charset=UTF-8'
#   #   body "<p>Text of <em>html</em> message.</p>"
#   # end
#
#   # add_file "/path/to/some_image.jpg"                  #Envoyer une image
# end



$gmail.logout

# p gmail
