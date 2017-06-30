class HomeController < ApplicationController
  before_action :set_uid, only: [:user]

  def index

  end

  def user
    @graph = Koala::Facebook::API.new(ENV['APP_ACCESS_TOKEN'])

    @profile = @graph.get_object(@uid)
    @picture = @graph.get_picture(@uid, {type: 'small'})
    @user = User.find_by_uid(@uid)
  end

  def report
    agency = Agency.find_by_code(params[:code])
    if agency.present?
      user = User.new
      user.uid = params[:uid]
      user.name = params[:name]
      user.agency_id = agency.id

      if user.save!
        flash[:notice] = 'El usuario ha sido agregado.'
      else
        flash[:notice] = 'Error al intentar registrar al usuario.'
      end
    else
      flash[:notice] = 'Contraseña incorrecta.'
    end

    redirect_to user_path(uid: params[:uid])
  end

  def search
    users = User.search(params[:search])
    render json: users.to_json, status: :ok
  end

  private

  def set_uid
    @uid = params[:uid]
  end

end
