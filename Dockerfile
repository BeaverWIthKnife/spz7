# Базовий образ з Python
FROM python:3.10-slim

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо всі файли з локального каталогу в контейнер
COPY . .

# Встановлюємо залежності з requirements.txt
RUN pip install --no-cache-dir -r tests/requirements.txt

# Команда, яка виконується при запуску контейнера
CMD ["python", "app/main.py"]