class ManController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/men" do
        men = Man.all
        men.to_json include: :matches
    end

    get "/men/:id" do
        man = Man.find_by_id(params[:id])
        man.to_json
    end

    post "/men" do
        man = Man.create(
            username: params[:username],
            age: params[:age],
            gender: params[:gender],
            job: params[:job],
            location: params[:location],
            horoscope: params[:horoscope],
        )
        man.to_json
    end

    delete "/men/:id" do
        man = Man.find(params[:id])
        man.destroy
        Man.all.to_json

    end


end    