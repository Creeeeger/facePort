.class public final Landroid/companion/virtualdevice/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/companion/virtualdevice/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist cameraDeviceAwareness()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist deviceAwareDrm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist deviceAwareRecordAudioPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist intentInterceptionActionMatchingFix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist metricsCollection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist virtualCameraServiceDiscovery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist virtualDisplayMultiWindowModeSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
