class InsuranceEntries < ActiveRecord::Base
  attr_accessible :insurance_company, :surgery_code, :is_approved
  validates_presence_of :insurance_company, :surgery_code
end
