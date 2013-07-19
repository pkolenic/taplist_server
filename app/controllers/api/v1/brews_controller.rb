module Api
  module V1
    class BrewsController < Api::BaseController      
      
      def index
        respond_with Brew.all
      end
      
      def show
        respond_with Brew.find(params[:id])
      end
      
    end 
  end
end