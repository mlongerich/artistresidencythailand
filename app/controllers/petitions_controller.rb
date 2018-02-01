class PetitionsController < ApplicationController
  def index; end

  def admin
    @petitions = Petition.all
  end

  def new
    @petition = Petition.new
  end

  def create
    @petition = Petition.new(petition_params)
    @petition.save
    if @petition.save
      flash[:success] = 'Application was successfully submitted'
      redirect_to root_path
    else
      flash.now[:danger] = 'Application failed to submit'
      render :new
    end
  end

  def show
    @petition = Petition.find(params[:id])
  end

  private

  def petition_params
    params.require(:petition).permit(:name, :dob, :gender, :residency_type,
                                     :address, :email, :phone, :social_media,
                                     :practice_medium, :artistic_statement,
                                     :history, :offering, :references,
                                     :start_date, :duration, :intention)
  end
end
