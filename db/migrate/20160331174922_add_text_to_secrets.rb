class AddTextToSecrets < ActiveRecord::Migration[5.0]
  def change
    add_column :secrets, :text, :string
  end
end
