.class public final Lcom/android/systemui/volume/VolumeInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;


# instance fields
.field public final accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

.field public final audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field public final bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

.field public final bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field public final bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field public final broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

.field public final configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

.field public final context:Landroid/content/Context;

.field public final desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field public final deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field public final displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field public final saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

.field public final semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field public final statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

.field public final statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

.field public final systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

.field public final volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->context:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    const-class v0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/basic/util/LogWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    const-class v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/BroadcastSender;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastSender;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    const-class v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    const-class v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    return-void
.end method


# virtual methods
.method public final disableSafeMediaVolume()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_disableSafeMediaVolume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    :goto_0
    return-void
.end method

.method public final varargs get(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getMultiSoundDevice()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getAudioCastDeviceName()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getActiveBtDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getSystemTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getCutoutHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getTimeoutControlsText()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getTimeoutControls()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinDevice()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :pswitch_9
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_a
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getPinAppName(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getDevicesForStreamMusic()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->getEarProtectLimit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getActiveBtDeviceName()Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_getActiveBtDeviceName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isMusicShareEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isMusicShareEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getActiveBTDeviceName()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final getAudioCastDeviceName()Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getAudioCastDeviceName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getBixbyServiceState()V
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const-string v3, "getBixbyServiceState"

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getBixbyServiceState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;-><init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V

    invoke-direct {v2, v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;-><init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getBtCallDeviceName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getBtCallDeviceName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getCaptionsComponentState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    :goto_0
    return-void
.end method

.method public final getCutoutHeight()I
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getCutoutHeight"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDevicesForStreamMusic()I
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getDevicesForStreamMusic"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getEarProtectLimit()I
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getEarProtectLimit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getMultiSoundDevice()I
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getMultiSoundDevice"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getMusicFineVolume()I
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getMusicFineVolume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v3}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, v4, v3}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPinAppName(I)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getPinAppName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getPinDevice()I
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getPinDevice"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPinDeviceName(I)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getPinDeviceName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getSmartViewDeviceName()Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getSmartViewDeviceName"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getSystemTime()J
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->systemClockWrapper:Lcom/android/systemui/volume/util/SystemClockWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getSystemTime"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public final getTimeoutControls()I
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getTimeoutControls"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTimeoutControlsText()I
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x6

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->accessibilityManagerWrapper:Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_getTimeoutControlsText"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final initSound(I)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_initSound"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper;->initSound(I)V

    :goto_0
    return-void
.end method

.method public final isAllSoundOff()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isAllSoundOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAllSoundOff()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAllSoundOff()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isAodVolumePanel()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isAodVolumePanel"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAODVolumePanel()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAODVolumePanel()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isAudioMirroring"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioMirroring()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isAudioMirroring()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isBixbyServiceForeground()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isBixbyServiceForeground"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceForeground()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isBixbyServiceOn()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->bixbyServiceManager:Lcom/android/systemui/volume/util/BixbyServiceManager;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isBixbyServiceOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p0, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    move p0, v0

    :goto_1
    return p0
.end method

.method public final isBleCallDeviceOn()Z
    .locals 6

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x1a

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_2

    const-string v2, "#vol.infraMediator_isBleCallDeviceOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    move v5, v3

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    if-ne p0, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    move v5, v3

    :cond_4
    :goto_2
    return v5
.end method

.method public final isBluetoothScoOn()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isBluetoothScoOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isBudsTogetherEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isBudsTogetherEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isBudsTogetherEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isCaptionEnabled()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isCaptionEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isDensityOrFontChanged()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isDensityOrFontChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDensityOrFontScaleChanged()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isDexMode()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isDexMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isDisplayTypeChanged()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isDisplayTypeChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDisplayTypeChanged()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isDisplayTypeChanged()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final varargs isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;[Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isAodVolumePanel()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_1
    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isMultiSoundOn()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSetupWizardComplete()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBudsTogetherEnabled()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isKioskModeEnabled()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDexMode()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isLcdOff()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDisplayTypeChanged()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isStandalone()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isDensityOrFontChanged()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isOrientationChanged()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isShadeLockedState()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isKeyguardState()Z

    move-result v1

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isMediaDefault()Z

    move-result v1

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isHasVibrator()Z

    move-result v1

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isAllSoundOff()Z

    move-result v1

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isVoiceCapable()Z

    move-result v1

    goto :goto_0

    :pswitch_12
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModeNone(I)Z

    move-result v1

    goto :goto_0

    :pswitch_13
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModePriorityOnly(I)Z

    move-result v1

    goto :goto_0

    :pswitch_14
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isZenModeEnabled(I)Z

    move-result v1

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSmartView()Z

    move-result v1

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBixbyServiceOn()Z

    move-result v1

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBixbyServiceForeground()Z

    move-result v1

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBleCallDeviceOn()Z

    move-result v1

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isBluetoothScoOn()Z

    move-result v1

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isUserInCall()Z

    move-result v1

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSafeMediaVolumePinDeviceOn()Z

    move-result v1

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    :goto_0
    new-instance p2, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$isEnabled$1;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$isEnabled$1;-><init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;Z)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isHasVibrator()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isHasVibrator"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isKeyguardState()Z
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isKeyguardState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne p0, v4, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final isKioskModeEnabled()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->semPersonaManagerWrapper:Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isKioskModeEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isLcdOff()Z
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isLcdOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v3, p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public final isLeBroadcasting()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isLeBroadcasting"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isLeBroadcasting()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isLeBroadcasting()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isMediaDefault()Z
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isMediaDefault"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeKeyMode()I

    move-result p0

    if-eqz p0, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final isMultiSoundOn()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isMultiSoundOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isOrientationChanged()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->configurationWrapper:Lcom/android/systemui/volume/util/ConfigurationWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isOrientationChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;->isOrientationChanged()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSafeMediaVolumeDeviceOn()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isSafeMediaVolumeDeviceOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSafeMediaVolumePinDeviceOn()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isSafeMediaVolumePinDeviceOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSetupWizardComplete()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isSetupWizardComplete"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->isDeviceProvisioned()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->isDeviceProvisioned()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isShadeLockedState()Z
    .locals 6

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarStateControllerWrapper:Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isShadeLockedState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne p0, v5, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final isSmartView()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isSmartView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isSmartViewEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isStandalone()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->desktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isStandalone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSupportTvVolumeSync()Z
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    const/4 v4, 0x7

    const-string v5, ", validPlayerType="

    const-string v6, ", dlnaEnabled="

    const-string v7, ", supportTvVolumeControl="

    const-string v8, ", screenSharing="

    const-string v9, "VolumeInfraMediatorImpl"

    iget-object v10, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v11, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    const-string/jumbo v14, "supportTvVolumeControl="

    if-eqz v3, :cond_5

    const-string v3, "#vol.infraMediator_isSupportTvVolumeSync"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    move-result v3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v12, v11, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v12

    if-eq v12, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    move-result v11

    if-eqz v0, :cond_2

    if-eqz v11, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_4

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v12, 0x1

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->supportTvVolumeControl()Z

    move-result v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v3, v11, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetScreenSharingStatus()I

    move-result v2

    if-eq v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isDLNAEnabled()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->isValidPlayerType()Z

    move-result v4

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    invoke-static {v14, v8, v7, v1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v1, v6, v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_a

    if-eqz v11, :cond_9

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v12, 0x1

    :goto_9
    return v12
.end method

.method public final isUserInCall()Z
    .locals 7

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_2

    const-string v2, "#vol.infraMediator_isUserInCall"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, v6, :cond_1

    if-ne p0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p0

    if-eq p0, v6, :cond_4

    if-ne p0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    return v3
.end method

.method public final isVoiceCapable()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isVoiceCapable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isVolumeStarEnabled()Z
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_isVolumeStarEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isVolumeStarEnabled()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->isVolumeStarEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isZenModeEnabled(I)Z
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isZenModeEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final isZenModeNone(I)Z
    .locals 6

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isZenModeNone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v5, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final isZenModePriorityOnly(I)Z
    .locals 5

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->zenModeHelper:Lcom/android/systemui/volume/util/ZenModeHelper;

    if-eqz v2, :cond_1

    const-string v2, "#vol.infraMediator_isZenModePriorityOnly"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v4, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    return v3
.end method

.method public final notifyVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public final playSound()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_playSound"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final playSound(I)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_playSound"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->saLoggingWrapper:Lcom/android/systemui/volume/util/SALoggingWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_sendEventLog"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;->sendEventLog(Lcom/android/systemui/volume/util/SALoggingWrapper$Event;)V

    :goto_0
    return-void
.end method

.method public final sendSystemDialogsCloseAction()V
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->broadcastSender:Lcom/android/systemui/volume/util/BroadcastSender;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_sendSystemDialogsCloseAction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastSender;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastSender;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final setActiveStream(I)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setActiveStream"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    :goto_0
    return-void
.end method

.method public final setCaptionEnabled(Z)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setCaptionEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabledState(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabledState(Z)V

    :goto_0
    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setRingerMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :goto_0
    return-void
.end method

.method public final setSafeMediaVolume()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->audioManagerWrapper:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setSafeMediaVolume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->setSafeMediaVolume()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->setSafeMediaVolume()V

    :goto_0
    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setSafeVolumeDialogShowing"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setSafeVolumeDialogShowing(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setSafeVolumeDialogShowing(Z)V

    :goto_0
    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setStreamVolume"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :goto_0
    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_setStreamVolumeDualAudio"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final startDoNotDisturbActivity()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_startDoNotDisturbActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startDoNotDisturbActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startDoNotDisturbActivity()V

    :goto_0
    return-void
.end method

.method public final startHearingEnhancementsActivity()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_startHearingEnhancementsActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startHearingEnhancementsActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startHearingEnhancementsActivity()V

    :goto_0
    return-void
.end method

.method public final startLeBroadcastActivity()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_startLeBroadcastActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startLeBroadcastActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startLeBroadcastActivity()V

    :goto_0
    return-void
.end method

.method public final startSettingsActivity()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_startSettingsActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startSettingsActivity()V

    :goto_0
    return-void
.end method

.method public final startVolumeSettingsActivity()V
    .locals 4

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->statusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_startVolumeSettingsActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->sendSystemDialogsCloseAction()V

    invoke-virtual {v3}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startVolumeSettingsActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->sendSystemDialogsCloseAction()V

    invoke-virtual {v3}, Lcom/android/systemui/volume/util/StatusBarWrapper;->startVolumeSettingsActivity()V

    :goto_0
    return-void
.end method

.method public final toggleWifiDisplayMute()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_toggleWifiDisplayMute"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->toggleWifiDisplayMute()V

    :goto_0
    return-void
.end method

.method public final userActivity()V
    .locals 3

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_0

    const-string v2, "#vol.infraMediator_userActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    :goto_0
    return-void
.end method
