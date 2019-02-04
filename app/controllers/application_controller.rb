class ApplicationController < ActionController::API

  #BAT_REQUEST = {"error": { "status": 400, "message": "Bad request" } }
  #NOT_FOUND = {"error": { "status": 404, "message": "Invalid status not found" } }
  #INVALID_JSON = {"error": { "status": 405, "message": "Invalid json" }}

  #def bad_request
  #  render json: render BAD_REQUEST if params[:uuid] = 400
  #end

  #def not_found
  #  render json: render NOT_FOUND if params[:uuid] = 400
  #end

  #def invalid_json
  #  render json: render INVALID_JSON if params[:uuid] = 405
  #end
end
