=begin
Swagger atNuda

This is a sample atNuda server.  You can find  out more about Swagger at  [http://swagger.io](http://swagger.io) or on  [irc.freenode.net, #swagger](http://swagger.io/irc/). 

OpenAPI spec version: 1.0.0
Contact: xe314m@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class LikesController < ApplicationController

  def create
    # Your code here

    bad_request
    render json: { "date": {"status": 201, "message" => "OK" } } unless error?
  end

  def delete
    # Your code here
    bad_request
    not_found
    render json: { "date": {"status": 205, "message" => "OK" } } unless error?
  end

  def update
    # Your code here

    bad_request
    not_found
    render json: { "date": {"status": 200, "message" => "OK" } } unless error?
  end
end
