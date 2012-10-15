require 'open-uri'
require 'json'

class HomeController < ApplicationController
  
  def display
    
    json_response = open("http://codemountain.com/api/students/am.json").read
    students = JSON.parse(json_response)
    
    @student = students
    
    end
end
