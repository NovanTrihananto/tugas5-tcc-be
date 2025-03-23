# Gunakan base image Node.js yang ringan
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json terlebih dahulu
COPY package.json package-lock.json ./

# Install hanya dependensi produksi
RUN npm install --only=production

# Copy seluruh kode ke dalam container
COPY . .

# Ekspos port 5000
EXPOSE 5000

# Perintah untuk menjalankan aplikasi
CMD ["node", "index.js"]
