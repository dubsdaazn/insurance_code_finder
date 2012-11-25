module InsuranceEntriesHelper
  
  def insurance_company_list
    insurance_company_list = []
    InsuranceEntries.all.each do |x|
      insurance_company_list << x.insurance_company
    end
    insurance_company_list
  end
  
end
