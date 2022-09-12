class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Started my server using shotgun!" }.to_json
  end

  get "/person/:person" do
    person = Man.find_by(first_name:params[:person])|| Woman.find_by(first_name:params[:person])
    person.to_json

  end

end
