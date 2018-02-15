class CreateTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :trackings do |t|
      t.text :page_url
      t.text :video_url

      t.timestamps
    end
  end
end
