require 'test_helper'

class UtenteTest < ActiveSupport::TestCase
  def setup
    @utente = Utente.new(nome: "esempio_utente", email: "esempio@gmail.com",
                         password:"password", password_confirmation: "password")
  end

  test "should be valid" do
    assert @utente.valid?
  end

  test "nome should be present" do
    @utente.nome = "  "
    assert_not @utente.valid?
  end

  test "email should be present" do
    @utente.email = " "
    assert_not @utente.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @utente.email = valid_address
      assert @utente.valid?
    end
  end

  test "email non valide" do
    not_valid_adresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com ]
    not_valid_adresses.each do |not_valid_address|
      @utente.email = not_valid_address
      assert_not @utente.valid?, "#{not_valid_address.inspect} dovrebbe essere invalida"
    end
  end

  test "email dovrebbe essere unica" do
    utente_duplicato = @utente.dup
    @utente.save
    assert_not utente_duplicato.valid?
  end

end
