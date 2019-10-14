require 'rspec'
require 'csv'

def csv_tool headers, data
  CSV.open('support/generated_file.csv', 'wb') do |csv|
    csv << headers

    data.each do |column|
      csv << column
    end
  end
end
