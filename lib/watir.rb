# require 'watir'

# browser = Watir::Browser.new(:firefox)
# browser.goto 'google.com'
# sleep(3)
# accpt_button = browser.button(id:"L2AGLb")
# accpt_button.click
# sleep(3)
# search_bar = browser.text_field(:name => 'q')
# sleep(3)
# search_bar.set("Hello World!")
# sleep(3)
# #méthode de la barre d'entrée
# #search_bar.send_keys(:enter)

# #méthode du clic
# submit_button = browser.button(type:"submit")
# submit_button.click

# search_result_divs = browser.divs(class:"rc")
# search_result_divs.each { |div| p div.h3.text }

# p "Méfait accompli, fermeture du browser"
# browser.close 

require 'watir'

# Ouvrir le navigateur
browser = Watir::Browser.new(:firefox)

# Accéder à la page Google
browser.goto('https://www.google.com/')
sleep(3)
accpt_button = browser.button(id:"L2AGLb")
accpt_button.click

# Localiser le champ de recherche et entrer le texte
search_field = browser.text_field(name: 'q')
search_field.set('Watir')

# Lancer la recherche
search_field.send_keys(:enter)

# Attendre que la page de résultats soit chargée
browser.wait_until { browser.title.include?('Watir automation - Google Search') }

# Fermer le navigateur
browser.close