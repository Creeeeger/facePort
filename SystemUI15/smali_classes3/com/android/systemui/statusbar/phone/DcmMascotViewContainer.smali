.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final MASCOT_ACTION:[Ljava/lang/String;


# instance fields
.field public final DCM_LAUNCHER:[Ljava/lang/String;

.field public final activityStart:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final blockingQueue:Ljava/util/concurrent/BlockingDeque;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

.field public cancelUpdateRunnable:Ljava/lang/Runnable;

.field public injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

.field public isBootCompleted:Z

.field public isMascotAppRunning:Z

.field public isWaitingForBootComplete:Z

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mascotBottomMarin:I

.field public mascotHeight:I

.field public mascotTopMarin:I

.field public final pm:Landroid/content/pm/PackageManager;

.field public remoteViews:Landroid/widget/RemoteViews;

.field public sIsDcmLauncher:Z

.field public sUseCachedIsDcmLauncher:Z

.field public final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    const-class v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    const-string v0, "LOCK_CLICK_MASCOT"

    const-string v2, "ACTION_UNLOCK"

    const-string v3, "LOCK_CLICK_POPUP"

    filled-new-array {v1, v0, v3, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/pm/PackageManager;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->activityStart:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string p1, "com.nttdocomo.android.dhome"

    const-string p2, "com.nttdocomo.android.homezozo"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_LAUNCHER:[Ljava/lang/String;

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DcmMascotViewContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final isMascotEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isMascotEnabled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    return p0
.end method

.method public final setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$9;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBioUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v0

    if-nez v0, :cond_3

    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setMascotViewVisible(I)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_LAUNCHER:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDcmLauncher "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DcmMascotViewContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    :cond_6
    const/16 p1, 0x8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMascotViewVisible() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final updatePosition(II)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    if-lez p2, :cond_0

    add-int/2addr v1, p2

    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    int-to-float p1, p1

    int-to-float v2, v1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    const/4 v0, 0x0

    move p2, v0

    move v1, p2

    :goto_0
    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method public final updateRes()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07092f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    const v1, 0x7f070930

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    const v1, 0x7f07092e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    return-void
.end method
