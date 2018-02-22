ENV['RACK_ENV'] ||= 'development'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require 'sinatra'
require_relative 'routes'

class Restaurant < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }
end

