# Sử dụng hình ảnh Python 3.10 chính thức từ Docker Hub
FROM python:3.10-slim-buster

# Đặt thư mục làm việc
WORKDIR /app

# Sao chép mã ứng dụng của bạn
COPY . /app

# Cài đặt các phụ thuộc
RUN pip install -r requirements.txt

# Lộ cổng fastapi sẽ chạy trên
EXPOSE 5000

# Lệnh để chạy ứng dụng fastapi
CMD ["python3", "app.py"]
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]