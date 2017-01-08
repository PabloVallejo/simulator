class InitSchema < ActiveRecord::Migration
  def up
    
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
    
    create_table "simulators", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
      t.string   "description"
    end
    
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end
