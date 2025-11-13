.class Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;
.super Ljava/lang/Object;
.source "SessionSecretKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final whitelist serialVersionUID:J = 0x5b0b2bd2ac122150L


# instance fields
.field private blacklist algorithm:Ljava/lang/String;

.field private blacklist isDestroyed:Z

.field private blacklist key:[B


# direct methods
.method constructor blacklist <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 25
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    .line 29
    iput-object p2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->isDestroyed:Z

    .line 31
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No key/algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->isDestroyed:Z

    .line 86
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    if-ne p0, p1, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 63
    return v1

    .line 65
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "thatAlg":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    return v1

    .line 70
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->isDestroyed:Z

    move-object v3, p1

    check-cast v3, Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->isDestroyed()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 71
    return v1

    .line 74
    :cond_3
    move-object v1, p1

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 76
    .local v1, "thatKey":[B
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "retval":I
    iget-boolean v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->isDestroyed:Z

    if-eqz v1, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->key:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 52
    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/knox/dar/ddar/securesession/SessionSecretKeySpec;->isDestroyed:Z

    return v0
.end method
