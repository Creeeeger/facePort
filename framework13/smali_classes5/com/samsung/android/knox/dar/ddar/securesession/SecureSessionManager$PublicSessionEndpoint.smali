.class Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;
.super Ljava/lang/Object;
.source "SecureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicSessionEndpoint"
.end annotation


# instance fields
.field private blacklist publicKey:Ljava/security/PublicKey;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "publicKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->createPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error: PublicSessionEndpoint creation failure"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "publicKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    .local v0, "publicKey":[B
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 131
    .local v1, "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v2, "EC"

    const-string v3, "AndroidOpenSSL"

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 132
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 133
    .local v3, "pubKey":Ljava/security/PublicKey;
    return-object v3
.end method


# virtual methods
.method blacklist getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method blacklist getPublicKeyString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
