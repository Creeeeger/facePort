.class public final Landroid/security/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/security/FeatureFlags; = null

.field public static final blacklist FLAG_ASM_OPT_SYSTEM_INTO_ENFORCEMENT:Ljava/lang/String; = "android.security.asm_opt_system_into_enforcement"

.field public static final blacklist FLAG_ASM_RESTRICTIONS_ENABLED:Ljava/lang/String; = "android.security.asm_restrictions_enabled"

.field public static final blacklist FLAG_ASM_TOASTS_ENABLED:Ljava/lang/String; = "android.security.asm_toasts_enabled"

.field public static final blacklist FLAG_BINARY_TRANSPARENCY_SEPOLICY_HASH:Ljava/lang/String; = "android.security.binary_transparency_sepolicy_hash"

.field public static final blacklist FLAG_BLOCK_NULL_ACTION_INTENTS:Ljava/lang/String; = "android.security.block_null_action_intents"

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_CONFIGURATION:Ljava/lang/String; = "android.security.certificate_transparency_configuration"

.field public static final blacklist FLAG_CONTENT_URI_PERMISSION_APIS:Ljava/lang/String; = "android.security.content_uri_permission_apis"

.field public static final blacklist FLAG_DEPRECATE_FSV_SIG:Ljava/lang/String; = "android.security.deprecate_fsv_sig"

.field public static final blacklist FLAG_DUMP_ATTESTATION_VERIFICATIONS:Ljava/lang/String; = "android.security.dump_attestation_verifications"

.field public static final blacklist FLAG_ENFORCE_INTENT_FILTER_MATCH:Ljava/lang/String; = "android.security.enforce_intent_filter_match"

.field public static final blacklist FLAG_EXTEND_ECM_TO_ALL_SETTINGS:Ljava/lang/String; = "android.security.extend_ecm_to_all_settings"

.field public static final blacklist FLAG_EXTEND_VB_CHAIN_TO_UPDATED_APK:Ljava/lang/String; = "android.security.extend_vb_chain_to_updated_apk"

.field public static final blacklist FLAG_FIX_UNLOCKED_DEVICE_REQUIRED_KEYS_V2:Ljava/lang/String; = "android.security.fix_unlocked_device_required_keys_v2"

.field public static final blacklist FLAG_FRP_ENFORCEMENT:Ljava/lang/String; = "android.security.frp_enforcement"

.field public static final blacklist FLAG_FSVERITY_API:Ljava/lang/String; = "android.security.fsverity_api"

.field public static final blacklist FLAG_KEYINFO_UNLOCKED_DEVICE_REQUIRED:Ljava/lang/String; = "android.security.keyinfo_unlocked_device_required"

.field public static final blacklist FLAG_MGF1_DIGEST_SETTER_V2:Ljava/lang/String; = "android.security.mgf1_digest_setter_v2"

.field public static final blacklist FLAG_REPORT_PRIMARY_AUTH_ATTEMPTS:Ljava/lang/String; = "android.security.report_primary_auth_attempts"

.field public static final blacklist FLAG_SIGNIFICANT_PLACES:Ljava/lang/String; = "android.security.significant_places"

.field public static final blacklist FLAG_UNLOCKED_STORAGE_API:Ljava/lang/String; = "android.security.unlocked_storage_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/security/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist asmOptSystemIntoEnforcement()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->asmOptSystemIntoEnforcement()Z

    move-result v0

    return v0
.end method

.method public static greylist asmRestrictionsEnabled()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->asmRestrictionsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist asmToastsEnabled()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->asmToastsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist binaryTransparencySepolicyHash()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->binaryTransparencySepolicyHash()Z

    move-result v0

    return v0
.end method

.method public static greylist blockNullActionIntents()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->blockNullActionIntents()Z

    move-result v0

    return v0
.end method

.method public static greylist certificateTransparencyConfiguration()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->certificateTransparencyConfiguration()Z

    move-result v0

    return v0
.end method

.method public static greylist contentUriPermissionApis()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->contentUriPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateFsvSig()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->deprecateFsvSig()Z

    move-result v0

    return v0
.end method

.method public static greylist dumpAttestationVerifications()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->dumpAttestationVerifications()Z

    move-result v0

    return v0
.end method

.method public static greylist enforceIntentFilterMatch()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->enforceIntentFilterMatch()Z

    move-result v0

    return v0
.end method

.method public static greylist extendEcmToAllSettings()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->extendEcmToAllSettings()Z

    move-result v0

    return v0
.end method

.method public static greylist extendVbChainToUpdatedApk()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->extendVbChainToUpdatedApk()Z

    move-result v0

    return v0
.end method

.method public static greylist fixUnlockedDeviceRequiredKeysV2()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->fixUnlockedDeviceRequiredKeysV2()Z

    move-result v0

    return v0
.end method

.method public static greylist frpEnforcement()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->frpEnforcement()Z

    move-result v0

    return v0
.end method

.method public static greylist fsverityApi()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->fsverityApi()Z

    move-result v0

    return v0
.end method

.method public static greylist keyinfoUnlockedDeviceRequired()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->keyinfoUnlockedDeviceRequired()Z

    move-result v0

    return v0
.end method

.method public static greylist mgf1DigestSetterV2()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->mgf1DigestSetterV2()Z

    move-result v0

    return v0
.end method

.method public static greylist reportPrimaryAuthAttempts()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->reportPrimaryAuthAttempts()Z

    move-result v0

    return v0
.end method

.method public static greylist significantPlaces()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->significantPlaces()Z

    move-result v0

    return v0
.end method

.method public static greylist unlockedStorageApi()Z
    .locals 1

    sget-object v0, Landroid/security/Flags;->FEATURE_FLAGS:Landroid/security/FeatureFlags;

    invoke-interface {v0}, Landroid/security/FeatureFlags;->unlockedStorageApi()Z

    move-result v0

    return v0
.end method
