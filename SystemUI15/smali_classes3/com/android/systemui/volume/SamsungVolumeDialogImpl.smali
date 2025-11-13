.class public final Lcom/android/systemui/volume/SamsungVolumeDialogImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# instance fields
.field public final broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

.field public final callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

.field public final coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

.field public final deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field public final deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

.field public final soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field public final volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    const-class p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    const-class p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    const-class p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    const-class p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginManager;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-interface {v1, v0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, v0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThread$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object v1, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    iget-object v4, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    iget-object v0, v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v4, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v3, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iput-object v2, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    iget-object v1, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object v2, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iget-object v0, v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 10

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;-><init>(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-virtual {p2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/SPluginManager;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-class v1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    iget-object p2, p2, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    const-string/jumbo v0, "volumestar_enable=0"

    invoke-virtual {p2, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    invoke-virtual {p2}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_INIT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVoiceCapable()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isHasVibrator()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportSmartViewStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportWarningPopupWalletMini(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportWarningPopupSideView(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportBudsTogether(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    iget-object p1, p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v0, :cond_1

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAllSoundOffAction$1$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAllSoundOffAction$1$1;-><init>(Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/16 v8, 0x3c

    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$2;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v0, :cond_2

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMirrorLinkAction$1$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMirrorLinkAction$1$1;-><init>(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/16 v8, 0x3c

    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$3;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->OPEN_THEME:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v0, :cond_3

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerOpenThemeChangedAction$1$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerOpenThemeChangedAction$1$1;-><init>(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/16 v8, 0x3c

    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$4;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v0, :cond_4

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDualPlayModeAction$1$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDualPlayModeAction$1$1;-><init>(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/16 v8, 0x3c

    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$5;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    sget-object v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$6;->INSTANCE:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$6;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->registerHeadsetConnectionAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$7;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v1, p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;

    invoke-direct {v2, p2, p1}, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;)V

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v1, p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    sget-object v1, Lcom/android/systemui/volume/util/VolumeExecutor;->INSTANCE:Lcom/android/systemui/volume/util/VolumeExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/volume/util/VolumeExecutor;->sExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerExecutor;

    invoke-virtual {p2, v1, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iput-object v0, p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    :cond_6
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$9;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$9;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p2, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;

    iget-object p1, p2, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    iget-object p1, p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
