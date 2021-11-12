

function EncryptData(input) {
    //debugger;
    if (input != null) {
        var PlainText = input.value;
        var encryptData = input;
        var iv = CryptoJS.enc.Hex.parse('e84ad660c4721ae0e84ad660c4721ae0');
        //Encoding the Password in from UTF8 to byte array
        var Pass = CryptoJS.enc.Utf8.parse('Crypto');
        //Encoding the Salt in from UTF8 to byte array
        var Salt = CryptoJS.enc.Utf8.parse("cryptography123example");
        //Creating the key in PBKDF2 format to be used during the encryption
        var key128Bits1000Iterations = CryptoJS.PBKDF2(Pass.toString(CryptoJS.enc.Utf8), Salt, { keySize: 128 / 32, iterations: 1000 });

        //Encrypting the string contained in cipherParams using the PBKDF2 key
        var encrypted = CryptoJS.AES.encrypt(PlainText, key128Bits1000Iterations, { mode: CryptoJS.mode.CBC, iv: iv, padding: CryptoJS.pad.Pkcs7 });
        encryptData.value = encrypted.ciphertext.toString(CryptoJS.enc.Base64);
        return true;
    }
}