.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$ED25519;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final blacklist ALGORITHM_ED25519:I = 0x4b4

.field private static final blacklist ALGORITHM_XDH:I = 0x4b3

.field private static final blacklist CURVE_ED_25519:Ljava/lang/String;

.field private static final blacklist CURVE_X_25519:Ljava/lang/String;

.field private static final blacklist EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final blacklist RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final blacklist RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final blacklist RSA_MIN_KEY_SIZE:I = 0x200

.field private static final blacklist SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyPairGeneratorSpi"


# instance fields
.field private blacklist mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private blacklist mEcCurveName:Ljava/lang/String;

.field private blacklist mEntryAlias:Ljava/lang/String;

.field private blacklist mEntryNamespace:I

.field private blacklist mJcaKeyAlgorithm:Ljava/lang/String;

.field private blacklist mKeySizeBits:I

.field private blacklist mKeyStore:Landroid/security/KeyStore2;

.field private blacklist mKeymasterAlgorithm:I

.field private blacklist mKeymasterBlockModes:[I

.field private blacklist mKeymasterDigests:[I

.field private blacklist mKeymasterEncryptionPaddings:[I

.field private blacklist mKeymasterMgf1Digests:[I

.field private blacklist mKeymasterPurposes:[I

.field private blacklist mKeymasterSignaturePaddings:[I

.field private final blacklist mOriginalKeymasterAlgorithm:I

.field private blacklist mRSAPublicExponent:Ljava/lang/Long;

.field private blacklist mRng:Ljava/security/SecureRandom;

.field private blacklist mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uq-ej-_uP9op_zzRJcYZYnWQBFU(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp224r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp256r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "prime256v1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp384r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "p-521"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v2, "secp521r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    return-void
.end method

.method private blacklist addAlgorithmSpecificParameters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const v2, 0x500000c8

    invoke-static {v2, v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeLong(IJ)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist addAttestationParameters(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_e

    const v1, -0x6ffffd3c

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    :goto_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const v3, -0x6ffffd3a

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    :goto_1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const v4, -0x6ffffd39

    invoke-static {v4, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    :goto_2
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const v5, -0x6ffffd38

    invoke-static {v5, v4}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v4, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    :goto_3
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const v6, -0x6ffffd34

    invoke-static {v6, v5}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_4

    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    :goto_4
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const v7, -0x6ffffd33

    invoke-static {v7, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_6

    return-void

    :cond_6
    new-instance v2, Landroid/util/ArraySet;

    array-length v3, v1

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_7

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_d

    :cond_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown device ID type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    const v7, 0x700002d0

    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_1
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const v9, -0x6ffffd35

    invoke-static {v9, v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    new-instance v4, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v5, "Unable to retrieve MEID"

    invoke-direct {v4, v5}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_2
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const v9, -0x6ffffd36

    invoke-static {v9, v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const v10, -0x6ffffd2d

    invoke-static {v10, v9}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    new-instance v4, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v5, "Unable to retrieve IMEI"

    invoke-direct {v4, v5}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_3
    nop

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const v8, -0x6ffffd37

    invoke-static {v8, v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :cond_c
    :goto_7
    goto/16 :goto_6

    :cond_d
    new-instance v4, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v5, "Unable to access telephony service"

    invoke-direct {v4, v5}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V

    iget-object v2, v1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v2, v2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    invoke-direct {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V

    invoke-direct {p0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Invalid attestKeyAlias"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;
    .locals 9

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "MD5"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "PKCS1Padding"

    const-string v3, "OAEPPadding"

    const-string v4, "NoPadding"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "PKCS1"

    const-string v3, "PSS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_1

    nop

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist checkAttestKeyChallenge(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "AttestKey specified but no attestation challenge provided"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PURPOSE_ATTEST_KEY may not be specified with any other purposes"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkAttestKeyPurpose([Landroid/system/keystore2/Authorization;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid attestKey, does not have PURPOSE_ATTEST_KEY"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist checkAttestKeySecurityLevel(Landroid/security/keystore/KeyGenParameterSpec;Landroid/system/keystore2/KeyEntryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget v0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v1

    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_1

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid security level: Cannot sign non-StrongBox key with StrongBox attestKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Invalid security level: Cannot sign StrongBox key with non-StrongBox attestKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private blacklist checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "x25519 may only be used for key agreement."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->hasOnlyAllowedPurposeForEd25519(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ed25519 may not be used for key agreement."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private static blacklist checkValidKeySize(IIZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz p2, :cond_1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported StrongBox EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: 256"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported StrongBox EC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    sget-object v0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/16 v0, 0x200

    if-lt p1, v0, :cond_5

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist constructKeyGenerationArguments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x30000003

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x10000002

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->keySizeAndNameToEcCurve(ILjava/lang/String;)I

    move-result v1

    const v2, 0x1000000a

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda5;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000190

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000191

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000192

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    const v2, 0x600003f1

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    const v2, 0x600003f0

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    const v2, -0x7ffffc12

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBignum(ILjava/math/BigInteger;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    const v2, -0x6ffffc11

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v1

    const v2, 0x30000195

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Ljava/util/List;)V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x700000ca

    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->addAttestationParameters(Ljava/util/List;)V

    return-object v0
.end method

.method private static blacklist getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private static blacklist getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v7

    if-ne v7, p1, :cond_3

    move v3, v6

    move v4, v7

    goto :goto_2

    :cond_3
    if-ne v3, v0, :cond_4

    move v3, v6

    move v4, v7

    goto :goto_1

    :cond_4
    if-ge v4, p1, :cond_5

    if-le v7, v4, :cond_6

    move v3, v6

    move v4, v7

    goto :goto_1

    :cond_5
    if-ge v7, v4, :cond_6

    if-lt v7, p1, :cond_6

    move v3, v6

    move v4, v7

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    :goto_2
    if-ne v3, v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WithECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    add-int/lit16 v4, p1, -0xf0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v9

    if-le v9, v4, :cond_a

    goto :goto_3

    :cond_a
    if-ne v5, v0, :cond_b

    move v5, v8

    move v6, v9

    goto :goto_4

    :cond_b
    if-le v9, v6, :cond_c

    move v5, v8

    move v6, v9

    :cond_c
    :goto_4
    goto :goto_3

    :cond_d
    if-ne v5, v0, :cond_e

    return-object v1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WithRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getDefaultKeySize(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v0, 0x100

    return v0

    :pswitch_2
    const/16 v0, 0x800

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    nop

    :try_start_0
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Invalid key type in parameters"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    return p1
.end method

.method private static blacklist getMgf1DigestSetterFlag()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/security/Flags;->mgf1DigestSetterV2()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v2, "Cannot read MGF1 Digest setter flag value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist hasOnlyAllowedPurposeForEd25519(I)Z
    .locals 5

    const/16 v0, 0x8c

    and-int/lit16 v1, p0, 0x8c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v4, p0, -0x8d

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method private blacklist initAlgorithmSpecificParameters()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const-string v2, " vs "

    const-string v3, ": "

    const-string v4, " and "

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    instance-of v1, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v7, 0x4b3

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    const-string/jumbo v7, "x25519"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "XDH algorithm only supports x25519 curve."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v7, 0x4b4

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    const-string v7, "ed25519"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Ed25519 algorithm only supports ed25519 curve."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    sget-object v6, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v7, v5, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_2

    :cond_4
    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v5, v7, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EC key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported EC curve name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-nez v0, :cond_8

    :goto_2
    goto/16 :goto_5

    :cond_8
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "EC may only use ECGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    const/4 v1, 0x0

    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v6, :cond_b

    move-object v6, v0

    check-cast v6, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v7, v5, :cond_9

    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_3

    :cond_9
    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v8

    if-ne v7, v8, :cond_a

    :goto_3
    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    if-nez v0, :cond_f

    :goto_4
    nop

    if-nez v1, :cond_c

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    :cond_c
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_e

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eq v2, v5, :cond_d

    sget-object v2, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_d

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    nop

    :goto_5
    return-void

    :cond_d
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported RSA public exponent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Maximum supported value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA public exponent must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist isCurve25519(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_X_25519:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->CURVE_ED_25519:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private blacklist isPropertyEmptyOrUnknown(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist keySizeAndNameToEcCurve(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC curve keysize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x3

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->isCurve25519(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :sswitch_3
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_3
        0x100 -> :sswitch_2
        0x180 -> :sswitch_1
        0x209 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$checkAttestKeyPurpose$0(Landroid/system/keystore2/Authorization;)Z
    .locals 2

    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, 0x20000001

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$1(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$2(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000004

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$3(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x200000cb

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$4(ILjava/util/List;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_0

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x200000cb

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$constructKeyGenerationArguments$5(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 4

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-static {v0}, Landroid/security/keystore2/KeymasterUtils;->isKeyMintDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getMgf1DigestSetterFlag()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SHA-1"

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$6(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$constructKeyGenerationArguments$7(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist resetAll()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/lang/Long;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .locals 14

    const-string v0, "Failed to delete newly generated key after generation failed unexpectedly."

    const-string v1, "AndroidKeyStoreKeyPairGeneratorSpi"

    const-string v2, "generateKeyPair"

    invoke-static {v2}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    nop

    iget-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    nop

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v13, 0x7

    add-int/2addr v5, v13

    div-int/lit8 v5, v5, 0x8

    invoke-static {v4, v5}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v4

    new-instance v5, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v5}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v7, v5, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iget v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput v3, v5, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    int-to-long v6, v3

    iput-wide v6, v5, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const/4 v3, 0x0

    iput-object v3, v5, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v6, v2}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v6

    iget-object v9, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Ljava/util/Collection;

    move-result-object v10

    move-object v7, v6

    move-object v8, v5

    move-object v12, v4

    invoke-virtual/range {v7 .. v12}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v7

    iget v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v5, v7, v6, v8}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object v8

    const/4 v3, 0x1

    new-instance v9, Ljava/security/KeyPair;

    invoke-virtual {v8}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/keystore/DeviceIdAttestationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    :try_start_1
    iget-object v10, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v10, v5}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v12

    if-eq v12, v13, :cond_3

    invoke-static {v1, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-object v9

    :catchall_0
    move-exception v6

    goto :goto_5

    :catch_1
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/security/ProviderException;

    const-string v8, "Failed to construct key object from newly generated key pair."

    invoke-direct {v7, v8, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v7, Ljava/security/ProviderException;

    goto :goto_4

    :pswitch_0
    new-instance v7, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v8, "Failed to generated key pair."

    invoke-direct {v7, v8, v6}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :goto_4
    const-string v8, "Failed to generate key pair."

    invoke-direct {v7, v8, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v8, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v8}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_4

    new-instance v8, Landroid/security/keystore/SecureKeyImportUnavailableException;

    invoke-direct {v8, v7}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :cond_4
    nop

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-nez v3, :cond_5

    :try_start_3
    iget-object v7, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v7, v5}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_3
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v8

    if-eq v8, v13, :cond_5

    invoke-static {v1, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_6
    throw v6

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x44
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    const/4 v0, 0x0

    const-string v1, " or "

    if-eqz p1, :cond_f

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v4, 0x4b3

    if-eq v3, v4, :cond_1

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    const/16 v4, 0x4b4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x3

    :goto_1
    instance-of v4, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v4, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    goto :goto_2

    :cond_2
    instance-of v4, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v4, :cond_b

    move-object v1, p1

    check-cast v1, Landroid/security/KeyPairGeneratorSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getKeymasterAlgorithmFromLegacy(ILandroid/security/KeyPairGeneratorSpec;)I

    move-result v4

    move v3, v4

    invoke-direct {p0, v1, v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildKeyGenParameterSpecFromLegacy(Landroid/security/KeyPairGeneratorSpec;I)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    move-object v1, v4

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryNamespace:I

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    invoke-static {v3}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    move-result v4

    iput v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    :cond_3
    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v5

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mEcCurveName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(IIZLjava/lang/String;)V

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_a

    :try_start_3
    invoke-static {v3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    nop

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget v8, v5, v7

    nop

    invoke-static {v8}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". See "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " documentation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    nop

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_4

    :cond_6
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    :goto_4
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v6

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    goto :goto_6

    :cond_8
    const-string v5, "SHA-1"

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v5

    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterMgf1Digests:[I

    :goto_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v5, v6}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    iput-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->buildAndCheckAttestKeyDescriptor(Landroid/security/keystore/KeyGenParameterSpec;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v5

    iput-object v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->mAttestKeyDescriptor:Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkAttestKeyPurpose(Landroid/security/keystore/KeyGenParameterSpec;)V

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->checkCorrectKeyPurposeForCurve(Landroid/security/keystore/KeyGenParameterSpec;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_9

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_9
    return-void

    :catch_0
    move-exception v4

    :try_start_5
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_a
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "KeyStore entry alias not provided"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v4

    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_b
    instance-of v4, p1, Ljava/security/spec/NamedParameterSpec;

    if-eqz v4, :cond_e

    move-object v4, p1

    check-cast v4, Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/security/spec/NamedParameterSpec;->X25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported algorithm specified via NamedParameterSpec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This KeyPairGenerator cannot be initialized using NamedParameterSpec. use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v6, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported params class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_8

    :cond_f
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must supply params of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_10
    throw v1
.end method
