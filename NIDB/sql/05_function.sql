CREATE OR REPLACE FUNCTION set_email()
RETURNS BOOL
LANGUAGE PLPGSQL
AS
$$
BEGIN
	UPDATE employee SET email = LOWER(fname) || '.' || LOWER(lname) || '@evilcorp.com' WHERE email IS NULL;
	IF FOUND THEN
		RETURN TRUE;
	ELSE
		RETURN FALSE;
	END IF;
END;
$$;
	
SELECT set_email();
