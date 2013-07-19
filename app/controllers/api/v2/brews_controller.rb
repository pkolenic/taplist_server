module Api
  module V2
    class BrewsController < Api::BaseController
      
      class Brew < :: Brew
        def as_json(option = {})
          super.merge(released_on: "NEVER")
        end
      end
      
      respond_to :json
      
      def index
        respond_with Brew.all
      end
      
      def show
        respond_with Brew.find(params[:id])
      end
    end 
  end
end