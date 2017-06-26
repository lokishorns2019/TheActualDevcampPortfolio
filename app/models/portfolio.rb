class Portfolio < ApplicationRecord
    validates_presence_of :title, :body
    
    def self.what
        where(body: 'What fjkdsal fhdslhs hahaha g elit, sed do eiusmod tempor.')
    end
    
    scope :ruby_on_rails_portfolio_items, -> { where(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.") }
end
