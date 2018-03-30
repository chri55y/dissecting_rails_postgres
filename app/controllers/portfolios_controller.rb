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
    @portfolio_item = Portfolio.find(params[:id]) # TO DO - implement before_action
  end

  def update
    @portfolio_item = Portfolio.find(params[:id]) # TO DO - implement before_action

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio item updated successfully'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id]) # TO DO - implement before_action
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def destroy

  end

end
