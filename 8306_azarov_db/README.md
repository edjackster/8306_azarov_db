# Вариант задания 1
- Проверка на pep8
    - Производится в контейнере tester
- Анализ по 10 существующим критериям
    - Прописаны в pylintrc
- Проверка на коды возврата
    - Проверяются коды 200 (OK), 401 (Unauthorized), 404 (Not Found), 405 (Method Not Allowed)
- Заполнение формы авторизации (включая проверку верстки страницы)
    - Не реализовано
- Внешний доступ в SSH контейнеры - в app - по публичному ключу (существующему)
    - Не реализовано
- Вывод логов (docker log + файл, оба потока)
    - Логи записываются в файл ./logs/logs.txt на хосте
	- Логи отображаются в консоли по команде: 
	```docker logs 8306_azarov_db-tester-1```
- Передача параметров - порт для веб-сервера
	- Порт задается настройкой параметра PORT в файле .env на хосте
- Ограничения ресурсов - ОЗУ
    - ОЗУ для app ограничена в 110 мегабайт

# Сборка и поднятие контейнеров
```
docker compose build
```
```
docker compose up
```

# Запуск тестов
Запуск всех тестов
```
docker exec -it 8306_azarov_db-tester-1 sh tests/start-all.sh
```

Запуск pep8
```
docker exec -it 8306_azarov_db-tester-1 sh tests/start-pep8.sh
```

Запуск Integration
```
docker exec -it 8306_azarov_db-tester-1 sh tests/start-integration.sh
```

Запуск Pylint
```
docker exec -it 8306_azarov_db-tester-1 sh tests/start-pylint.sh
```