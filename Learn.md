# AI-Powered Monitoring and Alerting Systems

### **1. Set Up a Local Environment**
*  **Using Docker**
 Spin up containers for services like Nginx, MySQL, or any other application, which will serve as the targets for monitoring.

    * **Create a Docker Compose File**
        * Create a `docker-compose.yml` file in that directory: [Yaml file](docker-compose.yml)

        * Start Your Containers: `docker-compose up -d`
        * Verify the Containers are running: `docker ps`
        ![Running Container](img/containers.png)

        * **Check Nginx Configuration and Document Root Permissions:** Ensure the files in ./nginx/html are accessible by Nginx. On Windows: 
            * Right-click the html folder in the project directory, select `Properties`, and navigate to the `Security` tab.

            * Ensure that the user running the Docker container  has Read & execute, List folder contents, and Read permissions for the html directory.
        * **Ensure Files Are Present:** Ensure there is an index.html (or another file) in the folder you’ve mapped to /usr/share/nginx/html. <mark>Without it, Nginx will return a 403 error if there's nothing to serve.</mark>
            * Create a simple index.html file inside the nginx/html directory:

        ![Nginx](img/WorkingNginx.png)
    
    * **Connect to the database using a MySQL client:**
        * Connect to MySQL Using Workbench: 
            * Open MySQL Workbench.

            * Click on "MySQL Connections" and then click the "+" icon to add a new connection.
        * Fill in the Connection Information:
            * Connection Name: (any name you like, e.g., `Docker MySQL`)
            * Hostname: `localhost`
            * Port: `3306`
            * Username: `devopsuser`
            * Password: `devopspassword`
        * Test the Connection: Click "Test Connection" to make sure it works. If successful, proceed
        ![](img/SQL.png)
        * Run SQL Queries
        Create a new query tab in MySQL Workbench.

Run SQL queries like this to create a table or insert data:

```sql
-- Create a new database
CREATE DATABASE my_devops_db;

-- Select the new database to use
USE my_devops_db;

-- Create a new table named "students"
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100)
);

-- Insert some data into the "students" table
INSERT INTO students (name, course) VALUES ('John Doe', 'DevOps');
INSERT INTO students (name, course) VALUES ('Jane Smith', 'Cloud Engineering');

```

INSERT INTO students (name, course) VALUES ('John Doe', 'DevOps');
Monitor the database by checking its status, running queries, or viewing data in the tables.