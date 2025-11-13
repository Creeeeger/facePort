.class public final Landroid/security/KeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyPairGeneratorSpec$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEndDate:Ljava/util/Date;

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyType:Ljava/lang/String;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mSerialNumber:Ljava/math/BigInteger;

.field private final greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mStartDate:Ljava/util/Date;

.field private final greylist-max-o mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p6, :cond_5

    if-eqz p7, :cond_4

    if-eqz p8, :cond_3

    if-eqz p9, :cond_2

    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    const-string v1, "endDate < startDate"

    if-nez v0, :cond_1

    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    iput-object p3, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    iput p4, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    iput-object p5, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p6, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iput-object p7, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    iput-object p8, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    iput-object p9, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "subjectDN == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKeySize()I
    .locals 1

    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist isEncryptionRequired()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
