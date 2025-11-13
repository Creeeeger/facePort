.class Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiControlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlServiceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public blacklist addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public blacklist addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public blacklist addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public blacklist addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public blacklist addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public blacklist addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public blacklist addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method public blacklist askRemoteDeviceToBecomeActiveSource(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->askRemoteDeviceToBecomeActiveSource(I)V

    return-void
.end method

.method public blacklist canChangeSystemAudioMode()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->canChangeSystemAudioMode()Z

    move-result v0

    return v0
.end method

.method public blacklist clearTimerRecording(II[B)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->clearTimerRecording(II[B)V

    return-void
.end method

.method public blacklist deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public blacklist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getAllowedCecSettingIntValues(Ljava/lang/String;)[I

    move-result-object v0

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

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCecSettingIntValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getDeviceList()Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getInputDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMessageHistorySize()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getMessageHistorySize()I

    move-result v0

    return v0
.end method

.method public blacklist getPhysicalAddress()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPhysicalAddress()I

    move-result v0

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

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getPortInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedTypes()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemAudioMode()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getSystemAudioMode()Z

    move-result v0

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

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->getUserCecSettings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public blacklist portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public blacklist powerOffRemoteDevice(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOffRemoteDevice(II)V

    return-void
.end method

.method public blacklist powerOnRemoteDevice(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->powerOnRemoteDevice(II)V

    return-void
.end method

.method public blacklist queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public blacklist removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public blacklist removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public blacklist removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public blacklist removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public blacklist removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public blacklist reportAudioStatus(IIIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->reportAudioStatus(IIIZ)V

    return-void
.end method

.method public blacklist sendKeyEvent(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendKeyEvent(IIZ)V

    return-void
.end method

.method public blacklist sendMhlVendorCommand(III[B)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendMhlVendorCommand(III[B)V

    return-void
.end method

.method public blacklist sendStandby(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendStandby(II)V

    return-void
.end method

.method public blacklist sendVendorCommand(II[BZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVendorCommand(II[BZ)V

    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IIZ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->sendVolumeKeyEvent(IIZ)V

    return-void
.end method

.method public blacklist setArcMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setArcMode(Z)V

    return-void
.end method

.method public blacklist setCecSettingIntValue(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setCecSettingIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public blacklist setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public blacklist setMessageHistorySize(I)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setMessageHistorySize(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setProhibitMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setProhibitMode(Z)V

    return-void
.end method

.method public blacklist setStandbyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setStandbyMode(Z)V

    return-void
.end method

.method public blacklist setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public blacklist setSystemAudioModeOnForAudioOnlySource()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioModeOnForAudioOnlySource()V

    return-void
.end method

.method public blacklist setSystemAudioMute(Z)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioMute(Z)V

    return-void
.end method

.method public blacklist setSystemAudioVolume(III)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->setSystemAudioVolume(III)V

    return-void
.end method

.method public blacklist shouldHandleTvPowerKey()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->shouldHandleTvPowerKey()Z

    move-result v0

    return v0
.end method

.method public blacklist startOneTouchRecord(I[B)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startOneTouchRecord(I[B)V

    return-void
.end method

.method public blacklist startTimerRecording(II[B)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->startTimerRecording(II[B)V

    return-void
.end method

.method public blacklist stopOneTouchRecord(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->stopOneTouchRecord(I)V

    return-void
.end method

.method public blacklist toggleAndFollowTvPower()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlServiceWrapper$1;->this$0:Landroid/hardware/hdmi/HdmiControlServiceWrapper;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlServiceWrapper;->toggleAndFollowTvPower()V

    return-void
.end method
