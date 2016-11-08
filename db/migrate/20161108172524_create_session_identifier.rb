class CreateSessionIdentifier < ActiveRecord::Migration
  def change
    create_table :session_identifiers do |t|
      t.integer :user_id
      t.integer :authetication_token
      t.timestamp :expires_at
    end
  end
end
