class CreateEngages < ActiveRecord::Migration[5.2]
  def change
    create_table :engages do |t|
      t.references :user, foreign_key: true
      t.references :lead, foreign_key: true
    end
  end
end
