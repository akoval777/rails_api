class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do
    render json: {error: 'No such record in Database', status: not_found}
  end

  def catch_404
    raise ActionController::RoutingError new(params[path])
  end

  rescue_from ActionController::RoutingError do |exception|
    logger.error "Routing error occurred: #{exception}"
    render json: {error: 'No route matches', status: no_route}
  end
end
