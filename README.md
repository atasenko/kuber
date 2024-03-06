### Задание 1. Создать Deployment и обспечить доступ к репликам приложения из другого Pod.  
1. Создан Deployment приложения из двух контейнеров - [nginx](deployments/nginx.yaml) и [multitool](deployments/multitool.yaml).  
На выходе по одному поду:  
![1](img/kuber03_01.png)  
2. После запуска изменил параметр replicas в обоих деплойментах на 2, выполнил k replace -f для каждого манифеста.  
![2](img/kuber03_02.png)  
3. Количество продемонстрировал выше.  
4. Манифесты сервисов (как и деплойменты) можно было писать в один файл, но для удобства ссылок вот отдельные: 
[nginx](services/nginx.yaml), [multitool](services/multitool.yaml)  
Доступ к репликам через сервисы работает. Для упрощения процесса запускаю curl с удаленной ВМ в Yandex Cloud на локальные IP сервисов:  
![services](img/kuber03_03.png)
5. Создан отдельный под с приложением [multitool-standalone](pods/multitool.yaml), при помощи curl можно связаться с ранее созданными сервисами:  
![pod-services](img/kuber03_04.png)  

### Задание 2. Создать сервис и подключить его к Pod.  
