class JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base. to_s

  #Encode token, lifetime 1 day
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  #Decode the token to access user data
  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end

end