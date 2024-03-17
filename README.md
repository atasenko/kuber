### Задание 1. Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу.  
1. Создан Deployment приложения [nginx-mt](deployments/nginx-mt.yaml) из контейнеров nginx и multitool.  
2. Создан ConfigMap [nginx-mt-config](configmaps/nginx-mt.yaml) содержащий два ключа: порт для multitool и содержимое стартовой страницы nginx. Проблема решена использованием порта 1180.  
3. Для простоты демонстрации сразу создан и сервис [nginx-mt](services/nginx-mt.yaml). Podы стартовали, оба контейнера работают.  
4. Создана простая веб-страница (еще в configmap), подключена к nginx как /usr/share/nginx/html/index.html. Работает.  
![tada!](img/kuber2_3_01.png)

### Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS.  