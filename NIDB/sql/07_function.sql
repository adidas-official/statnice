CREATE OR REPLACE FUNCTION set_random_amounts()
RETURNS BOOL
LANGUAGE PLPGSQL
AS
$$
DECLARE
	var_amount INT;
	var_sender_id INT;
	var_receiver_id INT;
BEGIN
FOR i in 1..300 LOOP
	SELECT floor(random() * 12) + 1 INTO var_sender_id;
	SELECT floor(random() * 12) + 1 INTO var_receiver_id;
	SELECT floor(random() * 1000) + 1 INTO var_amount;
	INSERT INTO ledger (amount, sender, receiver) VALUES (var_amount, var_sender_id, var_receiver_id);
END LOOP;

IF FOUND THEN
	RETURN TRUE;
ELSE
	RETURN FALSE;
END IF;

END;
$$;

SELECT set_random_amounts();
UPDATE employee SET balance = (FLOOR(RANDOM() * 1000) + 1)::INT;

