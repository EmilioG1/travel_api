module Response
  def location_json_response(object, status = :ok)
    render :json => object.to_json(:include => :reviews ), status: status
  end

  def review_json_response(object, status = :ok)
      render json: object, status: status
  end
end