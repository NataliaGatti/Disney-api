class Api::V1::MovieSeriesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_movie, only: [ :show, :update, :destroy ]

  def index
    if params[:name].present?
      @movies = MovieSerie.where("title ILIKE ?", "%#{params[:name]}%")
    elsif params[:order].present?
      @movies = MovieSerie.order("calification #{params[:order]}")
    elsif params[:genre]
      @movies = MovieSerie.select { |movie| movie.gender_id == params[:genre].to_i }
    else
      @movies = MovieSerie.all 
    end
  end

  def show
  end

  def create
    @movie = MovieSerie.new(movie_params)
    if @movie.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @movie.update(movie_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @movie.destroy
    head :no_content
  end

  private

  def set_movie
    @movie = MovieSerie.find(params[:id])
  end

  def movie_params
    #byebug
    params.require(:movie_series).permit(:title, :creation_date, :calification, :gender_id, :photo)
  end

  def render_error
    render json: { errors: @movie.errors.full_messages },
      status: :unprocessable_entity
  end
end
