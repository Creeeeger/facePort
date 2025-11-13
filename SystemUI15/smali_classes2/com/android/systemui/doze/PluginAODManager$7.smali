.class public final Lcom/android/systemui/doze/PluginAODManager$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBatteryView()Landroid/view/View;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/battery/BatteryMeterView;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mBatteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->AOD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->create(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/battery/BatteryMeterViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object v1
.end method

.method public final getBouncerMessage()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getBouncerMessage()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getIncorrectBouncerMessage()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getIncorrectBouncerMessage()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getSubRoom(I)Lcom/android/systemui/plugins/subscreen/SubRoom;
    .locals 3

    const-string v0, "getSubRoom() "

    const-string v1, "PluginAODManager"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getRoomName$1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SubScreenManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/subscreen/SubRoom;

    return-object p0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_1

    const-string v0, "INVALID TYPE ["

    const-string v2, "]"

    invoke-static {p1, v0, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "SUB_ROOM_NOTIFICATION"

    :goto_0
    const-string v2, "CoverScreenManager"

    invoke-static {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/subscreen/SubRoom;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibleNotificationList()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final getWallpaperUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    return-object p0
.end method

.method public final isCaptureEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEmm:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-boolean p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    return p0
.end method

.method public final isDualDarInnerAuthRequired()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result p0

    return p0
.end method

.method public final isFullscreenBouncer()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    return p0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSimPinSecure()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method public final isUserUnlocked()Z
    .locals 2

    const-string v0, "PluginAODManager"

    const-string v1, "isUserUnlocked() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result p0

    return p0
.end method

.method public final launchApp(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "launchApp() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, p1, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/doze/PluginAODManager;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Flashlight"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanelViewController:Lcom/android/systemui/shade/ShadeViewController;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeViewController;->getKeyguardBottomAreaViewController()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->launchApp(Landroid/content/ComponentName;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onClockPageClicked()V
    .locals 0

    return-void
.end method

.method public final onSubScreenBouncerStateChanged(Z)V
    .locals 2

    const-string v0, "onSubScreenBouncerStateChanged() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchSubScreenBouncerStateChanged(Z)V

    return-void
.end method

.method public final requestDualState(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    :cond_0
    return-void
.end method

.method public final setAODVisibleState(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAODVisibleState: state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p0, p1}, Landroid/app/IWallpaperManager;->notifyAodVisibilityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAODVisibleState: System dead?"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setBatteryMeterViewColor(IIF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/systemui/battery/BatteryMeterViewController;->setAodBatteryColorAlpha(FII)V

    return-void
.end method

.method public final setDisplayStateOverrideWithDisplayId(II)V
    .locals 3

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "updateDisplayStateLimit: displayState="

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v2, :cond_0

    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayStateLock:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Landroid/hardware/display/IDisplayManager;->setDisplayStateOverrideWithDisplayId(Landroid/os/IBinder;II)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, p2, v0}, Landroid/hardware/display/IDisplayManager;->acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "updateDisplayStateLimit : mDisplayManager is null!! ERROR case"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setEnableDLS(Z)V
    .locals 2

    const-string/jumbo v0, "setEnableDLS() "

    const-string v1, "PluginAODManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setPluginWallpaperState(II)V

    return-void
.end method

.method public final shouldControlScreenOff()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const-string/jumbo v0, "shouldControlScreenOff() : "

    const-string v1, "PluginAODManager"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final startBiometricState()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenBiometric(Landroid/content/Intent;)V

    return-void
.end method

.method public final startFingerprintState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenFingerprint()V

    return-void
.end method

.method public final startSubHomeActivity()V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "startSubHomeActivity() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    return-void
.end method

.method public final startSubHomeActivityIfNeeded()V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "startSubHomeActivityIfNeeded() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    :cond_0
    return-void
.end method

.method public final stopBiometricState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStopSubscreenBiometric()V

    return-void
.end method

.method public final updateBiometricState()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void
.end method

.method public final updateSubScreenFallback(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "updateFallback()  , "

    const-string v1, " , "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFallback:Lcom/android/systemui/subscreen/SubScreenFallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreenFallback(Landroid/view/Display;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "updateFallback. Do not unlocked. So not finish "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFallback:Lcom/android/systemui/subscreen/SubScreenFallback;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    const/16 p1, 0xbb8

    const-wide/16 v0, 0x1f4

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final verifyCredential(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$7;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->requestUnlock(Ljava/lang/String;)V

    return-void
.end method
