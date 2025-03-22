# Вказуємо базовий образ
FROM python:3.10-slim

# Вказуємо робочий каталог всередині контейнера
WORKDIR /app

# Копіюємо файл залежностей до контейнера
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо всі файли проекту в контейнер
COPY . .

# Відкриваємо порт для FastAPI
EXPOSE 8000

# Команда для запуску FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
