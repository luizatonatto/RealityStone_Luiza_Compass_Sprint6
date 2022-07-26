require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'
require 'faker'
require 'i18n'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    options = ::Selenium::WebDriver::Chrome::Options.new
    options.args << '--incognito'
    options.args << '--start-maximized'
    options.args << '--window-size=1420,835'
    options.args << '--no-sandbox'
    options.args << '--ignore-ssl-erros'
    options.args << '--ignore-certificade-erros'
    options.args << '--disable-popup-blocking'
    options.args << '--disable-translate'
    options.args << '--disable-gpu'
    options.args << '--disable-impl-side-painting'
    options.args << '--debug_levels=3'
    options.args << '--acceptInsecureCerts=true'

    # Agradecimento/Créditos: Daniel, colega da Compass, que ajudou na criação desse pedaço do código linha 16-29
    
    if ENV['HEADLESS']
        options.args << '--headless'
        options.args << '--disable-site-isolation-trials'
    end 

    Capybara::Selenium::Driver.new(app, :browser => :chrome, :options => options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10

