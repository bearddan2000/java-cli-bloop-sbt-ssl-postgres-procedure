create or replace procedure sp_rolling_audit()
language plpgsql
as $$
begin
	DELETE FROM "public".audit WHERE
	CAST (date_part('month', changed) as int) <
	CAST (date_part('month', now()) as int);

	return;
end;$$
