require_relative 'parsing.rb'

class Model
  parsing = Parse.new
  
  $body = {
    externalCode: $exCode,
    storeId: $storeId,
    subTotal: $subTotal,
    deliveryFee: $deliveryFee,
    total_shipping: $totalShipping,
    total: $total,
    country: $country,
    state: $state,
    city: $city,
    district: $district,
    street: $street,
    complement: $complement,
    latitude: $latitude,
    longitude: $longitude,
    dtOrderCreate: $dtOrderCreate,
    postalCode: $postalCode,
    number: $number,
    customer: {
      externalCode: $customerId,
      name: $customerName,
      email: $customerEmail,
      contact: $customerContact
    },
    items: [{
      externalCode: $itemId,
      name: $itemName,
      price: $itemPrice,
      quantity: $itemQuantity,
      total: $itemTotal,
      subItems: []
    }],
    payments: [{
      type: $paymentType,
      value: $paymentValue
    }]
  }.to_json
end