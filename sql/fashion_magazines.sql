select customers.customer_name as customers, concat('$', cast(sum(price_per_month*subscription_length) as varchar(10))) as  amount_due from customers inner join orders on orders.customer_id = customers.customer_id inner join subscriptions on orders.subscription_id = subscriptions.subscription_id where orders.order_status='unpaid'and subscriptions.description = 'Fashion Magazine' group by customers.customer_name