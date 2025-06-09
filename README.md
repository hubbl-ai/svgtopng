docker image url: docker.io/renilative/svgtopng:latest

hosted in dockerized container on https://dashboard.render.com/

web serivice url: https://svgtopng-latest.onrender.com


Example of Curl command to convert svg to png :

curl --data-urlencode name@/Users/reni/Downloads/pie-chart-icon.svg --data-urlencode width=100 --data-urlencode height=100  -o image.png https://svgtopng-latest.onrender.com/convert