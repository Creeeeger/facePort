.class public final Lcom/android/server/display/feature/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/display/feature/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist alwaysRotateDisplayDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist autoBrightnessModes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist brightnessIntRangeUserPerception()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist brightnessWearBedtimeModeClamper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableConnectedDisplayErrorHandling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableConnectedDisplayManagement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayOffload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayResolutionRangeVoting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplaysRefreshRatesSynchronization()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableHdrClamper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableModeLimitForExternalDisplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNbmController()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePeakRefreshRatePhysicalLimit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePixelAnisotropyCorrection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePortInDisplayLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePowerThrottlingClamper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableRestrictDisplayModes()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSynthetic60hzModes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableUserPreferredModeVote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableVsyncLowLightVote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableVsyncLowPowerVote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist evenDimmer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist fastHdrTransitions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist idleScreenRefreshRateTimeout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAppPreferredRefreshRateRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist offloadControlsDozeAutoBrightness()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist offloadDozeOverrideHoldsWakelock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist refactorDisplayPowerController()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist refreshRateVotingTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolutionBackupRestore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist sensorBasedBrightnessThrottling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useFusionProxSensor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
