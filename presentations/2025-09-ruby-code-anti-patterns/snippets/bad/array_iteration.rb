users = ["Alice", "Bob", "Charlie"]
result = []
for i in 0..users.length-1
  result.push(users[i].upcase)
end

# => ["ALICE", "BOB", "CHARLIE"]