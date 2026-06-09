-- ==========================================
-- PostgreSQL Data Engineering Assignment
-- Author: Tony Kamande
-- ==========================================

-- Create staging schema
-- CREATE SCHEMA staging;

-- Create employees table
CREATE TABLE  staging.employees (
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary NUMERIC(10,2) NOT NULL,
    hire_date DATE NOT NULL
);

-- Insert sample data
INSERT INTO staging.employees
(full_name, department, salary, hire_date)
VALUES
('John Doe', 'Engineering', 75000.00, '2023-01-15'),
('Mary Wanjiku', 'Finance', 68000.00, '2022-06-20'),
('Peter Mwangi', 'IT', 72000.00, '2023-03-10'),
('Jane Njeri', 'HR', 55000.00, '2021-11-01'),
('David Kimani', 'Marketing', 60000.00, '2024-01-05');

-- Verify data
SELECT * FROM staging.employees;