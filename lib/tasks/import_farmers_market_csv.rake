require 'csv'
namespace :import_farmers_market_csv do
  task :create_farmers_market => :environment do
    csv_text = File.read('./FarmersMarket.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    	farmersmarket = FarmersMarket.new
    	if(row.has_key?('name'))
    		farmersmarket.name = row['name']
 	    else
	        farmersmarket.name = "null"
        end
        if(row.has_key?('website'))
	    	farmersmarket.website = row['website']
 	    else
	        farmersmarket.website = "null"
        end
        if(row.has_key?('facebook'))
	    	farmersmarket.facebook = row['facebook']
 	    else
	        farmersmarket.facebook = "null"
        end
        if(row.has_key?('street'))
	    	farmersmarket.street = row['street']
 	    else
	        farmersmarket.street = "null"
        end
        if(row.has_key?('city'))
	    	farmersmarket.city = row['city']
 	    else
	        farmersmarket.city = "null"
        end
        if(row.has_key?('county'))
	    	farmersmarket.county = row['county']
 	    else
	        farmersmarket.county = "null"
        end
        if(row.has_key?('state'))
	    	farmersmarket.state = row['state']
 	    else
	        farmersmarket.state = "null"
        end
        if(row.has_key?('zip'))
	    	farmersmarket.zip = row['zip']
 	    else
	        farmersmarket.zip = "null"
        end
        farmersmarket.save
    end
  end
end