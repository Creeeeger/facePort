.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInsideSecureHardware:Z

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

.field private final greylist-max-o mOrigin:I

.field private final greylist-max-o mPurposes:I

.field private final blacklist mRemainingUsageCount:I

.field private final blacklist mSecurityLevel:I

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mTrustedUserPresenceRequired:Z

.field private final blacklist mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final greylist-max-o mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    move/from16 v3, p3

    iput v3, v0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    move/from16 v4, p4

    iput v4, v0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    invoke-static/range {p5 .. p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static/range {p6 .. p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static/range {p7 .. p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move/from16 v5, p8

    iput v5, v0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    nop

    invoke-static/range {p9 .. p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    nop

    invoke-static/range {p10 .. p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p11 .. p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static/range {p12 .. p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    move/from16 v6, p13

    iput-boolean v6, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    move/from16 v7, p14

    iput v7, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v8, p15

    iput v8, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    move/from16 v9, p16

    iput-boolean v9, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    move/from16 v10, p17

    iput-boolean v10, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v11, p18

    iput-boolean v11, v0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    move/from16 v12, p19

    iput-boolean v12, v0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    move/from16 v13, p20

    iput-boolean v13, v0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v14, p21

    iput-boolean v14, v0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    move/from16 v15, p22

    iput v15, v0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    move/from16 v1, p23

    iput v1, v0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return-void
.end method


# virtual methods
.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncryptionPaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOrigin()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return v0
.end method

.method public whitelist getPurposes()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return v0
.end method

.method public whitelist getRemainingUsageCount()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mRemainingUsageCount:I

    return v0
.end method

.method public whitelist getSecurityLevel()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mSecurityLevel:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public whitelist isInsideSecureHardware()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return v0
.end method

.method public whitelist isInvalidatedByBiometricEnrollment()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isTrustedUserPresenceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    return v0
.end method

.method public blacklist isUnlockedDeviceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return v0
.end method
