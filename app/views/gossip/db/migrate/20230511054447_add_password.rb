def change
    add_column :users, :password_digest, :string
end