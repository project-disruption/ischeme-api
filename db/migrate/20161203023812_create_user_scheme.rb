class CreateUserScheme < ActiveRecord::Migration[5.0]
    def change
        create_table :user_schemes do |t|
            t.references :user, foreign_key: true
            t.references :scheme, foreign_key: true
        end
    end
end
