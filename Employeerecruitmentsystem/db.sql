-- Create the Candidate table
CREATE TABLE Candidate (
  candidate_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  resume TEXT,
  -- Additional candidate attributes
  -- ...
);

-- Create the Job table
CREATE TABLE Job (
  job_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  requirements TEXT,
  application_deadline DATE,
  -- Additional job attributes
  -- ...
);

-- Create the Application table
CREATE TABLE Application (
  application_id INT PRIMARY KEY AUTO_INCREMENT,
  candidate_id INT,
  job_id INT,
  status ENUM('Submitted', 'Under Review', 'Rejected', 'Selected'),
  FOREIGN KEY (candidate_id) REFERENCES Candidate(candidate_id),
  FOREIGN KEY (job_id) REFERENCES Job(job_id),
  -- Additional application attributes
  -- ...
);

-- Create the Interview table
CREATE TABLE Interview (
  interview_id INT PRIMARY KEY AUTO_INCREMENT,
  date DATE,
  time TIME,
  location VARCHAR(100),

