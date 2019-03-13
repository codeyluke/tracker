class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :company
      t.string :industry
      t.string :industry_desc
      t.integer :status
      t.string :g_email_1
      t.string :g_email_2
      t.string :g_phone_1
      t.string :g_phone_2
      t.string :gkeeper_name
      t.string :dm_name
      t.string :dm_phone
      t.string :dm_email
      t.integer :creator_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
