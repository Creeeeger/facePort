.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableInputPowerLimitedWarning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableInterfaceNameDeviceFilter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableIsModeChangeSupportedApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIsPdCompliantApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableReportUsbDataComplianceWarning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUsbDataComplianceWarning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUsbDataSignalStaking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableUsbSysfsMidiIdentification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
