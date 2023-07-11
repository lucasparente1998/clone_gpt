require 'open-uri'

class HomeController < ApplicationController
  before_action :authenticate_user!, :define_chat, only: [:show, :create]
  def index
    if current_user
      define_chat
    end
  end

  def create
    @question = params[:question]
    chat = Registro.create(descricao: @question, email_cliente: current_user.email, response: cat_image)
    redirect_to home_show_path(chat)
  end

  def show
    @chat = Registro.find(params[:format])
    if params[:question]
      @mensagem = Message.create(question: params[:question], response: cat_image, id_registro: params[:format])
    end
    @mensagens = Message.por_id_registro(params[:format])
  end

  def cat_image
    JSON.load(URI.open('https://api.thecatapi.com/v1/images/search')).first["url"]
  end
  def define_chat
    @chats = Registro.por_email(current_user.email).order(created_at: :desc).limit(8)
  end
end
