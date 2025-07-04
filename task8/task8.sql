use mahi

CREATE PROCEDURE GetEmployeeDetails(IN dept_id INT) BEGIN
    SELECT * FROM employees WHERE department_id = dept_id;
END //

DELIMITER ;

CALL GetEmployeeDetails(3);

DELIMITER //

CREATE FUNCTION GetEmployeeCount(dept_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE emp_count INT;
    SELECT COUNT(*) INTO emp_count FROM employees WHERE department_id = dept_id;
    RETURN emp_count;
END //

DELIMITER ;

-- To use it:
SELECT GetEmployeeCount(3);

IF condition THEN
   -- logic
ELSE
   -- alternative logic
END IF;
