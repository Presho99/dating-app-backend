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

    delete "/matches/:id" do
        match = Match.find(params[:id])
        match.destroy
    end
end