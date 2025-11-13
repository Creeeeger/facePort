.class public abstract Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static key:[B

.field public static secretKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public static setKey(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->key:[B

    const-string p0, "SHA-1"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->key:[B

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->key:[B

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->key:[B

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->key:[B

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/AES_ECB;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
