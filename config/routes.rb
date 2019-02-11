=begin
Swagger atNuda

This is a sample atNuda server.  You can find  out more about Swagger at  [http://swagger.io](http://swagger.io) or on  [irc.freenode.net, #swagger](http://swagger.io/irc/). 

OpenAPI spec version: 1.0.0
Contact: xe314m@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
Rails.application.routes.draw do

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end
  
  add_swagger_route 'POST', '/api/v1/portfolios/{uuid}/followers', controller_name: 'followers', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/portfolios/{uuid}/followers', controller_name: 'followers', action_name: 'delete'
  add_swagger_route 'POST', '/api/v1/portfolios/{uuid}/likes', controller_name: 'likes', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/portfolios/{uuid}/likes', controller_name: 'likes', action_name: 'delete'
  add_swagger_route 'POST', '/api/v1/portfolios/{uuid}/comments', controller_name: 'comments', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/portfolios/{uuid}/comments/{uuid}', controller_name: 'comments', action_name: 'delete_comment'
  add_swagger_route 'PATCH', '/api/v1/portfolios/{uuid}/comments/{uuid}', controller_name: 'comments', action_name: 'update_comment'
  add_swagger_route 'POST', '/api/v1/portfolios/{uuid}/corrections', controller_name: 'corrections', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/portfolios/{uuid}/corrections/{uuid}', controller_name: 'corrections', action_name: 'delete_correction'
  add_swagger_route 'PATCH', '/api/v1/portfolios/{uuid}/corrections/{uuid}', controller_name: 'corrections', action_name: 'update_correction'
  add_swagger_route 'POST', '/api/v1/portfolios', controller_name: 'portfolios', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/portfolios/{uuid}', controller_name: 'portfolios', action_name: 'destroy'
  add_swagger_route 'GET', '/api/v1/portfolios/{page}', controller_name: 'portfolios', action_name: 'show'
  add_swagger_route 'PATCH', '/api/v1/portfolios/{uuid}', controller_name: 'portfolios', action_name: 'update'
  add_swagger_route 'POST', '/api/v1/users', controller_name: 'users', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/users/{uuid}', controller_name: 'users', action_name: 'destroy'
  add_swagger_route 'GET', '/api/v1/users/{uuid}/portfolios/{page}', controller_name: 'users', action_name: 'get_portfolios_of_user_by_uuid'
  add_swagger_route 'GET', '/api/v1/users/{uuid}', controller_name: 'users', action_name: 'show'
  add_swagger_route 'GET', '/api/v1/users', controller_name: 'users', action_name: 'index'
  add_swagger_route 'PATCH', '/api/v1/users/{uuid}', controller_name: 'users', action_name: 'update'
  add_swagger_route 'POST', '/api/v1/auth/{provider}/callback', controller_name: 'sessions', action_name: 'create'
  add_swagger_route 'DELETE', '/api/v1/sessions/{token}', controller_name: 'sessions', action_name: 'destroy'
end
