.class public final Landroid/security/keystore/KeyProtection$Builder;
.super Ljava/lang/Object;
.source "KeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestKeyAlias:Ljava/lang/String;

.field private greylist-max-o mBlockModes:[Ljava/lang/String;

.field private greylist-max-o mBoundToSecureUserId:J

.field private greylist-max-o mCriticalToDeviceEncryption:Z

.field private greylist-max-o mDigests:[Ljava/lang/String;

.field private greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private greylist-max-o mIsStrongBoxBacked:Z

.field private greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private blacklist mMaxUsageCount:I

.field private blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPurposes:I

.field private greylist-max-o mRandomizedEncryptionRequired:Z

.field private blacklist mRollbackResistant:Z

.field private greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private greylist-max-o mUnlockedDeviceRequired:Z

.field private greylist-max-o mUserAuthenticationRequired:Z

.field private blacklist mUserAuthenticationType:I

.field private greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private greylist-max-o mUserConfirmationRequired:Z

.field private greylist-max-o mUserPresenceRequired:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    iput-boolean v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mAttestKeyAlias:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/KeyProtection;
    .locals 30

    move-object/from16 v0, p0

    new-instance v27, Landroid/security/keystore/KeyProtection;

    move-object/from16 v1, v27

    iget-object v2, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v3, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v4, v0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v5, v0, Landroid/security/keystore/KeyProtection$Builder;->mPurposes:I

    iget-object v6, v0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    iget-object v7, v0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    iget-object v8, v0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    iget-object v9, v0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    iget-object v10, v0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    iget-boolean v11, v0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    iget-boolean v12, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    iget v13, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    iget v14, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iget-boolean v15, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    move-object/from16 v28, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v17, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    move/from16 v23, v1

    iget v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    move/from16 v24, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    move/from16 v25, v1

    const/16 v26, 0x0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct/range {v1 .. v26}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZLandroid/security/keystore/KeyProtection-IA;)V

    return-object v27
.end method

.method public varargs whitelist setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mBoundToSecureUserId:J

    return-object p0
.end method

.method public greylist-max-o setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mCriticalToDeviceEncryption:Z

    return-object p0
.end method

.method public varargs whitelist setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs whitelist setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mInvalidatedByBiometricEnrollment:Z

    return-object p0
.end method

.method public whitelist setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mIsStrongBoxBacked:Z

    return-object p0
.end method

.method public whitelist setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyProtection$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;

    return-object p0
.end method

.method public whitelist setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setMaxUsageCount(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxUsageCount is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mMaxUsageCount:I

    return-object p0
.end method

.method public varargs whitelist setMgf1Digests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mMgf1Digests:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public blacklist setRollbackResistant(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mRollbackResistant:Z

    return-object p0
.end method

.method public varargs whitelist setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyProtection$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUnlockedDeviceRequired:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iput p2, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationType:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be 0 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserAuthenticationValidWhileOnBody:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserConfirmationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserConfirmationRequired:Z

    return-object p0
.end method

.method public whitelist setUserPresenceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyProtection$Builder;->mUserPresenceRequired:Z

    return-object p0
.end method
