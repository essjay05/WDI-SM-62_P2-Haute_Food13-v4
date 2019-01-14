class User < ApplicationRecord
    #Invoke bcrypt to require AND hash passwords
    has_secure_password
end
