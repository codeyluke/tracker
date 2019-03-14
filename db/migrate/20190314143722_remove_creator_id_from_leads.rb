class RemoveCreatorIdFromLeads < ActiveRecord::Migration[5.2]
  def change
    remove_column :leads, :creator_id
  end
end
