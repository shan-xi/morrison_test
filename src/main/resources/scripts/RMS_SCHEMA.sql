-- user table
CREATE TABLE RMS_USER(
    user_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    user_name VARCHAR2(100) NOT NULL,
    PRIMARY KEY(user_id)
);
CREATE INDEX RMS_USER_IDX_1 ON RMS_USER(user_name);

-- role table
CREATE TABLE RMS_ROLE(
    role_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    role_name VARCHAR2(100) NOT NULL,
    PRIMARY KEY(role_id)
);
CREATE INDEX RMS_ROLE_IDX_1 ON RMS_ROLE(role_name);

-- user role relation table
CREATE TABLE RMS_USER_ROLE(
    user_id NUMBER NOT NULL,
    role_id NUMBER NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES RMS_USER (user_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES RMS_ROLE (role_id) ON DELETE CASCADE
);

-- resume table
CREATE TABLE RMS_RESUME(
    resume_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    resume_name VARCHAR2(100) NOT NULL,
    user_id NUMBER NOT NULL,
    PRIMARY KEY(resume_id),
    FOREIGN KEY (user_id) REFERENCES RMS_USER (user_id) ON DELETE CASCADE
);

-- template table
CREATE TABLE RMS_TEMPLATE(
    template_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    template_name VARCHAR2(100) NOT NULL,
    PRIMARY KEY(template_id)
);

-- resume template relation table
CREATE TABLE RMS_RESUME_TEMPLATE(
    resume_id NUMBER NOT NULL,
    template_id NUMBER NOT NULL,
    PRIMARY KEY (resume_id, template_id),
    FOREIGN KEY (resume_id) REFERENCES RMS_RESUME (resume_id) ON DELETE CASCADE,
    FOREIGN KEY (template_id) REFERENCES RMS_TEMPLATE (template_id) ON DELETE CASCADE
);

-- work experience table
CREATE TABLE RMS_WORKEXP(
    experience_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    company VARCHAR2(100) NOT NULL,
    experience_year NUMBER NOT NULL,
    resume_id NUMBER NOT NULL,
    FOREIGN KEY (resume_id) REFERENCES RMS_RESUME (resume_id) ON DELETE CASCADE,
    PRIMARY KEY(experience_id)
);
CREATE INDEX RMS_WORKEXP_IDX_1 ON RMS_WORKEXP(company, experience_year);

-- autobiography table
CREATE TABLE RMS_AUTOBIOGRAPHY(
    autobiography_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    content CLOB NOT NULL,
    resume_id NUMBER NOT NULL,
    FOREIGN KEY (resume_id) REFERENCES RMS_RESUME (resume_id) ON DELETE CASCADE,
    PRIMARY KEY(autobiography_id)
);

-- permission table
CREATE TABLE RMS_PERMISSION(
    permission_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    permission_name VARCHAR2(10) NOT NULL,
    PRIMARY KEY(permission_id)
);

-- role permission relation table
CREATE TABLE RMS_ROLE_PERMISSION(
    role_id NUMBER NOT NULL,
    permission_id NUMBER NOT NULL,
    PRIMARY KEY (role_id, permission_id),
    FOREIGN KEY (role_id) REFERENCES RMS_ROLE (role_id) ON DELETE CASCADE,
    FOREIGN KEY (permission_id) REFERENCES RMS_PERMISSION (permission_id) ON DELETE CASCADE
);