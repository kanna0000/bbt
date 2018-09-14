class WelcomeController < ApplicationController
  def index
     @data = params[:input][:prev_txid] if params[:input]
  end
end
