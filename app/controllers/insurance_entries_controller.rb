class InsuranceEntriesController < ApplicationController
  include InsuranceEntriesHelper
  
  def index
    @company_list = insurance_company_list.nil? ? [] : insurance_company_list

  end
  
  def new
    @entry = InsuranceEntries.new
  end
  
  def create
    @entry = InsuranceEntries.new(:insurance_company => params[:insurance_company],:surgery_code => params[:surgery_code], :is_approved => params[:is_approved])
    if @entry.save
      flash[:notice] = "Added new Entry"
      redirect_to "/insurance_entries/new"
    else
      flash[:notice] = "New Entry Not Added Try again"
      render :action => "new"
    end
  end
  
  def search
    @insurance_entry = InsuranceEntries.where("insurance_company = ? AND surgery_code = ?", params[:insurance_company], params[:surgery_code]).first
    if @insurance_entry.nil?
      flash[:error] = "NO RECORDS FOUND WITH A CODE OF #{params[:surgery_code]} from #{params[:insurance_company]}"
      redirect_to "/insurance_entries/index"
    else
      if @insurance_entry.is_approved then
        flash[:notice] = "Surgery Code: #{@insurance_entry.surgery_code} with #{@insurance_entry.insurance_company} is APPROVED"
        redirect_to "/insurance_entries/index"
      else
        flash[:notice] = "Surgery Code: #{@insurance_entry.surgery_code} with #{@insurance_entry.insurance_company} is NOT APPROVED"
      end
    end
  end
  
  def list
    @entries = InsuranceEntries.all
  end
  
  def delete
    @insurance_entry = InsuranceEntries.where("insurance_company = ? AND surgery_code = ?", params[:insurance_company], params[:surgery_code]).first
    @insurance_entry.destroy
    flash[:notice] = "Surgery Code: #{@insurance_entry.surgery_code} with #{@insurance_entry.insurance_company} has been DELETED"
    redirect_to "/insurance_entries/list"
  end
  

  
  def update_entry
    @insurance_entry = InsuranceEntries.where("insurance_company = ? AND surgery_code = ?", params[:old_insurance_company], params[:old_surgery_code]).first
    @insurance_entry.update_attributes(:insurance_company => params[:insurance_company],:surgery_code => params[:surgery_code], :is_approved => (params[:is_approved] ? TRUE : FALSE))
    if @insurance_entry.save
      flash[:notice] = "Entry Updated Successfully"
      redirect_to "/insurance_entries/list"
    end
  end

end
