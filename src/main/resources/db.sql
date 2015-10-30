

delete from roles;
delete from users;

INSERT INTO users (id,username,password) VALUES
 (1,'user','123123');

INSERT INTO roles (role_id,role_name,user_id) VALUES 
 (1,'ROLE_USER',1);
