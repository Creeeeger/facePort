.class Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBiometricLockoutChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDlsViewModeChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEmergencyStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFaceWidgetFullscreenModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFailedUnlockAttemptChanged()V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmViewMode(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onLocaleChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOfflineStateChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onOwnerInfoChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onRemoteLockInfoChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSimulationFailToUnlock(I)V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4

    const-string v0, "onStartedGoingToSleep why :"

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isWindowSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetOFF_BECAUSE_OF_FOLD(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result v0

    const-string v1, "action"

    if-ne p1, v0, :cond_1

    const-string v0, "lid_switch"

    invoke-static {v1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$misLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmIsLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fputmIsLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action_lock_style_changed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmIsLockScreenEnabled(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z

    move-result v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmDozeParameters(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onStartedGoingToSleep(IZ)V

    :cond_3
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmBasicListener(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSystemDialogsShowing()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUSBRestrictionChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUdfpsFingerDown()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUdfpsFingerUp()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onUnlocking()V
    .locals 0

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-static {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fputmIsCoverAttached(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdateCoverState, mViewMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmViewMode(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmViewMode(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I

    move-result p1

    if-ne p1, v1, :cond_0

    const-string p1, "action"

    const-string v0, "cover_closed"

    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitchComplete(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserSwitching(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUserSwitchListenerList(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;->onUserSwitching(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$2;->this$0:Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->-$$Nest$fgetmUtils(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/PluginLockUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->checkSafeMode()V

    return-void
.end method
