insert into RMS_USER(user_name) values('Davis');
insert into RMS_ROLE(role_name) values('candidate');
insert into RMS_ROLE(role_name) values('hunter');
insert into RMS_USER(user_name) values('Jack');
insert into RMS_USER_ROLE(user_id, role_id) values(1,1);
insert into RMS_USER_ROLE(user_id, role_id) values(2,2);
insert into RMS_TEMPLATE(template_name) values('A');
insert into RMS_TEMPLATE(template_name) values('B');
insert into RMS_RESUME(user_id, resume_name) values(1, 'R1');
insert into RMS_RESUME(user_id, resume_name) values(1, 'R2');
insert into RMS_RESUME(user_id, resume_name) values(1, 'R3');
insert into RMS_RESUME_TEMPLATE(resume_id, template_id) values(1, 1);
insert into RMS_RESUME_TEMPLATE(resume_id, template_id) values(2, 1);
insert into RMS_RESUME_TEMPLATE(resume_id, template_id) values(3, 2);
insert into RMS_WORKEXP(company, experience_year, resume_id) values('MorrisonExpress', 5, 1);
insert into RMS_WORKEXP(company, experience_year, resume_id) values('MorrisonExpress', 5, 2);