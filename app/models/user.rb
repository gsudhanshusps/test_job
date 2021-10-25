class User < ApplicationRecord
  has_one :client, dependent: :destroy
  accepts_nested_attributes_for :client

  has_one :lawyer, dependent: :destroy
  accepts_nested_attributes_for :lawyer

  validates :first_name, :last_name, :email, presence: true

  def is_lawyer?
    lawyer.present?
  end

  def is_client?
    client.present?
  end
end
