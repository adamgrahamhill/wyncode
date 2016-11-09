require './bank_account'


describe BankAccount do
  it "is created with an opening balance and the name of the account holder" do
    account = BankAccount.new(500, "Sarah")
    expect(account).to be_a(BankAccount)
  end
  it "can report it's balance" do
    account = BankAccount.new(500, "Adam")
    expect(account.balance).to eq(500)
  end
  it "can deposit money" do
    account = BankAccount.new(500,"Adam")
    account.deposit(100)
    expect(account.balance).to eq(600)
  end
  it "can make a withdrawl" do
    account = BankAccount.new(500,"Adam")
    account.withdrawl(250)
    expect(account.balance).to eq(250)
  end
  it "can transfer funds to another bank account" do
    adam = BankAccount.new(1000, "Adam")
    moshe = BankAccount.new(7000, "Moshe")
    adam.transfer(1000, moshe)
    (expect(adam.balance).to eq(0)) && (expect(moshe.balance).to eq(8000))
  end
  it "has a min opening balance" do
    expect { BankAccount.new(100, "Sarah") }.to raise_error(ArgumentError)
end

  it "allows change of min open balance" do
    BankAccount.change_min(500)
    expect { BankAccount.new(450, "Sarah") }.to raise_error(ArgumentError)
    expect { BankAccount.new(500, "Sarah") }.to_not raise_error(ArgumentError)
  end
end
