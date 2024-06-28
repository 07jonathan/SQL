-- Arithmetic Operators
SELECT
    10 + 5 AS AdditionResult,
    20 - 8 AS SubtractionResult,
    6 * 4 AS MultiplicationResult,
    100 / 5 AS DivisionResult,
    15 % 4 AS ModuloResult;

-- Bitwise Operators (contoh sederhana)
SELECT
    10 & 7 AS BitwiseANDResult, -- Hasilnya adalah 2 (1010 & 0111)
    10 | 7 AS BitwiseORResult,  -- Hasilnya adalah 15 (1010 | 0111)
    10 ^ 7 AS BitwiseXORResult; -- Hasilnya adalah 13 (1010 ^ 0111)

-- Comparison Operators
SELECT
    CASE
        WHEN 10 = 10 THEN 'Equal'
        WHEN 5 > 3 THEN 'Greater'
        WHEN 8 < 12 THEN 'Less'
        WHEN 7 >= 7 THEN 'GreaterOrEqual'
        WHEN 4 <= 3 THEN 'LessOrEqual'
        WHEN 5 <> 5 THEN 'NotEqual'
        ELSE 'Unknown'
    END AS ComparisonResult;

-- Compound Operators (contoh penggunaan)
DECLARE @total INT = 50;
SET @total += 10;
SET @total -= 5;
SET @total *= 2;
SET @total /= 5;
SET @total %= 3;

-- Logical Operators
SELECT *
FROM Employees
WHERE Department = 'IT'
    AND Salary > 50000
    OR (Department = 'HR' AND Salary > 45000);

