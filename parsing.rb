require 'json'

class Parse
  file = File.read('payload.json')

  def fileExtension
    File.extname('payload.json')
  end

  data_hash = JSON.parse(file)

  #SHIPPING PARSING
  $exCode = data_hash['id'].to_s
  $storeId = data_hash['store_id'].to_i
  $subTotal = data_hash['total_amount'].to_s
  $deliveryFee = data_hash['total_shipping'].to_s
  $totalShipping = data_hash['total_shipping'].to_s
  $total = data_hash['total_amount_with_shipping'].to_s
  $country = data_hash['shipping']['receiver_address']['country']['id'].to_s
  $state = data_hash['shipping']['receiver_address']['state']['name'].to_s
  $city = data_hash['shipping']['receiver_address']['city']['name'].to_s
  $district = data_hash['shipping']['receiver_address']['neighborhood']['name'].to_s
  $street = data_hash['shipping']['receiver_address']['street_name'].to_s
  #COMPLEMENT 
  $complement = 'galpao'
  $latitude = data_hash['shipping']['receiver_address']['latitude'].to_f
  $longitude = data_hash['shipping']['receiver_address']['longitude'].to_f
  $dtOrderCreate = data_hash['date_created'].to_s
  $postalCode = data_hash['shipping']['receiver_address']['zip_code'].to_s
  $number = data_hash['shipping']['receiver_address']['street_number'].to_s

  #CUSTUMER PARSING
  $customerId = data_hash['buyer']['id'].to_s
  $customerName = data_hash['buyer']['nickname'].to_s
  $customerEmail = data_hash['buyer']['email'].to_s
  $customerContact = data_hash['shipping']['receiver_address']['receiver_phone'].to_s

  #ITEMS PARSING
  $itemId = data_hash['order_items'][0]['item']['id'].to_s
  $itemName = data_hash['order_items'][0]['item']['title'].to_s
  $itemPrice = data_hash['order_items'][0]['unit_price'].to_f
  $itemQuantity = data_hash['order_items'][0]['quantity'].to_i
  $itemTotal = data_hash['order_items'][0]['full_unit_price'].to_f

  #PAYMENT PARSING
  $paymentType = data_hash['payments'][0]['payment_type'].to_s
  $paymentValue = data_hash['payments'][0]['total_paid_amount'].to_f
  $paid = data_hash['payments'][0]['status']
end
