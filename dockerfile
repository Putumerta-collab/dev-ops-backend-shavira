# Step 1: Pilih image dasar Python
FROM python:3.10

# Step 2: Tetapkan direktori kerja di dalam container
WORKDIR /usr/src/app

# Step 3: Salin file requirements.txt dan install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Salin semua file proyek ke direktori kerja di dalam container
COPY . .

# Step 5: Jalankan aplikasi
CMD ["python", "main.py"]
