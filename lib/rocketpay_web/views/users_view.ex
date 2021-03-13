defmodule RocketpayWeb.UsersView do

  alias RocketPay.{Account, User}

  def render("create.json", %{user: %User{account: %Account{id: account_id, balance: balance}, id: id, nome: nome, nickname: nickname}}) do
    %{
      message: "User Created",
      user: %{
        id: id,
        nome: nome,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
