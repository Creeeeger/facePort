.class public final Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyGenParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestKeyAlias:Ljava/lang/String;

.field private greylist-max-o mAttestationChallenge:[B

.field private blacklist mAttestationIds:[I

.field private greylist-max-o mBlockModes:[Ljava/lang/String;

.field private blacklist mBoundToSecureUserId:J

.field private greylist-max-o mCertificateNotAfter:Ljava/util/Date;

.field private greylist-max-o mCertificateNotBefore:Ljava/util/Date;

.field private greylist-max-o mCertificateSerialNumber:Ljava/math/BigInteger;

.field private greylist-max-o mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private blacklist mCriticalToDeviceEncryption:Z

.field private blacklist mDevicePropertiesAttestationIncluded:Z

.field private greylist-max-o mDigests:[Ljava/lang/String;

.field private greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private greylist-max-o mIsStrongBoxBacked:Z

.field private greylist-max-o mKeySize:I

.field private greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

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

.field private blacklist mNamespace:I

.field private greylist-max-o mPurposes:I

.field private greylist-max-o mRandomizedEncryptionRequired:Z

.field private greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o mUniqueIdIncluded:Z

.field private greylist-max-o mUnlockedDeviceRequired:Z

.field private greylist-max-o mUserAuthenticationRequired:Z

.field private blacklist mUserAuthenticationType:I

.field private greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private greylist-max-o mUserConfirmationRequired:Z

.field private greylist-max-o mUserPresenceRequired:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    :cond_1
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    nop

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationType()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    nop

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserConfirmationRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isUnlockedDeviceRequired()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v0

    iput-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    new-array v4, v2, [I

    iput-object v4, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    iput-boolean v1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    iput-boolean v2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    iput-object v3, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keystoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "keystoreAlias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 41

    move-object/from16 v0, p0

    new-instance v38, Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v1, v38

    iget-object v2, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget v3, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    iget v4, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    iget-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    iget-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    iget-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    iget-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    iget-object v11, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    iget-object v12, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    iget v13, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mPurposes:I

    iget-object v14, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    iget-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    move-object/from16 v39, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    move/from16 v20, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v21, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    move-object/from16 v24, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    move/from16 v25, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v29, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    move/from16 v31, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    move/from16 v33, v1

    iget v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    move/from16 v34, v1

    iget-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    move-object/from16 v35, v1

    move-object/from16 v40, v2

    iget-wide v1, v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    move-wide/from16 v36, v1

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct/range {v1 .. v37}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V

    return-object v38
.end method

.method public whitelist setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAttestKeyAlias(Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestKeyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationChallenge:[B

    return-object p0
.end method

.method public whitelist setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mAttestationIds:[I

    return-object p0
.end method

.method public varargs whitelist setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBlockModes:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mBoundToSecureUserId:J

    return-object p0
.end method

.method public whitelist setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotAfter:Ljava/util/Date;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateNotBefore:Ljava/util/Date;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "date == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mCriticalToDeviceEncryption:Z

    return-object p0
.end method

.method public whitelist setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    return-object p0
.end method

.method public varargs whitelist setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mDigests:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs whitelist setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mEncryptionPaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mInvalidatedByBiometricEnrollment:Z

    return-object p0
.end method

.method public whitelist setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mIsStrongBoxBacked:Z

    return-object p0
.end method

.method public whitelist setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeySize:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    return-object p0
.end method

.method public whitelist setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mKeyValidityStart:Ljava/util/Date;

    return-object p0
.end method

.method public whitelist setMaxUsageCount(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
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
    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMaxUsageCount:I

    return-object p0
.end method

.method public varargs whitelist setMgf1Digests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mMgf1Digests:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    return-object p0
.end method

.method public whitelist setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mRandomizedEncryptionRequired:Z

    return-object p0
.end method

.method public varargs whitelist setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mSignaturePaddings:[Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/security/keystore/KeyProperties;->legacyUidToNamespace(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mNamespace:I

    return-object p0
.end method

.method public greylist setUniqueIdIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUniqueIdIncluded:Z

    return-object p0
.end method

.method public whitelist setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUnlockedDeviceRequired:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidityDurationSeconds:I

    iput p2, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationType:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be 0 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationRequired:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserAuthenticationValidWhileOnBody:Z

    return-object p0
.end method

.method public whitelist setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationParameters(II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seconds must be -1 or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserConfirmationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserConfirmationRequired:Z

    return-object p0
.end method

.method public whitelist setUserPresenceRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/KeyGenParameterSpec$Builder;->mUserPresenceRequired:Z

    return-object p0
.end method
