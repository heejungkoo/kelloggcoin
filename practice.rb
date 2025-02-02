# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇


names = ["ben", "brian", "evan", "anthony"]

# initialise wallet
wallet = []
for i in 0...names.size
  wallet[i] = {"username" => names[i], "balance" => 0}
end

#wallet = [
#  { "username" => "ben", "balance" => 0 },
#  { "username" => "brian", "balance" => 0 },
#  { "username" => "evan", "balance" => 0 },
#  { "username" => "anthony", "balance" => 0 }
#]

# calculate the transaction results
for i in 0...blockchain.size
  for j in 0...names.size
    if blockchain[i]["from_user"] == names[j]
      wallet[j]["balance"] = wallet[j]["balance"] - blockchain[i]["amount"]
    elsif blockchain[i]["to_user"] == names[j]
      wallet[j]["balance"] = wallet[j]["balance"] + blockchain[i]["amount"]
    end
  end
end

# print the results out
for i in 0...names.size
  puts names[i].capitalize + "'s KelloggCoin balance is " + wallet[i]["balance"].to_s
end