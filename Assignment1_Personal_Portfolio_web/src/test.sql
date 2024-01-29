CREATE OR REPLACE FUNCTION calculate_pledge_total(p_idProj NUMBER)
RETURN NUMBER IS
  v_total_pledge NUMBER;
BEGIN
  SELECT NVL(SUM(Pledgeamt), 0)
  INTO v_total_pledge
  FROM DD_Pledge
  WHERE idProj = p_idProj;

  RETURN v_total_pledge;
EXCEPTION
  WHEN OTHERS THEN
    RAISE;
END calculate_pledge_total;
/
