CREATE OR REPLACE FUNCTION generate_email()
RETURNS TRIGGER LANGUAGE plpgsql AS
$$
BEGIN
	IF NEW.email IS NULL THEN
		NEW.email := LOWER(NEW.fname) || '.' || LOWER(NEW.lname) || '@evilcorp.com';
	END IF;
	RETURN NEW;
END;
$$;

CREATE OR REPLACE TRIGGER fill_email
BEFORE INSERT
ON employee
FOR EACH ROW
EXECUTE FUNCTION generate_email();
