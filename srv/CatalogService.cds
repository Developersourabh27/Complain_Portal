using {myapp.db.master , myapp.db.transactional } from '../db/data-model';
// using { myapp.views.CDSViews as views } from '../db/CDSViews';


service CatalogService @(path:'CatalogService') {

// entity Employees as projection on master.Employees;
entity Department as projection on master.Department;
entity Complaints as projection on transactional.Complaints;

entity Complaints_Comments as projection on transactional.Complaints_Comments;
entity Complaints_Attachments as projection on transactional.Complaints_Attachments;
entity Complaint_Status_History as projection on transactional.Complaint_Status_History;


}