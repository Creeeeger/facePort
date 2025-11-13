.class public final Landroid/hardware/hdmi/HdmiControlServiceWrapper;
.super Ljava/lang/Object;
.source "HdmiControlServiceWrapper.java"


# static fields
.field public static final blacklist DEVICE_PURE_CEC_SWITCH:I = 0x6


# instance fields
.field private blacklist mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInterface:Landroid/hardware/hdmi/IHdmiControlService;

.field private blacklist mTypes:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    new-instance v0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;-><init>(Landroid/hardware/hdmi/HdmiControlServiceWrapper;)V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInterface:Landroid/hardware/hdmi/IHdmiControlService;

    return-void
.end method


# virtual methods
.method public blacklist addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0

    return-void
.end method

.method public blacklist askRemoteDeviceToBecomeActiveSource(I)V
    .locals 0

    return-void
.end method

.method public blacklist canChangeSystemAudioMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist clearTimerRecording(II[B)V
    .locals 0

    return-void
.end method

.method public blacklist createHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .locals 2

    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInterface:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method public blacklist deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getCecSettingIntValue(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMessageHistorySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPhysicalAddress()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public blacklist getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSupportedTypes()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    return-object v0
.end method

.method public blacklist getSystemAudioMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getUserCecSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist isHdmiCecVolumeControlEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist powerOffRemoteDevice(II)V
    .locals 0

    return-void
.end method

.method public blacklist powerOnRemoteDevice(II)V
    .locals 0

    return-void
.end method

.method public blacklist queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 0

    return-void
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0

    return-void
.end method

.method public blacklist removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist reportAudioStatus(IIIZ)V
    .locals 0

    return-void
.end method

.method public blacklist sendKeyEvent(IIZ)V
    .locals 0

    return-void
.end method

.method public blacklist sendMhlVendorCommand(III[B)V
    .locals 0

    return-void
.end method

.method public blacklist sendStandby(II)V
    .locals 0

    return-void
.end method

.method public blacklist sendVendorCommand(II[BZ)V
    .locals 0

    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IIZ)V
    .locals 0

    return-void
.end method

.method public blacklist setArcMode(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setCecSettingIntValue(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist setDeviceTypes([I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mTypes:[I

    return-void
.end method

.method public blacklist setHdmiCecVolumeControlEnabled(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0

    return-void
.end method

.method public blacklist setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0

    return-void
.end method

.method public blacklist setMessageHistorySize(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPortInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->mInfoList:Ljava/util/List;

    return-void
.end method

.method public blacklist setProhibitMode(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setStandbyMode(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .locals 0

    return-void
.end method

.method public blacklist setSystemAudioMute(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setSystemAudioVolume(III)V
    .locals 0

    return-void
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startOneTouchRecord(I[B)V
    .locals 0

    return-void
.end method

.method public blacklist startTimerRecording(II[B)V
    .locals 0

    return-void
.end method

.method public blacklist stopOneTouchRecord(I)V
    .locals 0

    return-void
.end method

.method public blacklist toggleAndFollowTvPower()V
    .locals 0

    return-void
.end method
