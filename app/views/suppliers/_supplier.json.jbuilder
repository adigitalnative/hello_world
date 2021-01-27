json.extract! supplier, :id, :name, :ein, :address_1, :address_2, :city, :state, :zip_code, :phone_number, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
