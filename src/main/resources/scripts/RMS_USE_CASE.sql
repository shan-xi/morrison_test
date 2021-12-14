/*
Use Case 1：
Davis is a candidate , he has two resumes (A,B) in RMS.
Resume A has two template format (A1,A2).
Resume B has one template format (B1).
*/
select t1.user_name, rms_resume.resume_id, rms_template.template_id
  from RMS_RESUME rms_resume, RMS_TEMPLATE rms_template, RMS_RESUME_TEMPLATE rms_resume_template, (
      select rms_user.user_id , rms_user.user_name
        from RMS_USER rms_user, RMS_ROLE rms_role, RMS_USER_ROLE rms_user_role
       where rms_user.user_id = rms_user_role.user_id
         and rms_role.role_id = rms_user_role.role_id
         and rms_user.user_name = 'Davis'
         and rms_role.role_name = 'candidate') t1
 where rms_resume.user_id = t1.user_id
   and rms_resume_template.resume_id = rms_resume.resume_id
   and rms_resume_template.template_id = rms_template.template_id;

/*
Use Case 2：
Alan is a hunter, he will login RMS for searching candidate.
He wants to find a list for who has five-experiences in the same company.
List has three column: name, company, experience-year
Sample: Davis, MorrisonExpress, 5
*/
select distinct rms_user.user_name, rms_workexp.company, rms_workexp.experience_year
  from RMS_WORKEXP rms_workexp, RMS_RESUME rms_resume, RMS_USER rms_user
 where rms_workexp.company = 'MorrisonExpress' and
       rms_workexp.experience_year >= 5 and
       rms_workexp.resume_id = rms_resume.resume_id and
       rms_resume.user_id = rms_user.user_id;