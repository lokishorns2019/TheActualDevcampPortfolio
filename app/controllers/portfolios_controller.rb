class PortfoliosController < ApplicationController
    layout 'portfolio'
    
    def index
       @portfolio_items = Portfolio.all
    end
    
    def what
        @what_items = Portfolio.what
    end
    
    def new
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }
        @page_title = "Creating New Portfolio Item"
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
            else
                format.html { render :new }
            end
        end
    end
    
    def edit
        @portfolio_item = Portfolio.find(params[:id])
        @page_title = "Creating New Portfolio Item"
    end
    
    def update
        @portfolio_item = Portfolio.find(params[:id])
        
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to portfolios_path, notice: 'Your portfolio item was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end
    
    def show
        @portfolio_item = Portfolio.find(params[:id])
        @page_title = @portfolio_item.title
    end
    
    def destroy
        # Perform the lookup
        @portfolio_item = Portfolio.find(params[:id])
        
        # Deletes the record
        @portfolio_item.destroy
        
        # Redirect
        respond_to do |format|
            format.html { redirect_to portfolios_url, notice: 'Your portfolio item was successfully deleted.' }
        end
    end
    
    private
    
    def portfolio_params
        params.require(:portfolio).permit(:title, 
                                          :subtitle, 
                                          :body, 
                                          :image,
                                          technologies_attributes: [:name]
                                          )
    end
end
