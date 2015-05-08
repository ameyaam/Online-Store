require 'csv'
namespace :import_category_csv do
  task :create_category => :environment do
    csv_text = File.read('/home/shivam/cit597/project/project/Category.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    	category = Category.new
    	if(row.has_key?('name'))
    		category.name = row['name']
 	    else
	        category.name = "null"
        end
        category.save
    end
  end
end