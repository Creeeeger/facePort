.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist digest:I

.field private final blacklist hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist iterationCount:I

.field blacklist ivSize:I

.field blacklist keySize:I

.field blacklist oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private final blacklist password:[C

.field private final blacklist salt:[B

.field blacklist tryWrong:Z

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    iput p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    return-void
.end method

.method static blacklist checkDestroyed(Ljavax/security/auth/Destroyable;)V
    .locals 2

    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "key has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([CC)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_1
    return-void
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDigest()I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1

    :cond_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist test-api getIterationCount()I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    return v0
.end method

.method public blacklist getIvSize()I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    return v0
.end method

.method blacklist getKeySize()I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    return v0
.end method

.method public blacklist getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public whitelist test-api getPassword()[C
    .locals 2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([C)[C

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no password available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getSalt()[B
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getType()I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist setTryWrongPKCS12Zero(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return-void
.end method

.method blacklist shouldTryWrongPKCS12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return v0
.end method
