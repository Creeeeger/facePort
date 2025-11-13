.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_DATA_REQUEST_OBSERVER_API:Ljava/lang/String; = "android.app.wearable.enable_data_request_observer_api"

.field public static final blacklist FLAG_ENABLE_HOTWORD_WEARABLE_SENSING_API:Ljava/lang/String; = "android.app.wearable.enable_hotword_wearable_sensing_api"

.field public static final blacklist FLAG_ENABLE_PROVIDE_WEARABLE_CONNECTION_API:Ljava/lang/String; = "android.app.wearable.enable_provide_wearable_connection_api"

.field public static final blacklist FLAG_ENABLE_RESTART_WSS_PROCESS:Ljava/lang/String; = "android.app.wearable.enable_restart_wss_process"

.field public static final blacklist FLAG_ENABLE_UNSUPPORTED_OPERATION_STATUS_CODE:Ljava/lang/String; = "android.app.wearable.enable_unsupported_operation_status_code"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableDataRequestObserverApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;->enableDataRequestObserverApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableHotwordWearableSensingApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;->enableHotwordWearableSensingApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableProvideWearableConnectionApi()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;->enableProvideWearableConnectionApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableRestartWssProcess()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;->enableRestartWssProcess()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableUnsupportedOperationStatusCode()Z
    .locals 1

    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/FeatureFlags;->enableUnsupportedOperationStatusCode()Z

    move-result v0

    return v0
.end method
