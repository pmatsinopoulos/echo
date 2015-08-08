class EchoData
  include ActiveModel::Model
  attr_accessor :params, :body, :json_body
end