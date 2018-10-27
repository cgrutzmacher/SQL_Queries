SELECT invoice.customername, product.description,   
product.listPrice, lineitem.quantity, (COALESCE(product.listprice)*lineitem.quantity) as subtotal
FROM product
join lineitem on product.id = lineitem.productid
join invoice on lineitem.invoiceid = invoice.id;