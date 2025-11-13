.class public Landroid/hardware/biometrics/CryptoObject;
.super Ljava/lang/Object;
.source "CryptoObject.java"


# instance fields
.field private final greylist-max-o mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/IdentityCredential;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/PresentationSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/Signature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/KeyAgreement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist-max-o getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/IdentityCredential;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyAgreement;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getOpId()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/PresentationSession;

    invoke-virtual {v0}, Landroid/security/identity/PresentationSession;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Landroid/security/identity/PresentationSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Landroid/security/identity/PresentationSession;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
