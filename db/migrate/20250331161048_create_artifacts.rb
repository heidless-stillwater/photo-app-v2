class CreateArtifacts < ActiveRecord::Migration[7.2]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :picture
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
