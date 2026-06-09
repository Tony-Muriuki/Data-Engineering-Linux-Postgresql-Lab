# Linux & PostgreSQL Data Engineering Assignment

## Overview

This repository contains my submission for a Linux and PostgreSQL Data Engineering assignment. The project demonstrates practical skills in Linux server administration, PostgreSQL database management, file transfers using SCP, GitHub documentation, and technical writing.

## Objectives

The assignment involved:

- Connecting to a remote Linux server using SSH
- Creating and managing Linux users
- Installing and configuring PostgreSQL
- Creating and managing databases and schemas
- Generating and loading sample data
- Practicing Linux commands
- Demonstrating file transfers using SCP
- Documenting all activities in GitHub
- Writing and publishing a technical article

---

## Server Access

Connected to the remote server using SSH.

### Command Used

```bash
ssh root@159.65.222.96
```

### Screenshot

![SSH Login](screenshots/ssh-login.png)

---

## Linux User Creation

Created a Linux user named `tonym`.

### Command Used

```bash
adduser tonym
```

### Verification

```bash
id tonym
```

### Screenshot

![User Creation](screenshots/user-created.png)

---

## PostgreSQL Setup

### Verify PostgreSQL Installation

```bash
psql --version
```

### Check PostgreSQL Service Status

```bash
systemctl status postgresql
```

### Screenshot

![PostgreSQL Version](screenshots/postgres-version.png)

---

## Database Creation

Created a PostgreSQL database named after the Linux username.

### Command

```sql
CREATE DATABASE tonym;
```

### Screenshot

![Database Created](screenshots/database-created.png)

---

## Schema Creation

Created a schema named `staging`.

### Command

```sql
CREATE SCHEMA staging;
```

### Screenshot

![Schema Created](screenshots/schema-created.png)

---

## Sample Dataset

Created an employee dataset within the staging schema.

### Table Creation

```sql
CREATE TABLE staging.employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    hire_date DATE
);
```

### Sample Data

```sql
INSERT INTO staging.employees
(full_name, department, salary, hire_date)
VALUES
('John Doe', 'Engineering', 75000, '2023-01-15'),
('Mary Wanjiku', 'Finance', 68000, '2022-06-20'),
('Peter Mwangi', 'IT', 72000, '2023-03-10'),
('Jane Njeri', 'HR', 55000, '2021-11-01'),
('David Kimani', 'Marketing', 60000, '2024-01-05');
```

### Verify Data

```sql
SELECT * FROM staging.employees;
```

### Screenshot

![Data Inserted](screenshots/data-inserted.png)

---

## Linux Commands Practice

The following Linux commands were executed and documented during the assignment:

| Command | Purpose |
|----------|----------|
| pwd | Display current directory |
| ls | List directory contents |
| ls -la | Detailed directory listing |
| cd | Change directory |
| mkdir | Create directory |
| rmdir | Remove directory |
| touch | Create file |
| cp | Copy files |
| mv | Move files |
| rm | Remove files |
| cat | Display file contents |
| less | View file contents |
| head | View beginning of file |
| tail | View end of file |
| grep | Search text |
| find | Search files |
| chmod | Change permissions |
| chown | Change ownership |
| whoami | Display current user |
| id | Display user information |
| uname -a | System information |
| df -h | Disk usage |
| free -m | Memory usage |
| ps aux | Running processes |
| top | System monitoring |
| ping | Network connectivity |
| ssh | Remote access |
| scp | Secure file transfer |
| systemctl | Service management |
| history | Command history |

### Screenshot

![Linux Commands](screenshots/linux-commands.png)

---

## SCP File Transfers

### Upload File from Local Machine to Server

```bash
scp sample.csv tonym@159.65.222.96:/home/tonym/
```

### Download File from Server to Local Machine

```bash
scp tonym@159.65.222.96:/home/tonym/sample.csv .
```

### Screenshots

![SCP Upload](screenshots/scp-upload.png)

![SCP Download](screenshots/scp-download.png)

---

## SQL Scripts

All SQL scripts used during the assignment are available in:

```text
sql/setup.sql
```

---

## Repository Structure

```text
linux-postgresql-data-engineering-assignment/
│
├── README.md
├── screenshots/
│   ├── ssh-login.png
│   ├── user-created.png
│   ├── postgres-version.png
│   ├── database-created.png
│   ├── schema-created.png
│   ├── data-inserted.png
│   ├── scp-upload.png
│   ├── scp-download.png
│   └── linux-commands.png
│
├── sql/
│   └── setup.sql
│
├── linux_commands/
│   └── commands.md
│
└── blog/
    └── article-link.md
```

---

## Blog Article

**Title:** Linux Fundamentals for Data Engineering

Published Article:

[Insert Blog URL Here]

---

## Key Skills Demonstrated

- Linux Administration
- SSH and SCP Operations
- User Management
- PostgreSQL Installation and Configuration
- Database and Schema Management
- SQL Data Loading
- GitHub Documentation
- Technical Writing

---

## Lessons Learned

Through this assignment, I gained hands-on experience in:

- Managing Linux servers remotely
- Creating and administering PostgreSQL databases
- Working with schemas and structured data
- Performing secure file transfers using SCP
- Documenting technical work professionally using GitHub
- Writing technical content for a data engineering audience

---

## Author

**Tony Kamande**

Data Engineering Assignment Submission
