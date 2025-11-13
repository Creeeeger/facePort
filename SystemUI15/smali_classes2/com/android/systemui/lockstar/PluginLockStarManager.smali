.class public final Lcom/android/systemui/lockstar/PluginLockStarManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;
.implements Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mGoodLockLifecycle:Lcom/android/systemui/lockstar/GoodLockLifecycle;

.field public mIsGoodLockInstalled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

.field public final mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

.field public mLockStarViewStub:Landroid/view/ViewStub;

.field public final mObserver:Lcom/android/systemui/lockstar/PluginLockStarManager$2;

.field public mPluginContext:Landroid/content/Context;

.field public mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field public mRequested:Z

.field public mRootView:Landroid/view/ViewGroup;

.field public final mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field public final mSettingsHelperProvider:Ljavax/inject/Provider;

.field public final mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/lockstar/GoodLockLifecycle;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            "Lcom/android/systemui/lockstar/GoodLockLifecycle;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$1;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsGoodLockInstalled:Z

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$2;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mObserver:Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    iput-object p3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance p2, Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-direct {p2}, Lcom/android/systemui/lockstar/LockStarPresenter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    iput-object p4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p7, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p9, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mGoodLockLifecycle:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    new-instance p2, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    invoke-direct {p2, p1, p8}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    iput-object p10, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelperProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final addPluginListener$2()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mGoodLockLifecycle:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "LStar|PluginLockStarManager"

    const-string v1, "addPluginListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    const-string v3, "com.samsung.systemui.action.PLUGIN_LOCK_STAR"

    const-class v5, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-object v4, p0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    return-void
.end method

.method public final checkGoodLockInstalledState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mGoodLockLifecycle:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/lockstar/GoodLockLifecycle;->isInstalled:Z

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsGoodLockInstalled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkGoodLockInstalledState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsGoodLockInstalled:Z

    const-string v2, "LStar|PluginLockStarManager"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsGoodLockInstalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->addPluginListener$2()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "removePluginListener: "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "   SYSUI VERSION = 4003"

    const-string v1, "  mIsGoodLockInstalled = "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsGoodLockInstalled:Z

    const-string v2, "  mRootView = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPluginLockStar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   APP VERSION = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mLockStarContainer = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dump "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LStar|PluginLockStarManager"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, " ----------------------------------------------- "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "LStar|PluginLockStarManager"

    const-string p1, "name is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "lockstarContainer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    return-object p0

    :cond_1
    const-string v1, "briefWidgetContainer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRootView:Landroid/view/ViewGroup;

    const-string p1, "keyguard_complication_widget"

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLockStarValues() failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final isLockStarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result p0

    return p0
.end method

.method public final isRunningNoNeedUnlockService(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->bottomAreaCallback:Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result v1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isRunningNoNeedUnlockService: ret="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockStarShortcutController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public final isTouchable(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isTouchable(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isTouchable "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LStar|PluginLockStarManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final launchShortcutApp(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NoUnlockNeeded"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;

    const-string v1, "LockStarShortcutController"

    if-nez v2, :cond_4

    const-string v2, "launchShortcutApp: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->bottomAreaCallback:Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockBottomAreaCallback;->launchApp(Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_4
    const-string p0, "launchShortcutApp: execute task "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;->execute()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onChangedLockStarData(ZLandroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangedLockStarData :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/lockstar/LockStarPresenter;->onChangedLockStarData(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final onChangedLockStarEnabled(Z)V
    .locals 2

    const-string v0, "onChangedLockStarEnabled :: "

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/lockstar/LockStarPresenter;->onChangedLockStarData(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    if-eq p1, v0, :cond_2

    const-string v1, "onConfigChanged: changed ["

    const-string v2, " -> "

    const-string v3, "]"

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LStar|PluginLockStarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onConfigChanged: try plugin connect again"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "reconnectPlugin: "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "removePluginListener: "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRequested:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->addPluginListener$2()V

    :cond_2
    return-void
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->setDarkAmount(Ljava/lang/Float;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onFinishedGoingToSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onFinishedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onChangedDisplay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onInterceptTouchEvent "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LStar|PluginLockStarManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 3

    check-cast p1, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_STAR_SAFEMODE:Z

    const-string v1, "LStar|PluginLockStarManager"

    if-eqz v0, :cond_0

    const-string p0, "Do not plug in connection in safe mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v0, "onPluginConnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/LockStarViewContainer;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    if-nez p1, :cond_2

    const-string p1, "Failed to get lock star container"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/systemui/lockstar/LockStarViewContainer;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->init(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;)V

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "LockStarShortcutController"

    const-string v0, "init: "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;

    iget-object v1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutFlashLight;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;

    iget-object v1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutDnd;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;->init()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 1

    check-cast p1, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    const-string p1, "onPluginDisconnected "

    const-string v0, "LStar|PluginLockStarManager"

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/systemui/lockstar/LockStarViewContainer;->setVisibility(I)V

    :cond_0
    const-string p1, "removeAllAddedViews"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/lockstar/LockStarViewContainer;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onChangedLockStarEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcutController:Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "LockStarShortcutController"

    const-string/jumbo p2, "terminate: "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutTask;->terminate()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/lockstar/shortcut/LockStarShortcutController;->taskList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onPluginLoadFailed(I)V
    .locals 1

    const-string p1, "onPluginLoadFailed"

    const-string v0, "LStar|PluginLockStarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "removeAllAddedViews"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarContainer:Lcom/android/systemui/lockstar/LockStarViewContainer;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/lockstar/LockStarViewContainer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onStartedGoingToSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onStartedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onUpdateModifiers(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateModifiers :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LStar|PluginLockStarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/systemui/util/kotlin/MapUtilsKt;->filterValuesNotNull(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    iget-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LStar|PluginLockStarManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/systemui/util/kotlin/MapUtilsKt;->filterValuesNotNull(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v1
.end method

.method public final unregisterCallback(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPresenter:Lcom/android/systemui/lockstar/LockStarPresenter;

    iget-object v0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lockstar/LockStarPresenter;->callbackMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
