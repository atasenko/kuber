### Задание 1. Создать Deployment и обспечить доступ к репликам приложения из другого Pod.  
1. Создан Deployment приложения из двух контейнеров - [nginx-multitool](deployments/nginx-multitool.yaml).  
На выходе один под:  
![1](img/kuber03_01.png)  
Проблема с пересекающимися портами решена использованием версии multitool для openshift слушающей на других портах.  
2. Изменил параметр replicas на 2, выполнил k apply -f.  
![2](img/kuber03_02.png)  
3. Количество продемонстрировал выше.  
4. Создан сервис [nginx-mt](services/nginx-multitool.yaml)  
Доступ к репликам через сервис работает. Для упрощения процесса запускаю curl с удаленной ВМ в Yandex Cloud на локальный IP сервиса:  
![service](img/kuber03_03.png)  
5. Создан отдельный под с приложением [multitool-standalone](pods/multitool.yaml), при помощи curl можно связаться с ранее созданными приложениями:  
![pod-services](img/kuber03_04.png)  

### Задание 2. Создать Deployment и обеспечить старт основного контейнера при выполнении условий.  
1. Создан Deployment [nginx-probe](deployments/nginx-probe.yaml) с init-контейнером ожидающим появления DNS имени сервиса.  
2. Nginx не стартует, busybox в логах выводит указанное сообщение, ждет доступности сервиса.  
![not ready](img/kuber03_05.png)  
3. [Сервис](services/nginx-probe.yaml) создан, запущен, runtime-контейнер запустился.  
![ready](img/kuber03_06.png)  
