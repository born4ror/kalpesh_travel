class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title
      t.string :t_color
      t.string :t_font
      t.string :t_font_size
      t.string :body
      t.string :b_color
      t.string :b_font
      t.string :b_font_size
      t.string :background_color

      t.timestamps null: false
    end
  end
end
