require 'rubygems'
require 'httparty'
require 'json'
require 'date'

require_relative 'model.rb'
require_relative 'db.rb'

class DeliveryCenter
  include HTTParty
  base_uri 'https://delivery-center-recruitment-ap.herokuapp.com/'
  model = Model.new

  if $paid == 'paid'
    time = Time.now.strftime('%Hh%M - %d/%m/%Y')

    headers = {
      'x-sent' => time
    }

    $response = HTTParty.post(base_uri, body: $body, headers => headers)
    
    db = DB.new($body) if $response.code == 200
  else
    p 'pagamento não efetuado'
  end

  def code
    $response.code
  end

end
