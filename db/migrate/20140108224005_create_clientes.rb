class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :endereco
      t.date :data_nascimento

      t.timestamps
    end
  end
end
