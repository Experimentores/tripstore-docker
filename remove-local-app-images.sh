#!/bin/bash
# repository/image-name:version
images=(
"tripstore-users-service"
"tripstore-orders-service"
"tripstore-trips-service"
"tripstore-shopping-carts-service"
"tripstore-cart-items-service"
"tripstore-products-service"
"tripstore-discovery-service"
"tripstore-config-service"
"tripstore-gateway-service"
)

for name in "${images[@]}"
do
  docker rmi "$name"
done

read -r -p "Press enter to continue..."
