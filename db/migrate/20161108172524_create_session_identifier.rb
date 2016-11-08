class CreateSessionIdentifier < ActiveRecord::Migration
  def change
    create_table :session_identifiers do |t|
      t.integer :user_id
      t.string :authentication_token
      t.timestamp :expires_at
    end

    add_index(:session_identifiers,:authentication_token)
  end
end
