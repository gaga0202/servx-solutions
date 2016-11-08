class BeerTypeController < ApplicationController

  def beer_index
    array = ['IPA', 'brown_ale' ,'pilsner', 'lager' ,'lambic', 'hefeweizen']
    render :file => "#{Rails.root}/public/404.html",  :status => 404 if !array.include? params[:beer_type]
    @beer_type = params[:beer_type]
  end
end