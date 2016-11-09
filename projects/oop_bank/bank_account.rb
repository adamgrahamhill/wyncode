class BankAccount
  @@open_min = 200

  def  initialize(open_bal, name)
    if @@open_min > open_bal
      raise ArgumentError
    else
      @open_balance = open_bal
      @name = name
      @balance = open_bal
    end
  end
  def balance
    @balance
  end
  def deposit(dep_amnt)
    @balance = @balance + dep_amnt
  end
  def withdrawl(wd_amnt)
    @balance = @balance - wd_amnt
  end
  def transfer(amount, dest_accnt)
    self.withdrawl(amount)
    dest_accnt.deposit(amount)
  end
  def self.change_min(min)
    @@open_min = min
  end
  def show_min
@@open_min
  end
end

p BankAccount
p BankAccount.change_min(500)
jimmy = BankAccount.new(5000, "jimmy")
p jimmy
