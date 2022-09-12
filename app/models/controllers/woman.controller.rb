class WomanController < Sinatra::Base
    set :default_content_type, 'application/json'

    get "/women" do
        women = Woman.all
        women.to_json include: :matches
    end

    get "/women/:id" do
        woman = Woman.find_by_id(params[:id])
        woman.to_json
    end

    post "/female" do
        woman = Woman.create(
            first_name: params[:first_name],
            birth: params[:birth],
            gender: params[:gender],
            job: params[:job],
            city: params[:city],
        )
        woman.to_json
    end

    delete "/women/:id" do
        woman = Woman.find(params[:id])
        woman.destroy
        Woman.all.to_json

    end


end    