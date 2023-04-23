# Use the official MySQL image as the base image
FROM mysql:latest

# Set environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD=motomami
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=motomami
ENV MYSQL_DATABASE=covid_db


# Copy SQL scripts and CSV files to the container
COPY data/covid_db.sql /docker-entrypoint-initdb.d/covid_db.sql
COPY data/covid_deaths.csv /docker-entrypoint-initdb.d/covid_deaths.csv
COPY data/covid_vaccination.csv /docker-entrypoint-initdb.d/covid_vaccination.csv


