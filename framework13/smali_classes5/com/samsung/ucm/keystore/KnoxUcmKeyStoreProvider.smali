.class public Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;
.super Ljava/security/Provider;
.source "KnoxUcmKeyStoreProvider.java"


# static fields
.field private static final blacklist KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "com.samsung.ucm.keystore.UcmKeyStorePrivateKey"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.samsung.ucm.keystore"

.field public static final blacklist PROPERTY_PERSIST_UCM_CRYPTO:Ljava/lang/String; = "persist.security.ucmcrypto"

.field public static final blacklist PROPERTY_UCM_CRYPTO:Ljava/lang/String; = "security.ucmcrypto"

.field public static final blacklist PROVIDER_NAME:Ljava/lang/String; = "UcmKeystore"


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 18
    const-string v0, "UcmKeystore"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Samsung UCM Keystore Provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 23
    const-string v0, "RSA/ECB/PKCS1Padding"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$PKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "RSA/ECB/OAEPPadding"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$OAEPWithSHA224AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$OAEPWithSHA256AndMGF1Padding"

    invoke-direct {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$OAEPWithSHA384AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "MD5withRSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$MD5WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "Alg.Alias.Signature.MD5WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "Alg.Alias.Signature.MD5/RSA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "SHA1withRSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA1WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Alg.Alias.Signature.SHA1/RSA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "Alg.Alias.Signature.SHA-1/RSA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.29"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "SHA224withRSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA224WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "SHA256withRSA"

    const-string v2, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA256WithPKCS1Padding"

    invoke-direct {p0, v0, v2}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "SHA384withRSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA384WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "SHA512withRSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA512WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "SHA1withRSA/PSS"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA1WithPSSPadding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "SHA224withRSA/PSS"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA224WithPSSPadding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "SHA256withRSA/PSS"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA256WithPSSPadding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "SHA384withRSA/PSS"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA384WithPSSPadding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "SHA512withRSA/PSS"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA512WithPSSPadding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "NONEwithECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$NONEwithECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "SHA1withECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA1withECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "Alg.Alias.Signature.ECDSA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "SHA224withECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA224withECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "SHA256withECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA256withECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "SHA384withECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA384withECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "SHA512withECDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA512withECDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "SHA1withECGDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA1withECGDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "SHA224withECGDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA224withECGDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "SHA256withECGDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA256withECGDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "SHA384withECGDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA384withECGDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "SHA512withECGDSA"

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStoreSignatureSpi$SHA512withECGDSA"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private blacklist putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStorePrivateKey"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private blacklist putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.ucm.keystore.UcmKeyStorePrivateKey"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method
