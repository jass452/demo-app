class PropertiesController < ApplicationController
  respond_to :html, :xml, :json
  def index
  	 @properties = Property.all

 
     respond_with(@properties)
     
  end
  def new
   @property = Property.new
  end
  def edit
  @property = Property.find(params[:id])
  end
 
  def create
  	
  # @property = Property.new(params.require(:property).permit(:name, :address, :b_code, :zip, :prize))
  @property = Property.new(property_params)
  
  if @property.save
   redirect_to @property
   else
    render 'new'
  end
  end
  def update
  @property = Property.find(params[:id])
 
   if @property.update(property_params)
    redirect_to @property
   else
    render 'edit'
   end
  end
  def show
    @property = Property.find(params[:id])
  end
  def destroy
  @property = Property.find(params[:id])
  @property.destroy
 
  redirect_to properties_path
  end
  def properties_detail

    @property = Property.find(params[:id])
    
  end
  private
  def property_params
    params.require(:property).permit(:name, :bath, :bed, :pool, :prize, :type, :address,:image, :image1, :image2, :image3, :latitude, :longitude )
  end
end
