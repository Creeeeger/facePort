.class public final Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_CREDENTIALS_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_credentials_fix_enabled"

.field public static final blacklist FLAG_CLEAR_SESSION_ENABLED:Ljava/lang/String; = "android.credentials.flags.clear_session_enabled"

.field public static final blacklist FLAG_CONFIGURABLE_SELECTOR_UI_ENABLED:Ljava/lang/String; = "android.credentials.flags.configurable_selector_ui_enabled"

.field public static final blacklist FLAG_CREDMAN_BIOMETRIC_API_ENABLED:Ljava/lang/String; = "android.credentials.flags.credman_biometric_api_enabled"

.field public static final blacklist FLAG_HYBRID_FILTER_OPT_FIX_ENABLED:Ljava/lang/String; = "android.credentials.flags.hybrid_filter_opt_fix_enabled"

.field public static final blacklist FLAG_INSTANT_APPS_ENABLED:Ljava/lang/String; = "android.credentials.flags.instant_apps_enabled"

.field public static final blacklist FLAG_NEW_FRAMEWORK_METRICS:Ljava/lang/String; = "android.credentials.flags.new_framework_metrics"

.field public static final blacklist FLAG_NEW_SETTINGS_INTENTS:Ljava/lang/String; = "android.credentials.flags.new_settings_intents"

.field public static final blacklist FLAG_NEW_SETTINGS_UI:Ljava/lang/String; = "android.credentials.flags.new_settings_ui"

.field public static final blacklist FLAG_SELECTOR_UI_IMPROVEMENTS_ENABLED:Ljava/lang/String; = "android.credentials.flags.selector_ui_improvements_enabled"

.field public static final blacklist FLAG_SETTINGS_ACTIVITY_ENABLED:Ljava/lang/String; = "android.credentials.flags.settings_activity_enabled"

.field public static final blacklist FLAG_WEAR_CREDENTIAL_MANAGER_ENABLED:Ljava/lang/String; = "android.credentials.flags.wear_credential_manager_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearCredentialsFixEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearCredentialsFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearSessionEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->clearSessionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist configurableSelectorUiEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->configurableSelectorUiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist credmanBiometricApiEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->credmanBiometricApiEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist hybridFilterOptFixEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->hybridFilterOptFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist instantAppsEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->instantAppsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist newFrameworkMetrics()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newFrameworkMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist newSettingsIntents()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newSettingsIntents()Z

    move-result v0

    return v0
.end method

.method public static blacklist newSettingsUi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->newSettingsUi()Z

    move-result v0

    return v0
.end method

.method public static blacklist selectorUiImprovementsEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->selectorUiImprovementsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist settingsActivityEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->settingsActivityEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearCredentialManagerEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/FeatureFlags;->wearCredentialManagerEnabled()Z

    move-result v0

    return v0
.end method
