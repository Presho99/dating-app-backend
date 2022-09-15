class MatchController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/matches' do
        matches = Match.all
        matches.to_json
    end

    get "/matches/:id" do
        match = Match.find_by_id(params[:id])
        match.to_json
    end

    post '/matches' do
        match = Match.create(
            man_id: params[:man_id],
            woman_id: params[:woman_id],
            percentage: params[:percentage]
        )
        match.to_json
    end

    get "/match" do
        person = Man.find_by(first_name:params[:username])|| Woman.find_by(first_name:params[:username])
        personTwo = Man.find_by(first_name:params[:matchname])|| Woman.find_by(first_name:params[:matchname])
        person.matches.find{|match| match.woman_id == personTwo.id || match.man_id == personTwo.id}.destroy
        person = Man.find_by(first_name:params[:username])|| Woman.find_by(first_name:params[:username])
        person.to_json include: :my_match
    end
end 