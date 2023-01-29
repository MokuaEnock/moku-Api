class CertificationsController < ApplicationController
  def index
    render json: Certification.all
  end

  def show
    cert = Certification.find(params[:id])
    render json: cert
  end

  def create
    cert = Certification.create(cert_params)
    render json: cert
  end

  private

  def cert_params
    params.permit(:name, :institution, :certificate_link, :issue_date)
  end
end
