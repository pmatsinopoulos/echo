class EchoController < ApplicationController
  skip_before_action :verify_authenticity_token

  respond_to :json, :xml, :html

  def index

  end

  def echo
    data = request.body.read
    data_decoded = nil

    respond_to do |format|
      format.json do
        if data.is_a?(String) && data.length >= 1
          data_decoded = ActiveSupport::JSON.decode(data) rescue nil
        end
      end
    end
    Rails.logger.debug "Response body decoded: #{data_decoded}"

    @echo = EchoData.new({
                               params: params,
                               body: data
                           })
  end
end