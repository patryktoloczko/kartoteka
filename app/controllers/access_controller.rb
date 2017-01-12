class AccessController < ApplicationController
  layout 'application'
  def index
  menu
    render('menu')
  end
  
  def menu
  end

  def login
  end
  
  def attempt_login
    authorized_user=Lekarz.authenticate(params[:email],
    params[:haslo])
    if authorized_user
     flash[:notice] = "Zostałeś poprawnie zalogowany."
     redirect_to(:action => 'menu')
    else
      flash[:notice] = "błąd: niepoprawna nazwa użytkownika lub hasło."
      redirect_to(:action => 'login')
  end
  end
  
  def logout
     flash[:notice] = "Zostałeś wylogowany"
    redirect_to(:action => "login")
  end
end