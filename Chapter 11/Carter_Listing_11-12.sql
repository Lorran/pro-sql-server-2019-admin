--Open Key

OPEN SYMMETRIC KEY CreditCardKey
    DECRYPTION BY CERTIFICATE CreditCardCert;

--Read the Data using DECRYPTBYKEY()

SELECT 
         FirstName
        ,LastName
        ,CreditCardNumber AS [Credit Card Number Encrypted]
        ,CONVERT(VARCHAR(30), DECRYPTBYKEY(CreditCardNumber)) AS [Credit Card Number Decrypted]
        ,convert(varchar(30),DecryptByKey(CreditCardNumber2,1,HashBytes('SHA1', CONVERT(varbinary(8000), ID))))    AS [Credit Card Number Converted Without Decryption]
FROM dbo.SensitiveData ;

--Close the Key

CLOSE SYMMETRIC KEY CreditCardKey ;
