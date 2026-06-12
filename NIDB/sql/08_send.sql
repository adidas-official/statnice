CREATE OR REPLACE FUNCTION send_money(var_id_sender INT, var_id_receiver INT, var_amount INT)
RETURNS employee
LANGUAGE PLPGSQL
AS
$$
DECLARE
	sender_balance INT;
	res_employee employee;
BEGIN
	IF NOT (
		EXISTS (SELECT 1 FROM employee where id = var_id_sender)
		AND
		EXISTS (SELECT 1 FROM employee where id = var_id_receiver)
	) THEN
		RAISE NOTICE 'sender or receiver not found. check ids';
		RETURN FALSE;
	END IF;

	SELECT balance FROM employee WHERE id = var_id_sender INTO sender_balance;

	IF var_amount <= sender_balance THEN
		UPDATE employee SET balance = COALESCE(balance, 0) - var_amount WHERE id = var_id_sender;
		UPDATE employee SET balance = COALESCE(balance, 0) + var_amount WHERE id = var_id_receiver;
		RAISE NOTICE 'transfer complete';
		SELECT * FROM employee WHERE id = var_id_receiver or id = var_id_sender INTO res_employee;
		RETURN res_employee;
	ELSE
		RAISE NOTICE 'not enough funds';
		RETURN NULL;
	END IF;
END;
$$
