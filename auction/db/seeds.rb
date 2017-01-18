
(1..5).each do |i|
  user = User.create!(
          name:   "Name #{i}",
          email:  "email #{i}")

  (1..4).each do |j|
    user.products.create!(
          title:        "user #{i} title #{j}",
          description:  "description #{j}",
          deadline:     rand(1..10.days).seconds.ago) #rand(1..10.days).seconds.from_now

    Bid.create!(
          amount:     rand(1..20),
          user_id:    i,
          product_id: j)
  end
end
