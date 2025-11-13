.class public final Landroid/hardware/usb/UsbPortStatus$Builder;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mComplianceWarnings:[I

.field private blacklist mContaminantDetectionStatus:I

.field private blacklist mContaminantProtectionStatus:I

.field private blacklist mCurrentDataRole:I

.field private blacklist mCurrentMode:I

.field private blacklist mCurrentPowerRole:I

.field private blacklist mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field private blacklist mPlugState:I

.field private blacklist mPowerBrickConnectionStatus:I

.field private blacklist mPowerTransferLimited:Z

.field private blacklist mSupportedRoleCombinations:I

.field private blacklist mUsbDataStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/usb/UsbPortStatus;
    .locals 14

    new-instance v13, Landroid/hardware/usb/UsbPortStatus;

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iget v3, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iget v4, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    iget v5, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iget v6, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iget v7, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iget-boolean v8, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    iget v9, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    iget-object v10, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    iget v11, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    iget-object v12, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-object v0
.end method

.method public blacklist setComplianceWarnings([I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    return-object p0
.end method

.method public blacklist setContaminantStatus(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    return-object p0
.end method

.method public blacklist setCurrentMode(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    return-object p0
.end method

.method public blacklist setCurrentRoles(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    return-object p0
.end method

.method public blacklist setDisplayPortAltModeInfo(Landroid/hardware/usb/DisplayPortAltModeInfo;)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-object p0
.end method

.method public blacklist setPlugState(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    return-object p0
.end method

.method public blacklist setPowerBrickConnectionStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    return-object p0
.end method

.method public blacklist setPowerTransferLimited(Z)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    return-object p0
.end method

.method public blacklist setSupportedRoleCombinations(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    return-object p0
.end method

.method public blacklist setUsbDataStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    return-object p0
.end method
