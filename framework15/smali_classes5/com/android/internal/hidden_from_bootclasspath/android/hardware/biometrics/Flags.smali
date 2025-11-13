.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_KEY_AGREEMENT_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.add_key_agreement_crypto_object"

.field public static final blacklist FLAG_CUSTOM_BIOMETRIC_PROMPT:Ljava/lang/String; = "android.hardware.biometrics.custom_biometric_prompt"

.field public static final blacklist FLAG_GET_OP_ID_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.get_op_id_crypto_object"

.field public static final blacklist FLAG_LAST_AUTHENTICATION_TIME:Ljava/lang/String; = "android.hardware.biometrics.last_authentication_time"

.field public static final blacklist FLAG_MANDATORY_BIOMETRICS:Ljava/lang/String; = "android.hardware.biometrics.mandatory_biometrics"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addKeyAgreementCryptoObject()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->addKeyAgreementCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist customBiometricPrompt()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->customBiometricPrompt()Z

    move-result v0

    return v0
.end method

.method public static blacklist getOpIdCryptoObject()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->getOpIdCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist lastAuthenticationTime()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->lastAuthenticationTime()Z

    move-result v0

    return v0
.end method

.method public static blacklist mandatoryBiometrics()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->mandatoryBiometrics()Z

    move-result v0

    return v0
.end method
