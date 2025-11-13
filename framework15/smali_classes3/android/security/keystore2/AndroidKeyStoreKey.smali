.class public Landroid/security/keystore2/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAuthorizations:[Landroid/system/keystore2/Authorization;

.field private final blacklist mDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private final blacklist mKeyId:J

.field private final blacklist mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    iput-wide p2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-object p4, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/security/keystore2/AndroidKeyStoreKey;

    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iget-wide v5, v2, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAuthorizations()[Landroid/system/keystore2/Authorization;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 3

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iget-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 v1, 0x4

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object v0
.end method

.method blacklist getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-object v0
.end method

.method blacklist getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const-wide/16 v5, -0x1

    and-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    return v2
.end method
