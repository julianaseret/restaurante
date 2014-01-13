class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :clientes, index: true
      t.references :pratos, index: true
      t.references :bebidas, index: true

      t.timestamps
    end
  end
end
