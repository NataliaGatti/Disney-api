class Api::V1::CharactersController < Api::V1::BaseController
  def index
    @characters = Character.all
  end
end