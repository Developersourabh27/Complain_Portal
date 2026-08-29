namespace myapp.commons;

type PhoneNumber : String(10) @assert.format: '^[6-9][0-9]{9}$';
type email : String(100) @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

type departmentname : String(20) @assert.enum: ['HR', 'IT', 'Finance', 'Sales', 'Marketing', 'Operations', 'Admin', 'Legal', 'R&D', 'Customer Support', 'Procurement', 'Logistics', 'Quality Assurance', 'Training & Development', 'Public Relations', 'Business Development', 'Strategy & Planning', 'Compliance & Risk Management', 'Innovation & Technology', 'Corporate Social Responsibility (CSR)'];
type sex : String(10) @assert.enum: ['Male', 'Female', 'Other'];

type Priority : String(10); 
type Status : String(10); 