-- Indexes

CREATE INDEX idx_email ON users(email);
CREATE INDEX idx_composite ON users(name, email);
