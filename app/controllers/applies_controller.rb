class AppliesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_apply, only: [:show, :edit, :update, :destroy, :appl]

  def index
    if Apply.exists?(user_id: current_user.id)
      @apply = Apply.where(user_id: current_user.id)[0]

      respond_to do |format|
        format.html
        format.json
        format.pdf do
          pdf = ApplyPdf.new(@apply)
          send_data pdf.render, filename: "Application_#{@apply.id}.pdf", type: "application/pdf", disposition: "inline"
        end
      end
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
sum = 0
    if @apply.medical==true
      sum = sum + 5
    end

    if (@apply.family_income).to_i <= 100000
      sum = sum + 5
    end

    @u=@apply.date_of_birth
    @k=Date.current

    if @k.year-@u.year >=65 && @k.year-@u.year <=75
      sum = sum + 5
    end
    @apply.points=sum
current_user.applied = true
    current_user.save
    if @apply.save
      @const = Constituency.where(name: @apply.constituency)[0]
      if @const.number != 0 && @const.number != nil
        @apply.status = "seen"
        @const.number -= 1
        @const.save
        @apply.save
      end
      redirect_to applies_path
    else
      render 'new'
    end
  end

  def edit
    if @apply.status == "Decline"
      @apply.status = "applied"
      @apply.save
    end
  end

  def update
    if @apply.update(set_params)
      if @apply.status == "Decline"
        const = Constituency.where(name: @apply.constituency)[0]
        const.number += 1
        Apply.all.each do |a|
          if a.constituency == @apply.constituency
            if a.status == "applied"
              a.status = "seen"
              a.save
              const.number -= 1
            end
          end
        end
      const.save
    elsif @apply.status == "applied"
        @const = Constituency.where(name: @apply.constituency)[0]
        if @const.number != 0 && @const.number != nil
          @apply.status = "seen"
          @const.number -= 1
          @const.save
          @apply.save
        end
      end
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @apply.destroy
    redirect_to applies_path
  end

  def appl
    @apply.applied = true
    @apply.status = "applied"
    @apply.save
    const = Constituency.where(name: @apply.constituency)[0]
    const.number -= 1
    if @apply.gender == "Male"
      if const.male_applicants == nil
        const.male_applicants = 1
      else
        const.male_applicants += 1
      end
    else
      if const.female_applicants == nil
        const.female_applicants = 1
      else
        const.female_applicants += 1
      end
    end
    const.save
    redirect_to applies_path
  end

  private
  def set_params
    params.require(:apply).permit(:first_name, :last_name, :avatar, :father_husband_name, :aadhaar, :date_of_birth, :address, :constituency, :mobile, :gender, :family_income, :status, :feedback, :incomecertificate, :aadharcard, :medcerti)
  end

  def find_apply
    @apply = Apply.find(params[:id])
  end

end
