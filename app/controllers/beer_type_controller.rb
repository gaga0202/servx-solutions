class BeerTypeController < ApplicationController


  def beer_index
    array = ['IPA', 'brown_ale' ,'pilsner', 'lager' ,'lambic', 'hefeweizen']
    raise InvalidBeerType,"Invalid Beer Type" if !array.include? params[:beer_type]
    render json: {payload: {message:"Valid Beer"}}
  end
end