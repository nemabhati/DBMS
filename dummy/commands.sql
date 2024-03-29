-- prepare for new batch

insert into batch values (1, 2021, 1), (2, 2021, 2), (3, 2021, 3);

insert into student values
('2021csb1113', 'John', '2021csb1113@iitrpr.ac.in', 1),
('2021csb1068', 'Jim', '2021csb1068@iitrpr.ac.in', 1),
('2021csb0000', 'Jonny', '2021csb0000@iitrpr.ac.in', 1),
('2021eeb1000', 'Kim', '2021eeb1000@iitrpr.ac.in', 2),
('2021eeb1001', 'Peter', '2021eeb1001@iitrpr.ac.in', 2),
('2021meb0001', 'Harry', '2021meb0001@iitrpr.ac.in', 3),
('2021meb0000', 'Neel', '2021meb0000@iitrpr.ac.in', 3);

insert into advisor values
('2015csp0001', 1),
('2015csp0002', 2),
('2010eep0003', 3);

-- new semester begins
call start_add(1, 2021);

call add_offering('CS201', 1); -- run by 2015csp0001
call add_constraints(1, 1, 7);
call add_constraints(1, 2, 7);
call add_constraints(1, 3, 7);

call add_offering('CS202', 1); -- run by 2010eep0003
call add_constraints(2, 1, 7);
call add_constraints(2, 2, 7);
call add_constraints(2, 3, 7);

call add_offering('CS203', 1); -- run by 2014mep0001
call add_constraints(3, 1, 7);
call add_constraints(3, 2, 7);
call add_constraints(3, 3, 7);


call enroll_credit(1); -- run as 2021csb1113
call enroll_credit(1); -- run as 2021csb1068
call enroll_credit(2); -- run as 2021eeb1000
call enroll_credit(3); -- run as 2021meb0001

call stop_add(); -- run as dean_acad

call start_withdraw(); -- run as dean_acad

call stop_withdraw(); -- run as dean_acad

call update_credit_grades('/home/nema/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_1.csv', 1); -- run by 2015csp0001
call update_credit_grades('/home/nema/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_2.csv', 2); -- run by 2010eep0003
call update_credit_grades('/home/nema/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_3.csv', 3); -- run by 2014mep0001

-- run as dean_acad
call generate_transcript('2021csb1113', 1, 2021);

-- prepare for new batch

-- new semester begins
call start_add(2, 2021);

call add_offering('CS301', 1); -- run by 2015csp0001
call add_constraints(4, 1, 7.5);
call add_constraints(4, 2, 7.5);
call add_constraints(4, 3, 7.5);

call add_offering('CS302', 2); -- run by 2010eep0003
call add_constraints(5, 1, 5);
call add_constraints(5, 2, 5);
call add_constraints(5, 3, 5);

call add_offering('CS303', 1); -- run by 2014mep0001
call add_constraints(6, 1, 5);
call add_constraints(6, 2, 5);
call add_constraints(6, 3, 5);


call stop_add(); -- run as dean_acad

call start_withdraw(); -- run as dean_acad

call stop_withdraw(); -- run as dean_acad
