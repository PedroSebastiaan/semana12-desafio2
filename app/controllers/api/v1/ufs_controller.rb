module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @uf = Uf.find_by(date: params[:date])
                @client = Client.find_by(name: request.headers["X-CLIENT"])
                @client.log_count = @client.log_count + 1
                @client.save
                render json: @uf
            end
        end
    end
end