# password_digest
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
    has_one :professional
    has_many :orders
    validates :name,presence: true, length: {minimum: 2}
    validates :mobile_number,format: {with: /\A[6-9][0-9]{9}\z/,message: "Invalid mobile number entered"}
    validates :email,format: {with: /\A[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\z/,message: "Invalid email id entered"}
    enum gender: { female: 0, male: 1, others: 2}
    enum role: { Customer: 0, Professional: 1, Admin: 2}
    has_secure_password
end
