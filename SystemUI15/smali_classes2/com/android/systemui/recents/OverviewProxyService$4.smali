.class public final Lcom/android/systemui/recents/OverviewProxyService$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binding died of \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null binding of \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "OverviewProxyService"

    const-string v0, "Overview proxy service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    sget v1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->$r8$clinit:I

    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/shared/recents/IOverviewProxy;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    check-cast v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "unlock_animation"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-interface {v0, p2}, Lcom/android/wm/shell/sysui/ShellInterface;->createExternalInterfaces(Landroid/os/Bundle;)V

    :try_start_1
    const-string v0, "OverviewProxyService connected, initializing overview proxy"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onInitialize(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    const-string v0, "Failed to call onInitialize()"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p2, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    if-eqz p2, :cond_1

    :try_start_2
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    const-string v0, "Failed to call onActiveNavBarRegionChanges()"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p2, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object v1

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object v2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p2, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    :cond_3
    iget-object v0, p2, Lcom/android/systemui/recents/OverviewProxyService;->mShadeViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewController;->updateSystemUiStateFlags()V

    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz p2, :cond_4

    check-cast p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p2, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-wide v0, v0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    :try_start_3
    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p2, :cond_5

    check-cast p2, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onSystemUiStateChanged(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    const-string v0, "Failed to notify sysui state change"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    return-void

    :catch_3
    move-exception p2

    const-string v0, "Lost connection to launcher service"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OverviewProxyService"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$4;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return-void
.end method
