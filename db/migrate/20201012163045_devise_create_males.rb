# frozen_string_literal: true

class DeviseCreateMales < ActiveRecord::Migration[6.0]
  def change
    create_table :males do |t|
      ## Database authenticatable
      t.string  :nickname,           null: false
      t.string  :age,                null: false
      t.date    :birth_date,         null: false
      t.integer :area_id,            null: false
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :males, :email,                unique: true
    add_index :males, :reset_password_token, unique: true
    # add_index :males, :confirmation_token,   unique: true
    # add_index :males, :unlock_token,         unique: true
  end
end
