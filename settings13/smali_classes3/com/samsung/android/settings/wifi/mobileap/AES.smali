.class public Lcom/samsung/android/settings/wifi/mobileap/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static key:[B

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/AES;->setKey(Ljava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5PADDING"

    .line 57
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 58
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/AES;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setKey(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/AES;->key:[B

    const-string p0, "SHA-1"

    .line 23
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 24
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AES;->key:[B

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/AES;->key:[B

    const/16 v0, 0x10

    .line 25
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/AES;->key:[B

    .line 26
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/AES;->key:[B

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/AES;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method
