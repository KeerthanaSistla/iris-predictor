FROM python:3.11-slim

WORKDIR /app

# Install system dependencies for compiling scientific packages
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    gfortran \
    libatlas-base-dev \
    liblapack-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install in 2 steps to ensure numpy is built first
COPY requirements.txt .

# Pre-install numpy and cython (prevents scikit-learn build failures)
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir cython numpy==1.26.4 && \
    pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

EXPOSE 10000

# Use gunicorn as the production server
CMD ["gunicorn", "-b", "0.0.0.0:10000", "app:app"]