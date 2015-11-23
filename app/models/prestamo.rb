class Prestamo < ActiveRecord::Base
  belongs_to :user
  belongs_to :libro
  belongs_to :prestamo_estado
end

  def add_libro(libro_id)

    current_item = line_items.find_by(libro_id: libro_id)

    if current_item

      current_item.quantity += 1

    else

      current_item = line_items.build(libro_id: libro_id)

    end

    current_item

  end

