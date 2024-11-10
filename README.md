# Distributed Data Processing Pipeline for Lacrosse Game Analysis

This project involves creating a distributed data pipeline to process a live game stream from a simulated lacrosse game. The pipeline is designed to generate real-time box scores and update team and player statistics in a database upon game completion. This project simulates real-world data engineering tasks, providing an opportunity to demonstrate proficiency in distributed systems, data processing, and database management.

## Project Overview

The objective of this project is to develop a comprehensive data pipeline using Apache Spark and other tools to process and analyze a simulated lacrosse game stream in a distributed environment. The pipeline enables real-time data processing and updates, supporting live game statistics display and post-game analysis.

### Key Components

- **Data Pipeline**: Processes a simulated live game stream and generates real-time statistics.
- **Distributed Environment**: Utilizes Docker to simulate a distributed environment with multiple databases (MSSQL, Minio, MongoDB) and data processing tools (Apache Drill, Jupyter Lab).
- **Real-time Data Processing**: Converts game events into a JSON format for web developers to display live box scores.
- **Database Updates**: Updates team and player statistics in the database after the game is complete.

## Technologies Used

- **Apache Spark**: For data processing and analysis.
- **Docker**: To create a distributed environment simulating real-world data engineering tasks.
- **MSSQL, MongoDB, Minio**: To store and manage game data, player, and team statistics.
- **Apache Drill**: For SQL-based querying of structured and semi-structured data.
- **Python**: For scripting and automation.
- **Jupyter Notebooks**: For interactive data processing and visualization.

## Project Structure

- **`/data`**: Contains the datasets used in the project, such as initial player and team data.
- **`/src`**: Source code for data processing scripts, including Spark and Python scripts for managing the data pipeline.
- **`/notebooks`**: Jupyter notebooks demonstrating step-by-step data processing, analysis, and visualization.
- **`/results`**: Output files, including JSON box scores and updated database snapshots.
- **`docker-compose.yaml`**: Configuration file for setting up the distributed environment.
- **`README.md`**: This document.

## Setup Instructions

### Prerequisites

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Apache Spark, Python, SQL, and working with distributed systems.

### Setup Steps

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

### Data Processing

- **Game Stream Data**: Use the PySpark scripts in the `src` directory to process game data and generate real-time box scores.
- **SQL Queries**: Utilize Apache Drill to query structured data from the MSSQL database and MongoDB collections.
- **Visualization**: Use Jupyter notebooks in the `notebooks` directory to visualize game data and analyze player and team performance.
- **Database Updates**: Run the provided scripts to update player and team statistics in the database after the game is over.

## Key Outcomes

The project successfully demonstrates several key outcomes:

1. **Real-time Box Score Generation**: The pipeline efficiently processed the simulated game stream data to generate real-time box scores in JSON format, which were written to a MongoDB collection. This feature supports live updates for web displays, showcasing the capability to handle real-time data streams.

2. **Accurate Data Aggregation and Transformation**: The PySpark scripts correctly aggregated and transformed game data, including shots, goals, and other player statistics, allowing for accurate and dynamic updates of game statistics as the game progresses.

3. **Seamless Database Integration and Updates**: The project successfully integrated with multiple databases (MSSQL, MongoDB, Minio) to manage data storage and retrieval. At the end of the game, the pipeline updated the team and player statistics in the MSSQL database. This demonstrated the ability to perform complex data operations and maintain data integrity across distributed systems.

4. **Automated Data Processing Workflow**: The combination of PySpark scripts into a single automated workflow allowed for seamless data processing from the game stream, ensuring multiple box score documents were generated throughout the game, and reflecting real-time game status.

5. **Scalability and Flexibility**: The project demonstrated the ability to scale data processing tasks and handle changes in data velocity (e.g., adjusting the game stream speed) without affecting the system’s stability, proving the flexibility and robustness of the pipeline.

### Example Outputs

- **Real-time Box Scores**: JSON documents written to MongoDB, providing live updates for web display, structured to include team scores, player statistics, and game status.
- **Updated Team and Player Statistics**: Stored in MSSQL with enhanced tables (`teams2` and `players2`) reflecting the latest game outcomes and allowing for historical data comparison.

## Challenges and Learnings

- **Managing Distributed Systems**: Effective use of Docker for setting up and managing a multi-service environment, overcoming challenges related to service orchestration and container networking.
- **Data Consistency and Integrity**: Ensuring data consistency across different databases and services, especially when handling real-time data streams and updates.
- **Real-Time Data Processing**: Handling real-time data streams required optimizing the Spark execution plan and using efficient data processing techniques.

## Acknowledgments

Special thanks to Professor Michael Fudge for the original concept and permission to adapt this project for a portfolio piece.
