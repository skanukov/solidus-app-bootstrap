required_countries = ['Российская Федерация']
countries = []
Carmen::Country.all.each do |country|
  countries << {
    name: country.name,
    iso3: country.alpha_3_code,
    iso: country.alpha_2_code,
    iso_name: country.name.upcase,
    numcode: country.numeric_code,
    states_required: country.subregions?
  } if required_countries.include?(country.name)
end

ActiveRecord::Base.transaction do
  Spree::Country.create!(countries)
end

default_country = Spree::Country.find_by(name: 'Российская Федерация')
Spree::Config[:default_country_id] ||= default_country.id if default_country.present?
