json.extract! eos_account, :id, :username, :email, :pubkey, :created_at, :updated_at
json.url eos_account_url(eos_account, format: :json)
