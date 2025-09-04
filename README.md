# pyeutl-compose
Dockerized pyeutl

This project provides a Docker Compose setup to run the  [pyeutl](https://github.com/jabrell/pyeutl) package in a containerized environment.

# Installation Instructions
1. clone this repository:
```bash
git clone https://github.com/realmosn/pyeutl-compose
cd pyeutl-compose
```
1. PyEUTL is included as a Git submodule:
```bash
git submodule init
git submodule update
```
2. Run the following command to start the container:
```bash
docker-compose up -d --build
```

---
Disclaimer: This project was developed as part of my Bachelor's Thesis titled "Carbon Pricing and Firm Size: Differential Impacts of EU ETS Phase IV Reforms on SMEs and Large Firms in Germany’s Emission-Intensive Industries".