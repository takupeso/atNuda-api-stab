=begin
Swagger atNuda

This is a sample atNuda server.  You can find  out more about Swagger at  [http://swagger.io](http://swagger.io) or on  [irc.freenode.net, #swagger](http://swagger.io/irc/). 

OpenAPI spec version: 1.0.0
Contact: xe314m@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class CommentsController < ApplicationController

  def create
    # Your code here
    invalid_json
    render json: { date: [ {status: 201, "message" => "OK" } ] } 
  end

  def delete_comment
    # Your code here

    render json: { date: [ {status: 204, "message" => "OK" } ] } 
  end

  def update_comment
    # Your code here
    
    render json: { date: [ {status: 200, "message" => "OK" } ] } 
  end
end