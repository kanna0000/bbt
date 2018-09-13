require 'bitcoin'
Bitcoin.network = :testnet3

class TransactionsController < ApplicationController
  def index
  end

  def build
    transaction = params[:transactions]
    @debug = transaction
    txin = Bitcoin::Protocol::TxIn.new(transaction[:prev_hash], transaction[:prev_index])
    txout = Bitcoin::Protocol::TxOut.value_to_address(transaction[:value], transaction[:send_to])
  end
end
