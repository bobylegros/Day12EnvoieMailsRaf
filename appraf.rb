require_relative 'projet'

require_relative 'scrap_mairies'
destinataires = ['rafcapdeville@gmail.com', 'sebdoe75@gmail.com', 'jean25pierre2@gmail.com']

# send_mails(destinataires)

get_emails_from_all_towns_in_dpt("val-d-oise.html")
