.class Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;
.super Ljava/lang/Object;
.source "SecureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecureSession"
.end annotation


# instance fields
.field private final blacklist privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

.field private final blacklist publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

.field private blacklist sessionKey:Ljavax/crypto/SecretKey;

.field private blacklist xorMask:[B


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    iput-object p2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateSessionKey()V

    return-void
.end method

.method private blacklist applyXorMask([B)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    aget-byte v2, p1, v0

    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    aget-byte v3, v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist decrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->applyXorMask([B)V

    return-object v1
.end method

.method private blacklist decryptData(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decrypt([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method private blacklist encrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->applyXorMask([B)V

    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist encryptData([B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encrypt([B[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist generateIV()[B
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;->-$$Nest$sfgetsSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private blacklist generateSessionKey()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ECDH"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    array-length v4, v1

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    return-void
.end method


# virtual methods
.method blacklist decryptBytes([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptData(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method blacklist destroySessionkey()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->destroy()V

    return-void
.end method

.method blacklist encryptBytes([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateIV()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptData([B[B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateIV()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptData([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
