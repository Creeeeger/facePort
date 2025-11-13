.class public final Landroid/chre/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/chre/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist abortIfNoContextHubFound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist bugFixReduceLockHoldingPeriod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist contextHubCallbackUuidEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist flagLogNanoappLoadMetrics()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist metricsReporterInTheDaemon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist reconnectHostEndpointsAfterHalRestart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist reduceLockHoldingPeriod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist reliableMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist reliableMessageDuplicateDetectionService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist reliableMessageImplementation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist reliableMessageRetrySupportService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist reliableMessageTestModeBehavior()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist removeApWakeupMetricReportLimit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist waitForPreloadedNanoappStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
