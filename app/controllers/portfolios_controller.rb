=begin
Swagger atNuda

This is a sample atNuda server.  You can find  out more about Swagger at  [http://swagger.io](http://swagger.io) or on  [irc.freenode.net, #swagger](http://swagger.io/irc/). 

OpenAPI spec version: 1.0.0
Contact: xe314m@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class PortfoliosController < ApplicationController

  STATUS_ERROR400_JSON = {"error": { "status": 400, "message": "Invalid status supplied" } }
  STATUS_ERROR404_JSON = {"error": { "status": 404, "message": "Invalid status not found" } }

  POSITION_ERROR400_JSON = {"error": { "status": 400, "message": "Invalid position supplied" } }
  POSITION_ERROR404_JSON = {"error": { "status": 404, "message": "Invalid position not found" } }
    
  PAGE_ERROR400_JSON = {"error": { "status": 400, "message": "Invalid page supplied" } }
  PAGE_ERROR404_JSON = {"error": { "status": 404, "message": "Invalid page not found" } }

  def create
    # Your code here
    

    render json: { date: [ {status: 200, "message" => "OK" } ] } 
  end

  def destroy
    # Your code here

    render json: { date: [ {status: 200, "message" => "OK" } ] } 
  end

  def show
    # Your code here

    json = { 
      data: [ 
        {
          "uuid": "portxxxxx1",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx2",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx3",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx4",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx5",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx6",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx7",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx8",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx9",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx10",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx11",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx12",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx13",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx14",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
        {
          "uuid": "portxxxxx15",
          "site_url": "string",
          "image_urls": [
            "https://example.com/1",
            "https://example.com/2",
            "https://example.com/3"
          ],
          "comments": [
            {
              "myself": true,
              "comment": "string"
            }
          ],
          "corrections": [
            {
              "myself": true,
              "correction": "string"
            }
          ],
          "user": {
            "name": "john",
            "position": params[:position],
            "status": params[:status],
            "user_small_images_url": "https://user-small1.com/",
          }
        },
      ]
    }

    json = STATUS_ERROR400_JSON if params[:status] == "400"
    json = STATUS_ERROR404_JSON if params[:status] == "404"

    json = POSITION_ERROR400_JSON if params[:position] == "400"
    json = POSITION_ERROR404_JSON if params[:position] == "400"

    json = PAGE_ERROR400_JSON if params[:page] == "400"
    json = PAGE_ERROR404_JSON if params[:page] == "404"

    render json: json
  end

  def update
    # Your code here

    render json: { date: [ {status: 200, "message" => "OK" } ] } 
  end
end