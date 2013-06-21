module Api
  module V2
    class BeveragesController < Api::BaseController
      
      class Beverage < :: Beverage
        def as_json(option = {})
          super.merge(released_on: "NEVER")
        end
      end
      
      respond_to :json
      
      def index
        respond_with Beverage.all
      end
      
      def show
        respond_with Beverage.find(params[:id])
      end
    end 
  end
end