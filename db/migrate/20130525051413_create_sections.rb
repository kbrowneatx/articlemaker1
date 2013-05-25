class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :content
      t.string :fmttype
      t.references :article

      t.timestamps
    end
    add_index :sections, :article_id
  end
end
