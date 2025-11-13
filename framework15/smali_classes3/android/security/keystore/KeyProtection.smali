.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mBoundToSecureUserId:J

.field private final greylist-max-o mCriticalToDeviceEncryption:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final blacklist mMaxUsageCount:I

.field private final blacklist mMgf1Digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final blacklist mRollbackResistant:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequred:Z


# direct methods
.method private constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZIIZZZJZZZZIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static/range {p3 .. p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move/from16 v1, p4

    iput v1, v0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    nop

    invoke-static/range {p5 .. p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    nop

    invoke-static/range {p6 .. p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p7 .. p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    move-object/from16 v2, p8

    iput-object v2, v0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-static/range {p9 .. p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    move/from16 v3, p10

    iput-boolean v3, v0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    move/from16 v4, p11

    iput-boolean v4, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    move/from16 v5, p12

    iput v5, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    move/from16 v6, p13

    iput v6, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v7, p14

    iput-boolean v7, v0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    move/from16 v8, p15

    iput-boolean v8, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v9, p16

    iput-boolean v9, v0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    move-wide/from16 v10, p17

    iput-wide v10, v0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    move/from16 v14, p21

    iput-boolean v14, v0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    move/from16 v15, p22

    iput-boolean v15, v0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    move/from16 v1, p23

    iput v1, v0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    move/from16 v1, p24

    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZLandroid/security/keystore/KeyProtection-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p24}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;ZZIIZZZJZZZZIZ)V

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoundToSpecificSecureUserId()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digests not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mMaxUsageCount:I

    return v0
.end method

.method public whitelist getMgf1Digests()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPurposes()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public greylist-max-o isCriticalToDeviceEncryption()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public blacklist isRollbackResistant()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mRollbackResistant:Z

    return v0
.end method

.method public greylist-max-o isStrongBoxBacked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return v0
.end method
