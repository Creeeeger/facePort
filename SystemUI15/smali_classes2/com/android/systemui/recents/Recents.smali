.class public final Lcom/android/systemui/recents/Recents;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mImpl:Lcom/android/systemui/recents/RecentsImplementation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    iput-object p3, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method


# virtual methods
.method public final appTransitionFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final cancelPreloadRecentApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final hideRecentApps(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string p2, "Failed to send overview hide event to launcher."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final isUserSetup$1()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onBootCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final preloadRecentApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ThreeFinger"

    const-string p1, "isUserSetup : false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->run()V

    :cond_1
    return-void
.end method

.method public final showRecentApps(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_1

    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string v0, "Failed to send overview show event to launcher."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final toggleRecentApps()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup$1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_2

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Object;I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;->run()V

    :cond_3
    :goto_0
    return-void
.end method
