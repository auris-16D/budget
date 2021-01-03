class Account < ApplicationRecord
  belongs_to :user
  has_many :account_users
  has_many :transaction_headers

    def self.accounts_for(account_ids)
      accounts = Account.where(id: account_ids)
      accounts.sort_by{|e| e[:id]}
    end

    def self.accounts_for_user(user_id)
      account_users = AccountUser.where(user_id: user_id);
      # require 'pry'
      # binding.pry
      Account.where(user_id: user_id)
    end
end
