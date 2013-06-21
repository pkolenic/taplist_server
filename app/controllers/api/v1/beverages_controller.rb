module Api
  module V1
    class BeveragesController < Api::BaseController      
      
      def index
        respond_with Beverage.all
      end
      
      def show
        respond_with Beverage.find(params[:id])
      end
      
    end 
  end
end