.class public final Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# static fields
.field public static final sConditionMap:Ljava/util/HashMap;


# instance fields
.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p2, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final disableSafeMediaVolume()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    return-void
.end method

.method public final varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p1, "FakeVolumeInfraMediator"

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    return-object p2

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveBtDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getActiveBtDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAudioCastDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getAudioCastDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBixbyServiceState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBixbyServiceState()V

    return-void
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    return-void
.end method

.method public final getCutoutHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCutoutHeight()I

    move-result p0

    return p0
.end method

.method public final getDevicesForStreamMusic()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    move-result p0

    return p0
.end method

.method public final getEarProtectLimit()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getEarProtectLimit()I

    move-result p0

    return p0
.end method

.method public final getMultiSoundDevice()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMultiSoundDevice()I

    move-result p0

    return p0
.end method

.method public final getMusicFineVolume()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMusicFineVolume()I

    move-result p0

    return p0
.end method

.method public final getPinAppName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinAppName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPinDevice()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    move-result p0

    return p0
.end method

.method public final getPinDeviceName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSmartViewDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemTime()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimeoutControls()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControls()I

    move-result p0

    return p0
.end method

.method public final getTimeoutControlsText()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControlsText()I

    move-result p0

    return p0
.end method

.method public final initSound(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    return-void
.end method

.method public final isAllSoundOff()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    move-result p0

    return p0
.end method

.method public final isAodVolumePanel()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAodVolumePanel()Z

    move-result p0

    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    move-result p0

    return p0
.end method

.method public final isBixbyServiceForeground()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceForeground()Z

    move-result p0

    return p0
.end method

.method public final isBixbyServiceOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBixbyServiceOn()Z

    move-result p0

    return p0
.end method

.method public final isBleCallDeviceOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBleCallDeviceOn()Z

    move-result p0

    return p0
.end method

.method public final isBluetoothScoOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    move-result p0

    return p0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBudsTogetherEnabled()Z

    move-result p0

    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isCaptionEnabled()Z

    move-result p0

    return p0
.end method

.method public final isDensityOrFontChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDensityOrFontChanged()Z

    move-result p0

    return p0
.end method

.method public final isDexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDexMode()Z

    move-result p0

    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDisplayTypeChanged()Z

    move-result p0

    return p0
.end method

.method public final varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p1, "FakeVolumeInfraMediator"

    invoke-virtual {p0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->v(Ljava/lang/String;)V

    return p2

    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isHasVibrator()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isHasVibrator()Z

    move-result p0

    return p0
.end method

.method public final isKeyguardState()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKeyguardState()Z

    move-result p0

    return p0
.end method

.method public final isKioskModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKioskModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isLcdOff()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLcdOff()Z

    move-result p0

    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    move-result p0

    return p0
.end method

.method public final isMediaDefault()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMediaDefault()Z

    move-result p0

    return p0
.end method

.method public final isMultiSoundOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMultiSoundOn()Z

    move-result p0

    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isOrientationChanged()Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaVolumeDeviceOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    move-result p0

    return p0
.end method

.method public final isSafeMediaVolumePinDeviceOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    move-result p0

    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    move-result p0

    return p0
.end method

.method public final isShadeLockedState()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isShadeLockedState()Z

    move-result p0

    return p0
.end method

.method public final isSmartView()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    move-result p0

    return p0
.end method

.method public final isStandalone()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isStandalone()Z

    move-result p0

    return p0
.end method

.method public final isSupportTvVolumeSync()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSupportTvVolumeSync()Z

    move-result p0

    return p0
.end method

.method public final isUserInCall()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isUserInCall()Z

    move-result p0

    return p0
.end method

.method public final isVoiceCapable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVoiceCapable()Z

    move-result p0

    return p0
.end method

.method public final isVolumeStarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVolumeStarEnabled()Z

    move-result p0

    return p0
.end method

.method public final isZenModeEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final isZenModeNone(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeNone(I)Z

    move-result p0

    return p0
.end method

.method public final isZenModePriorityOnly(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModePriorityOnly(I)Z

    move-result p0

    return p0
.end method

.method public final notifyVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->notifyVisible(Z)V

    return-void
.end method

.method public final playSound()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    return-void
.end method

.method public final playSound(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    return-void
.end method

.method public final sendSystemDialogsCloseAction()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->sendSystemDialogsCloseAction()V

    return-void
.end method

.method public final setActiveStream(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    return-void
.end method

.method public final setCaptionEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    return-void
.end method

.method public final setSafeMediaVolume()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeMediaVolume()V

    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    return-void
.end method

.method public final startDoNotDisturbActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startDoNotDisturbActivity()V

    return-void
.end method

.method public final startHearingEnhancementsActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startHearingEnhancementsActivity()V

    return-void
.end method

.method public final startLeBroadcastActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startLeBroadcastActivity()V

    return-void
.end method

.method public final startSettingsActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startSettingsActivity()V

    return-void
.end method

.method public final startVolumeSettingsActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->startVolumeSettingsActivity()V

    return-void
.end method

.method public final toggleWifiDisplayMute()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->toggleWifiDisplayMute()V

    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;->volumeInfraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->userActivity()V

    return-void
.end method
