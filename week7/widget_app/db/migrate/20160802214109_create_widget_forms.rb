class CreateWidgetForms < ActiveRecord::Migration[5.0]
  def change
    create_table :widget_forms do |t|
      t.string :background_color
      t.string :titile_text

      t.timestamps
    end
  end
end
