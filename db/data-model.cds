using { cuid } from '@sap/cds/common';
using { myapp.commons as commons } from './Commons';

namespace myapp.db;



context master {

    // Employee Master
    entity Employees : cuid {

        employeeId : String(20);

        firstname  : String(100);
        lastname   : String(100);

        phone      : commons.PhoneNumber;
        email      : String(100);

        
        department : Association to one Department;
    }


    // Department Master
    entity Department : cuid {

        departmentname : String(100);
        HOD            : String(100);
    }
}



context transactional {

    entity Complaints : cuid {

        title       : String(100);
        description : String(500);

        status      : commons.Status;
        priority    : commons.Priority;

        date        : Date;


        

        raisedby : Association to one master.Employees;

        assignedto : Association to one master.Employees;


        resolved_at : Timestamp;
        closed_at   : Timestamp;
        comments : Composition of many Complaints_Comments
            on comments.complaint = $self;



        attachments : Composition of many Complaints_Attachments
            on attachments.complaint = $self;


        
        statusHistory : Composition of many Complaint_Status_History
            on statusHistory.complaint = $self;
    }


    

    entity Complaints_Comments : cuid {

        comment : String(500);

        date : Timestamp;

        
        complaint : Association to one Complaints;

        
        commentedby : Association to one master.Employees;
    }


    
    entity Complaints_Attachments : cuid {

        attachment : String(500);

        date : Timestamp;

       
        complaint : Association to one Complaints;

        
        attachedby : Association to one master.Employees;
    }


    
        
    entity Complaint_Status_History : cuid {

        status : commons.Status;

        date : Timestamp;

        
        complaint : Association to one Complaints;

        
        updatedby : Association to one master.Employees;
    }
}