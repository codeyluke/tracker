class RenameColumnCompanyToCompanyName < ActiveRecord::Migration[5.2]
  def change
    rename_column :leads, :company, :company_name
  end
end
