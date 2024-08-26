# Distributed Data Processing Pipeline for Lacrosse Game Analysis

This project involves creating a distributed data pipeline to process a **live game stream from a simulated lacrosse game.** The pipeline is designed to generate real-time box scores and update team and player statistics in a database upon game completion. This project was adapted from a technical assessment for a data engineer position, providing a realistic and challenging scenario for practicing data engineering skills.

## Project Overview

The objective of this project is to develop a comprehensive data pipeline using Apache Spark and other tools to process and analyze a simulated lacrosse game stream in a distributed environment. The project demonstrates the ability to work with multiple databases and data formats, as well as the skills required to build scalable and efficient data processing systems.

### Key Components

- **Data Pipeline**: Processes a simulated live game stream and generates real-time statistics.
- **Distributed Environment**: Uses Docker to simulate a distributed environment with multiple databases (MSSQL, Minio, MongoDB) and data processing tools (Apache Drill, Jupyter Lab).
- **Real-time Data Processing**: Converts game events into a JSON format for web developers to display live box scores.
- **Database Updates**: Updates team and player statistics in the database after the game is complete.

## Technologies Used

- **Apache Spark**: For data processing and analysis.
- **Docker**: To create a distributed environment simulating real-world data engineering tasks.
- **MSSQL, MongoDB, Minio**: To store and manage game data, player, and team statistics.
- **Apache Drill**: For SQL-based querying of structured and semi-structured data.
- **Python**: For scripting and automation.

## Project Structure

- **`/data`**: Contains the datasets used in the project, such as initial player and team data.
- **`/src`**: Source code for data processing scripts, including Spark and Python scripts for managing the data pipeline.
- **`/notebooks`**: Jupyter notebooks demonstrating step-by-step data processing, analysis, and visualization.
- **`/results`**: Output files, including JSON box scores and updated database snapshots.
- **`docker-compose.yaml`**: Configuration file for setting up the distributed environment.
- **`README.md`**: This document.

## Getting Started

### Prerequisites

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Apache Spark, Python, SQL, and working with distributed systems.

### Setup Instructions

1. Clone the repository and navigate to the project directory:

    ```bash
    git clone https://github.com/yourusername/project-name.git
    cd project-name
    ```

2. Start the distributed environment using Docker Compose:

    ```bash
    docker-compose up -d
    ```

3. Ensure all services (MSSQL, MongoDB, Minio, Drill, Jupyter) are running:

    ```bash
    docker-compose ps
    ```

4. Start the simulated game stream:

    ```bash
    docker-compose up -d gamestream
    ```

5. Check the logs to verify the game stream is running:

    ```bash
    docker-compose logs gamestream
    ```

## Usage

- **Data Processing**: Run the PySpark scripts in the `src` directory to process game data and generate real-time box scores.
- **Visualization**: Use Jupyter notebooks in the `notebooks` directory to visualize game data and analyze player and team performance.
- **Database Updates**: Run the provided scripts to update player and team statistics in the database after the game is over.

## Results

The project outputs real-time box scores in JSON format to a MongoDB collection, and updates team and player statistics in an MSSQL database upon game completion. The results can be used to create live game statistics pages and provide insights into player and team performance.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

Special thanks to Professor [Name] for the original concept and permission to adapt this project for a portfolio piece.

