class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :endereco
      t.date :data_nascimento
      t.string :carteira_trabalho
      t.string :cpf
      t.string :rg
      t.decimal :salario

      t.timestamps
    end
  end
end
