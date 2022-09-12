class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Started my server using shotgun!" }.to_json
  end

  get "/person/:person" do
    person = Man.find_by(first_name:params[:person])|| Woman.find_by(first_name:params[:person])
    person.to_json include: :my_match

  end

  get "/matches/:person" do
    person = Man.find_by(first_name:params[:person])|| Woman.find_by(first_name:params[:person])
    person.matches.to_json
  end

  get "/male" do
    Woman.all.to_json
  end

  get "/female" do
    Man.all.to_json
  end
end
