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
.field private blacklist privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

.field private blacklist publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

.field private blacklist sessionKey:Ljavax/crypto/SecretKey;

.field private blacklist xorMask:[B


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;)V
    .locals 0
    .param p1, "privSessionEndPoint"    # Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;
    .param p2, "pubSessionEndPoint"    # Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateSessionKey()V

    .line 155
    return-void
.end method

.method private blacklist applyXorMask([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .line 261
    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 263
    const/4 v1, 0x0

    .line 265
    :cond_0
    aget-byte v3, p1, v0

    aget-byte v2, v2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method private blacklist decrypt([B[B)[B
    .locals 4
    .param p1, "iv"    # [B
    .param p2, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 253
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 254
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 255
    .local v1, "plaintext":[B
    invoke-direct {p0, v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->applyXorMask([B)V

    .line 256
    return-object v1
.end method

.method private blacklist decryptData(Ljava/lang/String;)[B
    .locals 4
    .param p1, "ciphertext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    .line 232
    .local v1, "iv":[B
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 233
    .local v2, "encrypted":[B
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decrypt([B[B)[B

    move-result-object v3

    .line 234
    .local v3, "decrypted":[B
    return-object v3
.end method

.method private blacklist encrypt([B[B)[B
    .locals 4
    .param p1, "iv"    # [B
    .param p2, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->applyXorMask([B)V

    .line 246
    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 247
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 248
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist encryptData([B[B)Ljava/lang/String;
    .locals 3
    .param p1, "iv"    # [B
    .param p2, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encrypt([B[B)[B

    move-result-object v0

    .line 221
    .local v0, "encrypted":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v1, "ciphertext":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist generateIV()[B
    .locals 2

    .line 238
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 239
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 240
    .local v1, "iv":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 241
    return-object v1
.end method

.method private blacklist generateSessionKey()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    const-string v0, "ECDH"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 163
    .local v0, "agreement":Ljavax/crypto/KeyAgreement;
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->privateSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->publicSessionEndpoint:Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;

    invoke-virtual {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 165
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    .line 166
    .local v1, "fullKey":[B
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 167
    .local v3, "trunckey":[B
    array-length v4, v1

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    .line 168
    new-instance v2, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    .line 170
    invoke-static {v1}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 171
    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 172
    return-void
.end method


# virtual methods
.method blacklist decryptBytes([B)[B
    .locals 1
    .param p1, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ciphertext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->decryptData(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method blacklist destroySessionkey()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->xorMask:[B

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->sessionKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->destroy()V

    .line 180
    return-void
.end method

.method blacklist encryptBytes([B)[B
    .locals 1
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    if-nez p1, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateIV()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptData([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method blacklist encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "plaintext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->generateIV()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;->encryptData([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
