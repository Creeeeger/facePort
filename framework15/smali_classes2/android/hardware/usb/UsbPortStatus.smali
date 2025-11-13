.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$Builder;,
        Landroid/hardware/usb/UsbPortStatus$PowerBrickConnectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataStatus;,
        Landroid/hardware/usb/UsbPortStatus$PlugState;,
        Landroid/hardware/usb/UsbPortStatus$ComplianceWarning;,
        Landroid/hardware/usb/UsbPortStatus$UsbPortMode;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantProtectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantDetectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataRole;,
        Landroid/hardware/usb/UsbPortStatus$UsbPowerRole;
    }
.end annotation


# static fields
.field public static final whitelist COMPLIANCE_WARNING_BC_1_2:I = 0x3

.field public static final whitelist COMPLIANCE_WARNING_DEBUG_ACCESSORY:I = 0x2

.field public static final whitelist COMPLIANCE_WARNING_ENUMERATION_FAIL:I = 0x7

.field public static final whitelist COMPLIANCE_WARNING_FLAKY_CONNECTION:I = 0x8

.field public static final whitelist COMPLIANCE_WARNING_INPUT_POWER_LIMITED:I = 0x5

.field public static final whitelist COMPLIANCE_WARNING_MISSING_DATA_LINES:I = 0x6

.field public static final whitelist COMPLIANCE_WARNING_MISSING_RP:I = 0x4

.field public static final whitelist COMPLIANCE_WARNING_OTHER:I = 0x1

.field public static final whitelist COMPLIANCE_WARNING_UNRELIABLE_IO:I = 0x9

.field public static final blacklist CONTAMINANT_DETECTION_DETECTED:I = 0x3

.field public static final blacklist CONTAMINANT_DETECTION_DISABLED:I = 0x1

.field public static final blacklist CONTAMINANT_DETECTION_NOT_DETECTED:I = 0x2

.field public static final blacklist CONTAMINANT_DETECTION_NOT_SUPPORTED:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_DISABLED:I = 0x8

.field public static final blacklist CONTAMINANT_PROTECTION_FORCE_DISABLE:I = 0x4

.field public static final blacklist CONTAMINANT_PROTECTION_NONE:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_SINK:I = 0x1

.field public static final blacklist CONTAMINANT_PROTECTION_SOURCE:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_ROLE_DEVICE:I = 0x2

.field public static final whitelist DATA_ROLE_HOST:I = 0x1

.field public static final whitelist DATA_ROLE_NONE:I = 0x0

.field public static final whitelist DATA_STATUS_DISABLED_CONTAMINANT:I = 0x4

.field public static final whitelist DATA_STATUS_DISABLED_DEBUG:I = 0x20

.field public static final whitelist DATA_STATUS_DISABLED_DOCK:I = 0x8

.field public static final whitelist DATA_STATUS_DISABLED_DOCK_DEVICE_MODE:I = 0x80

.field public static final whitelist DATA_STATUS_DISABLED_DOCK_HOST_MODE:I = 0x40

.field public static final whitelist DATA_STATUS_DISABLED_FORCE:I = 0x10

.field public static final whitelist DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final whitelist DATA_STATUS_ENABLED:I = 0x1

.field public static final whitelist DATA_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final whitelist MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final whitelist MODE_DFP:I = 0x2

.field public static final blacklist MODE_DUAL:I = 0x3

.field public static final whitelist MODE_NONE:I = 0x0

.field public static final whitelist MODE_UFP:I = 0x1

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_FLIPPED:I = 0x4

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_NORMAL:I = 0x3

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_UNKNOWN:I = 0x2

.field public static final whitelist PLUG_STATE_UNKNOWN:I = 0x0

.field public static final whitelist PLUG_STATE_UNPLUGGED:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_CONNECTED:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_DISCONNECTED:I = 0x2

.field public static final whitelist POWER_BRICK_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist POWER_ROLE_NONE:I = 0x0

.field public static final whitelist POWER_ROLE_SINK:I = 0x2

.field public static final whitelist POWER_ROLE_SOURCE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"


# instance fields
.field private final blacklist mComplianceWarnings:[I

.field private final blacklist mContaminantDetectionStatus:I

.field private final blacklist mContaminantProtectionStatus:I

.field private final greylist-max-o mCurrentDataRole:I

.field private final greylist-max-o mCurrentMode:I

.field private final greylist-max-o mCurrentPowerRole:I

.field private final blacklist mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field private final blacklist mPlugState:I

.field private final blacklist mPowerBrickConnectionStatus:I

.field private final blacklist mPowerTransferLimited:Z

.field private final greylist-max-o mSupportedRoleCombinations:I

.field private final blacklist mUsbDataStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .locals 14

    const/4 v0, 0x0

    new-array v11, v0, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZI)V
    .locals 14

    const/4 v0, 0x0

    new-array v11, v0, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    and-int/lit16 v0, p7, 0xc0

    if-eqz v0, :cond_0

    or-int/lit8 p7, p7, 0x8

    goto :goto_0

    :cond_0
    and-int/lit8 p7, p7, -0x9

    :goto_0
    iput p7, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    iput-boolean p8, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    iput p9, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    iput-object p10, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    iput p11, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    iput-object p12, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getComplianceWarnings()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    return-object v0
.end method

.method public blacklist getContaminantDetectionStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    return v0
.end method

.method public blacklist getContaminantProtectionStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    return v0
.end method

.method public whitelist getCurrentDataRole()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    return v0
.end method

.method public whitelist getCurrentMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    return v0
.end method

.method public whitelist getCurrentPowerRole()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    return v0
.end method

.method public whitelist getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    :goto_0
    return-object v0
.end method

.method public whitelist getPlugState()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    return v0
.end method

.method public whitelist getPowerBrickConnectionStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    return v0
.end method

.method public whitelist getSupportedRoleCombinations()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return v0
.end method

.method public whitelist getUsbDataStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    return v0
.end method

.method public whitelist isConnected()Z
    .locals 1

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isPdCompliant()Z
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isPowerTransferLimited()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    return v0
.end method

.method public whitelist isRoleCombinationSupported(II)Z
    .locals 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbPortStatus{connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPowerRole="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentDataRole="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedRoleCombinations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contaminantDetectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contaminantProtectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usbDataStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPowerTransferLimited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", powerBrickConnectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", complianceWarnings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->complianceWarningsToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plugState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPlugState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayPortAltModeInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method
