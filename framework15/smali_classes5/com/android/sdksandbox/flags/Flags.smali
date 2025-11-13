.class public final Lcom/android/sdksandbox/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags; = null

.field public static final blacklist FLAG_FIRST_AND_LAST_SDK_SANDBOX_UID_PUBLIC:Ljava/lang/String; = "com.android.sdksandbox.flags.first_and_last_sdk_sandbox_uid_public"

.field public static final blacklist FLAG_GET_EFFECTIVE_TARGET_SDK_VERSION_API:Ljava/lang/String; = "com.android.sdksandbox.flags.get_effective_target_sdk_version_api"

.field public static final blacklist FLAG_SANDBOX_ACTIVITY_SDK_BASED_CONTEXT:Ljava/lang/String; = "com.android.sdksandbox.flags.sandbox_activity_sdk_based_context"

.field public static final blacklist FLAG_SANDBOX_CLIENT_IMPORTANCE_LISTENER:Ljava/lang/String; = "com.android.sdksandbox.flags.sandbox_client_importance_listener"

.field public static final blacklist FLAG_SDK_SANDBOX_DEX_VERIFIER:Ljava/lang/String; = "com.android.sdksandbox.flags.sdk_sandbox_dex_verifier"

.field public static final blacklist FLAG_SDK_SANDBOX_INSTRUMENTATION_INFO:Ljava/lang/String; = "com.android.sdksandbox.flags.sdk_sandbox_instrumentation_info"

.field public static final blacklist FLAG_SDK_SANDBOX_UID_TO_APP_UID_API:Ljava/lang/String; = "com.android.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

.field public static final blacklist FLAG_SELINUX_INPUT_SELECTOR:Ljava/lang/String; = "com.android.sdksandbox.flags.selinux_input_selector"

.field public static final blacklist FLAG_SELINUX_SDK_SANDBOX_AUDIT:Ljava/lang/String; = "com.android.sdksandbox.flags.selinux_sdk_sandbox_audit"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/sdksandbox/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/sdksandbox/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist firstAndLastSdkSandboxUidPublic()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->firstAndLastSdkSandboxUidPublic()Z

    move-result v0

    return v0
.end method

.method public static greylist getEffectiveTargetSdkVersionApi()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->getEffectiveTargetSdkVersionApi()Z

    move-result v0

    return v0
.end method

.method public static greylist sandboxActivitySdkBasedContext()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->sandboxActivitySdkBasedContext()Z

    move-result v0

    return v0
.end method

.method public static greylist sandboxClientImportanceListener()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->sandboxClientImportanceListener()Z

    move-result v0

    return v0
.end method

.method public static greylist sdkSandboxDexVerifier()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->sdkSandboxDexVerifier()Z

    move-result v0

    return v0
.end method

.method public static greylist sdkSandboxInstrumentationInfo()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->sdkSandboxInstrumentationInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist sdkSandboxUidToAppUidApi()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->sdkSandboxUidToAppUidApi()Z

    move-result v0

    return v0
.end method

.method public static greylist selinuxInputSelector()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->selinuxInputSelector()Z

    move-result v0

    return v0
.end method

.method public static greylist selinuxSdkSandboxAudit()Z
    .locals 1

    sget-object v0, Lcom/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/sdksandbox/flags/FeatureFlags;->selinuxSdkSandboxAudit()Z

    move-result v0

    return v0
.end method
