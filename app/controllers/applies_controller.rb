class AppliesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_apply, only: [:show, :edit, :update, :destroy]

  def index
    if Apply.exists?(user_id: current_user.id)
      @apply = Apply.where(user_id: current_user.id)[0]
    else
      @apply = 0
    end
  end

  def new
    @apply = Apply.new
  end

  def create
    @apply = Apply.new(set_params)
    @apply.user_id = current_user.id

    if @apply.save
      redirect_to applies_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @apply.update(set_params)
      redirect_to applies_path
    else
      render 'edit'
    end
  end

  def destroy
    @apply.destroy
    redirect_to applies_path
  end

  private
  def set_params
    params.require(:apply).permit(:first_name, :last_name, :father_husband_name, :aadhaar, :date_of_birth, :address, :constituency, :mobile, :gender, :family_income)
  end

  def find_apply
    @apply = Apply.find(params[:id])
  end

end
