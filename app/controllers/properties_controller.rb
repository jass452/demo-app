class PropertiesController < ApplicationController
  respond_to :html, :xml, :json
  def index
  	
     @search = Property.search(params[:q])
      @properties = @search.result

 
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
  def galeries
     @properties = Property.all
   
  end
  def contact
     @properties = Property.all
   
  end
  def about_us
     @properties = Property.all
   
  end
  def agents
     @properties = Property.all
   
  end
  def news
     @properties = Property.all
   
  end
 
  def home_full_slider
     @search = Property.search(params[:q])
      @properties = @search.result
   
  end
  def galeries
     @properties = Property.all
   
  end
  def upload_step1
     @properties = Property.all
   
  end
  def upload_step2
     @properties = Property.all
   
  end
    def usermailer
    @contact = Contact.new(contact_params)
   
 
    respond_to do |format|
      if @contact.save
     
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@contact).deliver
 
        format.html { redirect_to(@contact, notice: 'User was successfully created.') }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
 

 private
  def property_params
    params.require(:property).permit(:name, :bath, :bed, :pool, :prize, :type, :address,:image, :image1, :image2, :image3, :latitude, :longitude )
  end
  def contact_params
    params.require(:contact).permit(:name, :email,:message)
  end

end
