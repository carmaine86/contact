module CustomersHelper
def join_comments(customer)
    customer.comments.map { |t| t.body }.join(", ")
  end
end
