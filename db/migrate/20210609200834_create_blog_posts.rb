class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :author
      t.string :outlet
      t.integer :rating
      t.text :opinion

      t.timestamps
    end
  end
end
