class PagesController < ApplicationController
  before_filter :authenticate_user!, only: :inscription
  def home
  	@titre = "Accueil"
  end

  def contact
  	@titre = "Contact"
  end

  def about 
  	@titre = "À Propos"
    end
    
  def annonces
      @titre = "Annonces"
      
end
  
  def inscription
      @titre = "Inscription"
      redirect_to :annonces
end
  

end