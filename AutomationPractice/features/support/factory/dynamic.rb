require 'faker'
require 'i18n'

module Factory
    class Dynamic
        Faker::Config.locale = "en-US"
        def self.dynamic_data = {
                first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                r_email: Faker::Internet.email,
                r_password: Faker::Lorem.characters(number: 10),
                address: Faker::Address.street_address,
                r_city: Faker::Address.city,
                r_zip_code: Faker::Number.number(digits: 5),
                r_mobile_phone: Faker::PhoneNumber.cell_phone }

        end
    end
