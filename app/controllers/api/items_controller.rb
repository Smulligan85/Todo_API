class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    list = List.find(params[:list_id])
    item = list.items.build(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    list = List.find(params[:list_id])
    item = list.items.find(params[:id])
    if item.update(item_params)
      if item.complete == true
        item.delete
        render json: [], status: :no_content
      else
        render json: item_params      
      end
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end


  private

  def item_params
    params.require(:item).permit(:description, :complete)
  end
  
end
