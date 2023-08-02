class CreateWorldCupTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :world_cup_teams do |t|
      t.string :name

      t.timestamps
    end
  end
end
