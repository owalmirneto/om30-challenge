# frozen_string_literal: true

class CitizensController < ApplicationController
  def index
    @citizens = query.paginate(params[:page])
  end

  def new
    @citizen = query.build
  end

  def edit
    @citizen = query.find(params[:id])
  end

  def create
    service = Citizens::Save.call(params: citizen_params)

    if service.success?
      redirect_to citizens_path, notice: t(".success")
    else
      @citizen = service.citizen
      render :new, status: :unprocessable_entity
    end
  end

  def update
    service = Citizens::Save.call(id: params[:id], params: citizen_params)

    if service.success?
      redirect_to citizens_path, notice: t(".success")
    else
      @citizen = service.citizen
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def query
    @query ||= CitizensQuery.new
  end

  def citizen_params
    params.require(:citizen)
          .permit(citizen_attributes, address_attributes:)
  end

  def citizen_attributes
    [:name, :email, :phone, :cns, :cpf, :born_in]
  end

  def address_attributes
    [:id, :zip_code, :street_name, :building_number, :neighborhood, :city, :state]
  end
end
