class AddBusinessNamesToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :business_name, :string
  end
end
