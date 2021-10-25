class AddAddressInLawyer < ActiveRecord::Migration[6.1]
  def change
    add_column :lawyers, :address, :text
  end
end
