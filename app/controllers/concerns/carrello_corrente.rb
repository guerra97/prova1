module CarrelloCorrente

  private
  def set_carrello
    @carrello = Carrello.find(session[:carrello_id])
  rescue ActiveRecord::RecordNotFound
    @carrello = Carrello.create
    session[:carrello_id] = @carrello.id
  end
end