namespace myapp.views;
using{myapp.db.master,myapp.db.transactional} from './data-model';



context CDSViews {

    define view ![EmployeeDetailsView] as  select from master.Employees
    {
        
        firstname,
        lastname,
        phone,
        email,
        department.departmentname as departmentname,
        department.HOD as HOD
    }
define view ComplaintsView
    as select from transactional.Complaints
{
    key ID,

    title as Complaint_Title,
    description,
    date as Date_of_Complaint,

    raisedby,
    assignedto,
    resolved_at,

    status,
    priority
};  

define view ComplaintCommentsDetails
    as select from transactional.Complaints_Comments
{
    ID,

    comment,
    date,

    complaint.ID as complaintId,
    complaint.title as complaintTitle,

    complaint.raisedby.employeeId as raisedbyEmployeeId,
    complaint.raisedby.firstname as raisedbyFirstname,
    complaint.raisedby.lastname as raisedbyLastname
};
}

