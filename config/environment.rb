# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Address4::Application.initialize!


Date::DATE_FORMATS[:default] = "%d/%m/%Y"