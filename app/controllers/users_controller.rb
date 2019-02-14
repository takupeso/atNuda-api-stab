=begin
Swagger atNuda

This is a sample atNuda server.  You can find  out more about Swagger at  [http://swagger.io](http://swagger.io) or on  [irc.freenode.net, #swagger](http://swagger.io/irc/). 

OpenAPI spec version: 1.0.0
Contact: xe314m@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class UsersController < ApplicationController
  USER_ERROR400_JSON = {"error": { "status": 400, "message": "Invalid uuid supplied" } }
  USER_ERROR404_JSON = {"error": { "status": 404, "message": "Invalid User not found" } }
  PAGE_ERROR400_JSON = {"error": { "status": 400, "message": "Invalid page supplied" } }
  PAGE_ERROR404_JSON = {"error": { "status": 404, "message": "Invalid page not found" } }

  def destroy
    # Your code here

    bad_request
    not_found
    render json: { date: {status: 200, "message" => "OK" } } unless error?
  end

  def get_user_by_uuid

    json = {
      data: {
        "uuid": "userxxxxxxx1",
        "name": "john",
        "position": ["フロントエンド", "デザイナー"],
        "status": "転職中",
        "user_large_image_url": "http://localhost:4200/images/large_user1.jpeg",
        "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
        "portforios": [
          {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx2",
            "like": 2,
            "site_url": "https://site2.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx3",
            "like": 4,
            "site_url": "https://site3.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx4",
            "like": 3,
            "site_url": "https://site4.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx5",
            "like": 1,
            "site_url": "https://site5.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx6",
            "like": 10,
            "site_url": "https://site6.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx7",
            "like": 0,
            "site_url": "https://site7.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx8",
            "like": 0,
            "site_url": "https://site8.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx9",
            "like": 3,
            "site_url": "https://site9.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx10",
            "site_url": "https://site10.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx11",
            "site_url": "https://site11.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx12",
            "like": 0,
            "site_url": "https://site12.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx13",
            "like": 100,
            "site_url": "https://site13.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx14",
            "like": 0,
            "site_url": "https://site14.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
          {
            "uuid": "portxxxxxxx15",
            "like": 100,
            "site_url": "https://site15.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        ]
      }
    }

    bad_request
    not_found
    render json: json unless error?
  end

  def get_likes_portfolios_of_user_by_uuid
    json = {
      data: [
        {
          "uuid": "userxxxxxxx2",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
        {
          "uuid": "userxxxxxxx3",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
        {
          "uuid": "userxxxxxxx4",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
        {
          "uuid": "userxxxxxxx5",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
        {
          "uuid": "userxxxxxxx6",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
        {
          "uuid": "userxxxxxxx7",
          "name": "john",
          "position": ["ワールドエンド", "バックエンド"],
          "status": "転職中",
          "user_small_images_url": "http://localhost:4200/images/small_user1.jpeg",
          "portforio": {
            "uuid": "portxxxxxxx1",
            "like": 4,
            "site_url": "https://www.google.com/",
            "image_urls": [
              "http://localhost:4200/images/site1.jpeg",
              "http://localhost:4200/images/site2.jpeg",
              "http://localhost:4200/images/site3.jpeg"
            ],
          },
        },
      ]
    }

    bad_request
    not_found
    render json: json unless error?
  end

  def update
    # Your code here
    
    bad_request
    not_found
    render json: { "date": {"status": 200, "message" => "OK" } } unless error?
  end
end
