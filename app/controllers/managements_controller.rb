class ManagementsController < ApplicationController


   def index
     managements = Management.all
     render json: managements
   end
end
