select 
id as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status,
-- use macro, installed is cent, convert to dollar.
{{ cent_to_dollar('amount') }} as amount,
created as created_at
from {{source('stripe','stripe_payments')}}