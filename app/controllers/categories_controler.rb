class CategoriesControler < ApplicationController

 def index
   @categories = Category.order(updated_at:  :desc).limit(25)
 end

 def show
    @category = category.find(params[:id])
 end
 
 

 	 	 
 end

private
  def  category_params
     params.require(:category).permit(:name)

end