class ApplicationController < ActionController::API

  #BAT_REQUEST = {"error": { "status": 400, "message": "Bad request" } }
  #NOT_FOUND = {"error": { "status": 404, "message": "Invalid status not found" } }
  #INVALID_JSON = {"error": { "status": 405, "message": "Invalid json" }}

  def param?
    params[:data].present?
  end

  def error?
    if param?
      data = params.require(:data)
      return data[:error].present?
    end
    false
  end

  def error_status
    if param? && error?
      data = params.require(:data)
      return data[:error]
    end
    nil
  end

  def bad_request
    render json: { "date": {"status": 400, "message" => "bad request" } } if error_status == 400
  end

  def not_found
    render json: { "date": {"status": 404, "message" => "not found" } } if error_status == 404
  end
end
