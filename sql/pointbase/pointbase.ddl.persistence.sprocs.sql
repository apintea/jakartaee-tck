TO BE DELETED
TO BE DELETED
TO BE DELETED
TO BE DELETED


DROP PROCEDURE GetEmpId(INTEGER,INTEGER);
CREATE PROCEDURE GetEmpId (in IN_VALUE INTEGER, out OUT_VALUE INTEGER) LANGUAGE JAVA SPECIFIC GetEmpId DETERMINISTIC READS SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.GetEmpId' PARAMETER STYLE SQL;

DROP PROCEDURE GetEmpLastName(VARCHAR(255));
CREATE PROCEDURE GetEmpLastName (inout INOUT_PARAM VARCHAR(255)) LANGUAGE JAVA SPECIFIC GetEmpLastName DETERMINISTIC READS SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.GetEmpLastName' PARAMETER STYLE SQL;

DROP PROCEDURE GetEmpIds;
CREATE PROCEDURE GetEmpIds LANGUAGE JAVA SPECIFIC GetEmpIds DETERMINISTIC READS SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.GetEmpIds' PARAMETER STYLE SQL;

DROP PROCEDURE GetEmpIdFromResultSet(INTEGER);
CREATE PROCEDURE GetEmpIdFromResultSet (in IN_VALUE INTEGER) LANGUAGE JAVA SPECIFIC GetEmpIdFromResultSet DETERMINISTIC READS SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.GetEmpIdFromResultSet' PARAMETER STYLE SQL;

DROP PROCEDURE GetEmpIdUsingHireDateFromOut(DATE, INTEGER);
CREATE PROCEDURE GetEmpIdUsingHireDateFromOut (in IN_VALUE DATE, out OUT_VALUE INTEGER) LANGUAGE JAVA SPECIFIC GetEmpIdUsingHireDateFromOut DETERMINISTIC READS SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.GetEmpIdUsingHireDateFromOut' PARAMETER STYLE SQL;

DROP PROCEDURE UpdateEmpSalaryColumn;
CREATE PROCEDURE UpdateEmpSalaryColumn LANGUAGE JAVA SPECIFIC UpdateEmpSalaryColumn DETERMINISTIC MODIFIES SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.UpdateEmpSalaryColumn' PARAMETER STYLE SQL;

DROP PROCEDURE DeleteAllEmp;
CREATE PROCEDURE DeleteAllEmp LANGUAGE JAVA SPECIFIC UpdateEmpSalaryColumn DETERMINISTIC MODIFIES SQL DATA EXTERNAL NAME 'com.sun.ts.lib.tests.jpa.storedprocedures.CS_Procs.DeleteAllEmp' PARAMETER STYLE SQL;