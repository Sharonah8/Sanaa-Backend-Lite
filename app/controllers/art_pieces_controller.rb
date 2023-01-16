class ArtPiecesController < ApplicationController
  def index
    artpieces = ArtPiece.all
    render json: artpieces
  end

  def show
    artpiece = find_artpiece
    render json: artpiece
  end

  def create
    artpiece = ArtPiece.create!(art_pieces_params)
    render json: artpiece, status: :created
  end

  def update
    artpiece = find_artpiece
    artpiece.update!(art_pieces_params)
    render json: artpiece
  end

  def destroy
    artpiece = find_artpiece
    artpiece.destroy
    head :no_content, status: :no_content
  end

  private

  def art_pieces_params
    params.permit(:image_url, :title, :description, :price, :user_id, :review_id)
  end

  def find_artpiece
    ArtPiece.find(params[:id])
  end
end
