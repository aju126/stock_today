class CreateJoinTablePortfolioStock < ActiveRecord::Migration[5.2]
  def change
    create_join_table :portfolios, :stocks do |t|
      t.index :portfolio_id
      t.index :stock_id
    end
  end
end
