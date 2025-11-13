.class Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;
.super Ljava/lang/Object;
.source "SecureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivateSessionEndpoint"
.end annotation


# instance fields
.field private blacklist privateKey:Ljava/security/PrivateKey;

.field private blacklist publicKey:Ljava/security/PublicKey;


# direct methods
.method constructor blacklist <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->createKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 41
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->publicKey:Ljava/security/PublicKey;

    .line 42
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->privateKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "keyPair":Ljava/security/KeyPair;
    nop

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error: PrivateSessionEndpoint creation failure"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    const-string v0, "EC"

    const-string v1, "AndroidOpenSSL"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 90
    .local v0, "generator":Ljava/security/KeyPairGenerator;
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "secp521r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->privateKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->destroy()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->privateKey:Ljava/security/PrivateKey;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 82
    :goto_0
    return-void
.end method

.method blacklist getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method blacklist getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method blacklist getPublicKeyString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Util;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
