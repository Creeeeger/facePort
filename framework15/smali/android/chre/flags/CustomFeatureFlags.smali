.class public Landroid/chre/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/chre/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v15, "android.chre.flags.wait_for_preloaded_nanoapp_start"

    const-string v16, ""

    const-string v2, "android.chre.flags.abort_if_no_context_hub_found"

    const-string v3, "android.chre.flags.bug_fix_reduce_lock_holding_period"

    const-string v4, "android.chre.flags.context_hub_callback_uuid_enabled"

    const-string v5, "android.chre.flags.flag_log_nanoapp_load_metrics"

    const-string v6, "android.chre.flags.metrics_reporter_in_the_daemon"

    const-string v7, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    const-string v8, "android.chre.flags.reduce_lock_holding_period"

    const-string v9, "android.chre.flags.reliable_message"

    const-string v10, "android.chre.flags.reliable_message_duplicate_detection_service"

    const-string v11, "android.chre.flags.reliable_message_implementation"

    const-string v12, "android.chre.flags.reliable_message_retry_support_service"

    const-string v13, "android.chre.flags.reliable_message_test_mode_behavior"

    const-string v14, "android.chre.flags.remove_ap_wakeup_metric_report_limit"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/chre/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/chre/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist abortIfNoContextHubFound()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.chre.flags.abort_if_no_context_hub_found"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bugFixReduceLockHoldingPeriod()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.chre.flags.bug_fix_reduce_lock_holding_period"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist contextHubCallbackUuidEnabled()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.chre.flags.context_hub_callback_uuid_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist flagLogNanoappLoadMetrics()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.chre.flags.flag_log_nanoapp_load_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v12, "android.chre.flags.remove_ap_wakeup_metric_report_limit"

    const-string v13, "android.chre.flags.wait_for_preloaded_nanoapp_start"

    const-string v0, "android.chre.flags.abort_if_no_context_hub_found"

    const-string v1, "android.chre.flags.bug_fix_reduce_lock_holding_period"

    const-string v2, "android.chre.flags.context_hub_callback_uuid_enabled"

    const-string v3, "android.chre.flags.flag_log_nanoapp_load_metrics"

    const-string v4, "android.chre.flags.metrics_reporter_in_the_daemon"

    const-string v5, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    const-string v6, "android.chre.flags.reduce_lock_holding_period"

    const-string v7, "android.chre.flags.reliable_message"

    const-string v8, "android.chre.flags.reliable_message_duplicate_detection_service"

    const-string v9, "android.chre.flags.reliable_message_implementation"

    const-string v10, "android.chre.flags.reliable_message_retry_support_service"

    const-string v11, "android.chre.flags.reliable_message_test_mode_behavior"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/chre/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/chre/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/chre/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist metricsReporterInTheDaemon()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.chre.flags.metrics_reporter_in_the_daemon"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reconnectHostEndpointsAfterHalRestart()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reduceLockHoldingPeriod()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.chre.flags.reduce_lock_holding_period"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessage()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.chre.flags.reliable_message"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageDuplicateDetectionService()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_duplicate_detection_service"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageImplementation()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_implementation"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageRetrySupportService()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_retry_support_service"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageTestModeBehavior()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_test_mode_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeApWakeupMetricReportLimit()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.chre.flags.remove_ap_wakeup_metric_report_limit"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist waitForPreloadedNanoappStart()Z
    .locals 2

    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.chre.flags.wait_for_preloaded_nanoapp_start"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
