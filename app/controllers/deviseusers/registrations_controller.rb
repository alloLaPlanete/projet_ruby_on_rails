class Deviseusers::RegistrationsController < Devise::RegistrationsController
   #before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /deviseusers/new
   #def new
   # super
   #    @deviseuser = Deviseuser.new
   #end

  # POST/resource/
 # def create
 #  super
    #@deviseuser = Deviseuser.new(usager_params)  #current_deviseuser.usagers.build(usager_params)   #Permet de referer l'id du createur
    #render :template => '/registrations/new'  
   # respond_to do |format|
    #  if @deviseuser.save
        
       # format.html { redirect_to @usager, notice: 'Usager was successfully created.' }
       # format.json { render :show, status: :created, location: @usager }
     # else
       # format.html { render :new }
       # format.json { render json: @usager.errors, status: :unprocessable_entity }
      #end
    #end
  #end


  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  


    # Never trust parameters from the scary internet, only allow the white list through.
   # def usager_params
   #   params.require(:deviseuser).permit(:email, :password, :passwordconfirmation, :role)
   # end

private 
    def sign_up_params
        params.require(:deviseuser).permit(:nom ,:role, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:deviseuser).permit(:nom , :role, :email, :password, :password_confirmation, :current_password)
    end
end
