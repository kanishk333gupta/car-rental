class ChangeDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :cars ,:status ,:boolean

  end
end
