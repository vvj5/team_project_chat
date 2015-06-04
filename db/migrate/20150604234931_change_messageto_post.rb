class ChangeMessagetoPost < ActiveRecord::Migration
  def change
    rename_column(:messages, :message, :post)
  end
end
