OPEN SYMMETRIC KEY CreditCardKey
   DECRYPTION BY CERTIFICATE CreditCardCert;

--Encrypt the CreditCardNumber column/ Modificado por mim para dar update na coluna 2

UPDATE SensitiveData
SET CreditCardNumber2 = ENCRYPTBYKEY(Key_GUID('CreditCardKey')
                       ,CreditCardNumber2
                       ,1
                       ,HASHBYTES('SHA1', CONVERT(VARBINARY(8000), ID)));
GO

CLOSE SYMMETRIC KEY CreditCardKey ;
