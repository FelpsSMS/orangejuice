# encoding: UTF-8
require 'digest'
class LoginController < ApplicationController
  def index
	
  end

  def login
    p = Pesquisador.find_by_email_and_password(params[:email], Digest::MD5.hexdigest(params[:password]))
    if p.nil?
        flash[:alert] = 'Email ou senha invalidos'
        render 'index'
    else
        session[:pesquisador] = p.nome
        redirect_to root_path, notice: 'Logado com sucesso'
    end
  end

  def logout
    reset_session
    redirect_to root_path, notice: 'Você foi deslogado'
  end
end