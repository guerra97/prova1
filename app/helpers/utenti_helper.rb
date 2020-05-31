module UtentiHelper
  def gravatar_for(utente)
    gravatar_id = Digest::MD5::hexdigest(utente.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: utente.nome, class: "gravatar")
  end
end
