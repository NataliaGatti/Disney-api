class Api::V1::CharactersController < Api::V1::BaseController

  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_character, only: [ :show, :update, :destroy ]

  def index
    if params[:name].present?
      @characters = Character.where("name ILIKE ?", "%#{params[:name]}%")
    elsif params[:age].present?
      @characters = Character.select { |char| char.age == params[:age].to_i }
    elsif params[:movies]
      @characters = Character.joins(:character_by_movie).select { |movie| movie.character_by_movie.movie_serie_id == params[:movies].to_i }
    else
      @characters = Character.all
    end
  end

  def show
  end

  def update
    if @character.update(character_params)
      render :show
    else
      render_error
    end
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @character.destroy
    head :no_content
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :age, :weight, :story, :photo)
  end

  def render_error
    render json: { errors: @character.errors.full_messages },
      status: :unprocessable_entity
  end
end