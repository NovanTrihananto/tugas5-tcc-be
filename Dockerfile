# Gunakan base image Node.js yang ringan
FROM node:20-alpine
# Set working directory
WORKDIR /app
# Install hanya dependensi produksi
COPY . .
RUN npm install
# Perintah untuk menjalankan aplikasi
CMD ["node", "index.js"]
