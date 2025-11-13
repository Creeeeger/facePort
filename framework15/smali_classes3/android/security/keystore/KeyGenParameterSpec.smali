.class public final Landroid/security/keystore/KeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyGenParameterSpec$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

.field private static final greylist-max-o DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

.field private static final greylist-max-o DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

.field private static final blacklist DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private final blacklist mAttestKeyAlias:Ljava/lang/String;

.field private final greylist-max-o mAttestationChallenge:[B

.field private final blacklist mAttestationIds:[I

.field private final greylist-max-o mBlockModes:[Ljava/lang/String;

.field private final blacklist mBoundToSecureUserId:J

.field private final greylist-max-o mCertificateNotAfter:Ljava/util/Date;

.field private final greylist-max-o mCertificateNotBefore:Ljava/util/Date;

.field private final greylist-max-o mCertificateSerialNumber:Ljava/math/BigInteger;

.field private final greylist-max-o mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist mCriticalToDeviceEncryption:Z

.field private final blacklist mDevicePropertiesAttestationIncluded:Z

.field private final greylist-max-o mDigests:[Ljava/lang/String;

.field private final greylist-max-o mEncryptionPaddings:[Ljava/lang/String;

.field private final greylist-max-o mInvalidatedByBiometricEnrollment:Z

.field private final greylist-max-o mIsStrongBoxBacked:Z

.field private final greylist-max-o mKeySize:I

.field private final greylist-max-o mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final greylist-max-o mKeyValidityStart:Ljava/util/Date;

.field private final greylist-max-o mKeystoreAlias:Ljava/lang/String;

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

.field private final blacklist mNamespace:I

.field private final greylist-max-o mPurposes:I

.field private final greylist-max-o mRandomizedEncryptionRequired:Z

.field private final greylist-max-o mSignaturePaddings:[Ljava/lang/String;

.field private final greylist-max-o mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mUniqueIdIncluded:Z

.field private final greylist-max-o mUnlockedDeviceRequired:Z

.field private final greylist-max-o mUserAuthenticationRequired:Z

.field private final blacklist mUserAuthenticationType:I

.field private final greylist-max-o mUserAuthenticationValidWhileOnBody:Z

.field private final greylist-max-o mUserAuthenticationValidityDurationSeconds:I

.field private final greylist-max-o mUserConfirmationRequired:Z

.field private final greylist-max-o mUserPresenceRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Fake"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/math/BigInteger;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZIIZ[BZ[IZZZZZZZI",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p5, :cond_1

    if-nez p23, :cond_0

    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_SELF_SIGNED_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_ATTESTATION_CERT_SUBJECT:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    :cond_1
    move-object/from16 v1, p5

    :goto_0
    if-nez p7, :cond_2

    sget-object v2, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_BEFORE:Ljava/util/Date;

    goto :goto_1

    :cond_2
    move-object/from16 v2, p7

    :goto_1
    if-nez p8, :cond_3

    sget-object v3, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_NOT_AFTER:Ljava/util/Date;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p8

    :goto_2
    if-nez p6, :cond_4

    sget-object v4, Landroid/security/keystore/KeyGenParameterSpec;->DEFAULT_CERT_SERIAL_NUMBER:Ljava/math/BigInteger;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p6

    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    move/from16 v6, p2

    iput v6, v0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    move/from16 v7, p3

    iput v7, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    move-object/from16 v8, p4

    iput-object v8, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    iput-object v4, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {v2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static/range {p9 .. p9}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static/range {p10 .. p10}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static/range {p11 .. p11}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move/from16 v9, p12

    iput v9, v0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    invoke-static/range {p13 .. p13}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz p14, :cond_5

    move-object/from16 v10, p14

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    :goto_4
    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    nop

    invoke-static/range {p15 .. p15}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static/range {p16 .. p16}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static/range {p17 .. p17}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    move/from16 v10, p18

    iput-boolean v10, v0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    move/from16 v11, p19

    iput-boolean v11, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    move/from16 v12, p22

    iput-boolean v12, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    move/from16 v13, p20

    iput v13, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v14, p21

    iput v14, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    invoke-static/range {p23 .. p23}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v15

    iput-object v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    move/from16 v15, p24

    iput-boolean v15, v0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    move-object/from16 p5, v1

    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    move/from16 v1, p30

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    move/from16 v1, p33

    iput v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

    move-object/from16 v1, p34

    iput-object v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    move-object/from16 p7, v2

    move-wide/from16 v1, p35

    iput-wide v1, v0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    return-void

    :cond_6
    move-object/from16 p5, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certificateNotAfter < certificateNotBefore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p12

    move/from16 v10, p18

    move/from16 v11, p19

    move/from16 v13, p20

    move/from16 v14, p21

    move/from16 v12, p22

    move/from16 v15, p24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreAlias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getAttestKeyAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAttestationChallenge()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationChallenge:[B

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttestationIds()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mAttestationIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist getBlockModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBoundToSpecificSecureUserId()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public whitelist getCertificateNotAfter()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist getCertificateSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public whitelist getDigests()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

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

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeySize()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeySize:I

    return v0
.end method

.method public whitelist getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyValidityStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {v0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeystoreAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxUsageCount()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMaxUsageCount:I

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

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mask generation function (MGF) not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNamespace()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    return v0
.end method

.method public whitelist getPurposes()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mPurposes:I

    return v0
.end method

.method public whitelist getSignaturePaddings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUid()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mNamespace:I

    invoke-static {v0}, Landroid/security/keystore/KeyProperties;->namespaceToLegacyUid(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getUid called on KeyGenParameterSpec with non legacy keystore namespace."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getUserAuthenticationType()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationType:I

    return v0
.end method

.method public whitelist getUserAuthenticationValidityDurationSeconds()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidityDurationSeconds:I

    return v0
.end method

.method public blacklist isCriticalToDeviceEncryption()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mCriticalToDeviceEncryption:Z

    return v0
.end method

.method public whitelist isDevicePropertiesAttestationIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    return v0
.end method

.method public whitelist isDigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mDigests:[Ljava/lang/String;

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

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mInvalidatedByBiometricEnrollment:Z

    return v0
.end method

.method public whitelist isMgf1DigestsSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isRandomizedEncryptionRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mRandomizedEncryptionRequired:Z

    return v0
.end method

.method public whitelist isStrongBoxBacked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mIsStrongBoxBacked:Z

    return v0
.end method

.method public greylist isUniqueIdIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUniqueIdIncluded:Z

    return v0
.end method

.method public whitelist isUnlockedDeviceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUnlockedDeviceRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isUserAuthenticationValidWhileOnBody()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserAuthenticationValidWhileOnBody:Z

    return v0
.end method

.method public whitelist isUserConfirmationRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserConfirmationRequired:Z

    return v0
.end method

.method public whitelist isUserPresenceRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/KeyGenParameterSpec;->mUserPresenceRequired:Z

    return v0
.end method
