require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require_relative 'Helper.rb'

World(Helper)

Capybara.register_driver :selenium do |app|
    #selenium selenium_chrome selenium_chrome_healess
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

    Capybara.default_driver = :selenium

    #timeout padrão para execução
    Capybara.default_max_wait_time = 15

    #maximizar a tela toda vez que rodar uma bateria de cenários
    Capybara.page.driver.browser.manage.window.maximize
