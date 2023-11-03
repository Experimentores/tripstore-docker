#!/bin/bash
# repository/image-name:version
images=(
"yoimerdr/tripstore-users-service"
"yoimerdr/tripstore-orders-service"
"yoimerdr/tripstore-trips-service"
"yoimerdr/tripstore-shopping-carts-service"
"yoimerdr/tripstore-cart-items-service"
"yoimerdr/tripstore-products-service"
"yoimerdr/tripstore-discovery-service"
"yoimerdr/tripstore-config-service"
)

for name in "${images[@]}"
do
  new_name="${name##*/}"
  docker tag "$name" "$new_name"
  docker rmi "$name"
done

read -r -p "Press enter to continue..."
