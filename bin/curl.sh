create_table() {
 curl -X POST ^
      -H "Content-Type: application/json" ^
      -d @bin/table.json ^
      http://localhost:3000/tables
}

create_order() {
 curl -X POST ^
      -H "Content-Type: application/json" ^
      -d @bin/order.json ^
      http://localhost:3000/tables/1/orders
}