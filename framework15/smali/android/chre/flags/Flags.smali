.class public final Landroid/chre/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ABORT_IF_NO_CONTEXT_HUB_FOUND:Ljava/lang/String; = "android.chre.flags.abort_if_no_context_hub_found"

.field public static final blacklist FLAG_BUG_FIX_REDUCE_LOCK_HOLDING_PERIOD:Ljava/lang/String; = "android.chre.flags.bug_fix_reduce_lock_holding_period"

.field public static final blacklist FLAG_CONTEXT_HUB_CALLBACK_UUID_ENABLED:Ljava/lang/String; = "android.chre.flags.context_hub_callback_uuid_enabled"

.field public static final blacklist FLAG_FLAG_LOG_NANOAPP_LOAD_METRICS:Ljava/lang/String; = "android.chre.flags.flag_log_nanoapp_load_metrics"

.field public static final blacklist FLAG_METRICS_REPORTER_IN_THE_DAEMON:Ljava/lang/String; = "android.chre.flags.metrics_reporter_in_the_daemon"

.field public static final blacklist FLAG_RECONNECT_HOST_ENDPOINTS_AFTER_HAL_RESTART:Ljava/lang/String; = "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

.field public static final blacklist FLAG_REDUCE_LOCK_HOLDING_PERIOD:Ljava/lang/String; = "android.chre.flags.reduce_lock_holding_period"

.field public static final blacklist FLAG_RELIABLE_MESSAGE:Ljava/lang/String; = "android.chre.flags.reliable_message"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_DUPLICATE_DETECTION_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_duplicate_detection_service"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_IMPLEMENTATION:Ljava/lang/String; = "android.chre.flags.reliable_message_implementation"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_RETRY_SUPPORT_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_retry_support_service"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_TEST_MODE_BEHAVIOR:Ljava/lang/String; = "android.chre.flags.reliable_message_test_mode_behavior"

.field public static final blacklist FLAG_REMOVE_AP_WAKEUP_METRIC_REPORT_LIMIT:Ljava/lang/String; = "android.chre.flags.remove_ap_wakeup_metric_report_limit"

.field public static final blacklist FLAG_WAIT_FOR_PRELOADED_NANOAPP_START:Ljava/lang/String; = "android.chre.flags.wait_for_preloaded_nanoapp_start"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/chre/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/chre/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist abortIfNoContextHubFound()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->abortIfNoContextHubFound()Z

    move-result v0

    return v0
.end method

.method public static greylist bugFixReduceLockHoldingPeriod()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->bugFixReduceLockHoldingPeriod()Z

    move-result v0

    return v0
.end method

.method public static greylist contextHubCallbackUuidEnabled()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->contextHubCallbackUuidEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist flagLogNanoappLoadMetrics()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->flagLogNanoappLoadMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist metricsReporterInTheDaemon()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->metricsReporterInTheDaemon()Z

    move-result v0

    return v0
.end method

.method public static greylist reconnectHostEndpointsAfterHalRestart()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reconnectHostEndpointsAfterHalRestart()Z

    move-result v0

    return v0
.end method

.method public static greylist reduceLockHoldingPeriod()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reduceLockHoldingPeriod()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessage()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessage()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageDuplicateDetectionService()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageDuplicateDetectionService()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageImplementation()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageImplementation()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageRetrySupportService()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageRetrySupportService()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageTestModeBehavior()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageTestModeBehavior()Z

    move-result v0

    return v0
.end method

.method public static greylist removeApWakeupMetricReportLimit()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->removeApWakeupMetricReportLimit()Z

    move-result v0

    return v0
.end method

.method public static greylist waitForPreloadedNanoappStart()Z
    .locals 1

    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->waitForPreloadedNanoappStart()Z

    move-result v0

    return v0
.end method
