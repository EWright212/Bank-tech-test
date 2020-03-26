require 'account'

describe 'user can make a deposit' do
  it 'user makes one deposit' do
    account = Account.new
    expect(account.make_deposit(100.00, "01/01/2020")).to eq(["01/01/2020 || 100.00 || || 100.00"])
  end
  it 'user makes one deposit and all transactions saved' do
    account = Account.new
    expect(account.make_deposit(200.00, "02/01/2020")).to eq(["02/01/2020 || 200.00 || || 200.00"])
    expect(account.all_transactions).to eq(["02/01/2020 || 200.00 || || 200.00"])
  end
  it 'user makes one deposit and balance changed' do
    account = Account.new
    expect(account.balance).to eq(0)
    expect(account.make_deposit(200.00, "02/01/2020")).to eq(["02/01/2020 || 200.00 || || 200.00"])
    expect(account.balance).to eq(200.0)
  end
end
