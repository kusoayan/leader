class StocksController < ApplicationController

  before_filter :find_stock, :only => [:show, :edit, :update, :destroy]
  before_filter :prepare_alphabet_list, :only => [:new, :edit]

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
    @stock.addresses.build
    @stock.phones.build
    @stock.webpages.build
    @stock.emails.build
  end

  def create
    @stock = Stock.new(params[:stock])
    @stock.save

    redirect_to stock_path(@stock)
  end

  def show
    
  end

  def edit
    @stock.addresses.build
    @stock.phones.build
    @stock.webpages.build
    @stock.emails.build
  end

  def update
    @stock.update_attributes(params[:stock])

    redirect_to stock_path(@stock)
  end



  protected

  def find_stock
    @stock = Stock.find(params[:id])
  end

  def prepare_alphabet_list
    @alphabet_list = []
    AlphabetNumber.all.each do |alphabet_number|
      @alphabet_list << [alphabet_number.alphabet, alphabet_number.id]
    end
  end

end
