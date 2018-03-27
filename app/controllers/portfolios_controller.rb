class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, noticec: 'Your portfolio item has been created' }
          # skip going to show page (we don't have this implemented yet, and sometimes we'll want to redirect to index anyways)
      else
        format.html { render :new }
      end
    end
  end

  def edit

  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
