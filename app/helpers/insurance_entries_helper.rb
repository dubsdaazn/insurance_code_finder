module InsuranceEntriesHelper
  
  def insurance_company_list
    insurance_company_list = []
    InsuranceEntries.order("insurance_company ASC").each do |x|
      insurance_company_list << x.insurance_company
    end
    insurance_company_list.uniq
  end
  
  
end
