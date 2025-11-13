.class public final Lcom/android/systemui/assist/PhoneStateMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public mDefaultHome:Landroid/content/ComponentName;

.field public mLauncherShowing:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/BootCompleteCache;Landroid/os/Handler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/BootCompleteCache;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mBgHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/assist/PhoneStateMonitor;->getCurrentDefaultHome()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    new-instance p1, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    check-cast p4, Lcom/android/systemui/BootCompleteCacheImpl;

    iget-object p3, p4, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p4, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    monitor-enter p3

    :try_start_0
    iget-object p5, p4, Lcom/android/systemui/BootCompleteCacheImpl;->bootComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_1

    monitor-exit p3

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p4, p4, Lcom/android/systemui/BootCompleteCacheImpl;->listeners:Ljava/util/List;

    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    sget-object p3, Lcom/android/systemui/assist/PhoneStateMonitor;->DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    const/4 p4, 0x0

    move p5, p4

    :goto_1
    const/4 p6, 0x4

    if-ge p5, p6, :cond_2

    aget-object p6, p3, p5

    invoke-virtual {p1, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    new-instance p3, Lcom/android/systemui/assist/PhoneStateMonitor$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$1;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    sget-object p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mDefaultHome:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p4

    :cond_4
    :goto_2
    iput-boolean p4, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    sget-object p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    new-instance p2, Lcom/android/systemui/assist/PhoneStateMonitor$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/PhoneStateMonitor$2;-><init>(Lcom/android/systemui/assist/PhoneStateMonitor;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public static getCurrentDefaultHome()Landroid/content/ComponentName;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/systemui/shared/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v2, -0x80000000

    :goto_1
    move-object v3, v1

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v2, :cond_2

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget v2, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_2

    :cond_2
    if-ne v5, v2, :cond_1

    goto :goto_1

    :cond_3
    return-object v3
.end method


# virtual methods
.method public final getPhoneState()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mLauncherShowing:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_2

    :cond_1
    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/assist/PhoneStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/assist/PhoneStateMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    :goto_1
    move p0, v2

    :goto_2
    return p0
.end method
