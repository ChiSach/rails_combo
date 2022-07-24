class CreateSayGreetings < ActiveRecord::Migration[7.0]
  def change
    create_table :say_greetings do |t|
      t.string :url, limit: 50
      t.text :greeting_text

      t.timestamps
    end
  end
end
