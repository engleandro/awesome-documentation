# AWESOME DOCUMENTATION FOR APACHE SPARK

![apache-spark-icon](./artefacts/apache-spark-icon.png)

## REFERENCES
* [Apache Spark Official](https://spark.apache.org/)

## GETTINGS STARTED

**Apache Spark** is an **open-source distributed computing system** designed for fast and large-scale data processing. It provides a unified platform for **batch processing, real-time streaming, machine learning, and graph analytics**. Spark offers high-level APIs in **Java, Scala, Python, and R**, making it accessible to developers across various backgrounds.

### Spark Core Components

Spark consists of several core components:

- **Spark Core**: The base engine for parallel and distributed data processing.
- **Spark SQL**: A component for working with structured data and querying using SQL-like syntax.
- **Spark Streaming**: A component for processing real-time streaming data.
- **MLlib (Machine Learning Library)**: A scalable machine learning library for various algorithms like classification, regression, clustering, etc.
- **GraphX**: A library for graph processing and parallel graph computations.

### Spark Architecture

Spark follows a master-worker architecture, consisting of the following main components:

1. **Driver Program**: The process running the main() function of the application and creating the SparkContext.
2. **SparkContext**: The entry point for creating RDDs and coordinating the execution of parallel operations.
3. **Cluster Manager**: A external service for acquiring resources on the cluster (e.g., YARN, Mesos, Kubernetes).
4. **Worker Nodes**: Executors running on worker nodes to perform computations and storing data.

## Advantages of Spark

1. **Speed**: Spark's in-memory computation capability makes it significantly faster than traditional disk-based systems like Hadoop MapReduce.
2. **Ease of Use**: Spark provides a simple and expressive programming model that abstracts away the complexities of distributed computing.
3. **Generality**: Spark supports a wide range of workloads, including batch processing, streaming, machine learning, and graph processing.
4. **Fault Tolerance**: Spark's RDD (Resilient Distributed Dataset) abstraction provides fault tolerance by automatically recovering from failures and recomputing lost data partitions.