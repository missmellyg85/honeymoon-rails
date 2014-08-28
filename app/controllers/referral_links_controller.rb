class ReferralLinksController < ApplicationController
  before_action :authenticate_admin!

  def new
    @referral_link = ReferralLink.new
        render :layout => 'application_nobanner'
  end

  def create
    @referral_link = ReferralLink.new(referral_link_params)
    if @referral_link.save
      redirect_to @referral_link, notice: 'Referral Link was created successfully'
    end
  end

  def update
    referral_link = ReferralLink.find(params[:id])

    if referral_link.update!(referral_link_params)
      redirect_to referral_link, notice: 'Referral Link was updated successfully'
    end
  end

  def edit
    @referral_link = ReferralLink.find(params[:id])
        render :layout => 'application_nobanner'
  end

  def destroy
    referral_link = ReferralLink.find(params[:id])
    if referral_link.destroy
      redirect_to referral_links_url, notice: 'Referral Link was deleted successfully'
    end
  end

  def index
    @referral_links = ReferralLink.all()
  end

  def show
    @referral_link = ReferralLink.find(params[:id])
  end

  private
    def referral_link_params
      params.require(:referral_link).permit(:name, :url, :path)
      render :layout => 'application_nobanner'
    end
end
