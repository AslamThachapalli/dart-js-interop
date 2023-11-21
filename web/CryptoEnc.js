function CryptoEnc() {}

CryptoEnc.prototype.encrypt = function(toEncObj){
    var toEnc = toEncObj.value;

    var encrypted = CryptoJS.MD5(toEnc);

    return encrypted;
}