class Pedido < ActiveRecord::Base
  belongs_to :clientes, :class_name => 'Cliente'
  belongs_to :pratos, :class_name => 'Prato'
  belongs_to :bebidas, :class_name => 'Bebida'

  def preco
    self.pratos.preco + self.bebidas.preco
  end
end
