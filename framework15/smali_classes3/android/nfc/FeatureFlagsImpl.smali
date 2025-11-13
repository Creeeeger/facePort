.class public final Landroid/nfc/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/nfc/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist enableNfcCharging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableNfcMainline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNfcReaderOption()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNfcSetDiscoveryTech()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableNfcUserRestriction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableTagDetectionBroadcasts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist nfcObserveMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist nfcObserveModeStShim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist nfcOemExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist nfcReadPollingLoop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist nfcReadPollingLoopStShim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist nfcSetDefaultDiscTech()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist nfcStateChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist nfcVendorCmd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
