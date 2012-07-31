class StocksController < ApplicationController

  before_filter :find_stock, :only => [:show, :edit, :update, :destroy]

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
    @stock.addresses.build
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
  end

  def update
    @stock.update_attributes(params[:stock])

    redirect_to stock_path(@stock)
  end



  protected

  def find_stock
    @stock = Stock.find(params[:id])
  end

end
