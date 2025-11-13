.class public final Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addSfSkippedFramesToTrace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfGpuSf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowNVsyncsInTargeter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist ceFencePromise()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist commitNotComposited()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist connectedDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateVsyncSf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist detachedMirror()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayProtected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist dontSkipOnEarlyRo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFroDependentFeatures()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableLayerCommandBatching()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSmallAreaDetection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist flushBufferSlotsToUncache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist forceCompileGraphiteRenderengine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist fp16ClientTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist frameRateCategoryMrr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist gameDefaultFrameRate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist graphiteRenderengine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist hdcpLevelHal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist hotplug2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist latchUnsignaledWithAutoRefreshChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist localTonemapScreenshots()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist misc1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist multithreadedPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist overrideTrustedOverlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist protectedIfClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist refreshRateOverlayOnExternalDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist renderableBufferUsage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist restoreBlurStep()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist screenshotFencePreservation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist singleHopScreenshot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist useKnownRefreshRateForFpsConsistency()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist vrrBugfix24q4()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrBugfixDroppedFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrConfig()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist vulkanRenderengine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
