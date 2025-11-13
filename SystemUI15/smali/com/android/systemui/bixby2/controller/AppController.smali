.class public Lcom/android/systemui/bixby2/controller/AppController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final INVALID_TASK:I = -0x1

.field private static final MULTI_INSTANCE_CNT:I = 0x2

.field private static final ORIENTATION_LANDSCAPE_270:I = 0x3

.field private static final ORIENTATION_LANDSCAPE_90:I = 0x1

.field private static final ORIENTATION_PORTRAIT_0:I = 0x0

.field private static final ORIENTATION_PORTRAIT_180:I = 0x2

.field private static final PROJECTION_AFFINITY_NAME_INDEX:I = 0x2

.field private static final PROJECTION_COMPONENT_NAME_INDEX:I = 0x1

.field private static final RESULT_NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppController"

.field private static final TASKLOCKDB:Ljava/lang/String; = "content://com.android.quickstep.tasklock.TaskLockDB"


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurOrientation:I

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private final mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field mExceptionPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncher:Lcom/android/systemui/bixby2/util/ActivityLauncher;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegistered:Z

.field private final mwHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSensor(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurOrientation(Lcom/android/systemui/bixby2/controller/AppController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mCurOrientation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/util/ActivityLauncher;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorRegistered:Z

    new-instance v1, Lcom/android/systemui/bixby2/controller/AppController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/bixby2/controller/AppController$2;-><init>(Lcom/android/systemui/bixby2/controller/AppController;)V

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    new-instance v1, Lcom/android/systemui/bixby2/controller/AppController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/bixby2/controller/AppController$3;-><init>(Lcom/android/systemui/bixby2/controller/AppController;)V

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.samsung.android.bixby.agent"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.sec.android.app.launcher"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.sec.android.app.desktoplauncher"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.sec.android.app.dexonpc"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.sec.android.dexsystemui"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    const-string v3, "com.sec.android.desktopmode.uiservice"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mLauncher:Lcom/android/systemui/bixby2/util/ActivityLauncher;

    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p5, p0, Lcom/android/systemui/bixby2/controller/AppController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance p2, Landroid/os/Handler;

    sget-object p3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p4, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mwHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mCurOrientation:I

    new-instance p2, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/bixby2/controller/AppController$AppControlSensorListener;-><init>(Lcom/android/systemui/bixby2/controller/AppController;I)V

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorListener:Landroid/hardware/SensorEventListener;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 p2, 0x1b

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mSensor:Landroid/hardware/Sensor;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p5, p0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private checkExceptionPackage(Ljava/util/List;Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ")Z"
        }
    .end annotation

    iget-object p0, p2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "skip removeTask - "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkFocusedAppOnDex(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AppController"

    const-string p1, "It is dex mode"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkPackageIncludedRecents(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p0, "found Navi app in Recents List : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private checkTaskLocked(Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkTaskLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Task is locked, skip removeTask - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getAffinityName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 1

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getComponentName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFocusedStack()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppController"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getPackageToStartActivityFromRecents(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "AppController"

    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "There is no packageName. taskId = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p2, p3, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkPackageIncludedRecents(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_3
    const-string p0, "getPackageToStartActivityFromRecents() retCnt = "

    invoke-static {v1, p0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isLongLiveApp(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "AppController"

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getLongLiveApps()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLongLiveApp: longLiveApps.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isLongLiveAppDedicatedMemory(IILjava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->getLongLiveTaskIdsForUser(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppController"

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private logTaskIdToRemove(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 2

    iget-object p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    const-string v0, "removeTask - "

    const-string v1, "AppController"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    const-string v0, ")"

    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAvailableCoverLauncher(Ljava/lang/String;)Z
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contains = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowedPackageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public checkIncludeCoverLauncher(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appList = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "contains = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "AppController"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getListInfoFromJson(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    const-string p1, "Exception! "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string p1, "not installed! "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public checkOrientation()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkOrientation, mCurOrientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mCurOrientation:I

    const-string v2, "AppController"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mCurOrientation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkRunningInRecents(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "checkRunningInRecents()"

    const-string v1, "AppController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    invoke-static {v2, v4, p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getListInfoFromJson(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    :cond_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move p1, v3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "listPackageInfo.cnt = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", matchCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method

.method public checkSettingsCoverLauncher(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "large_cover_screen_apps"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string p1, "checkSettingsCoverLauncher(), brightnessMode = "

    const-string v1, "AppController"

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkTaskLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 9

    const-string v0, "AppController"

    const-string v1, "isTaskLocked: getCount = "

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "content://com.android.quickstep.tasklock.TaskLockDB"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->getComponentName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->getAffinityName(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTaskLocked: ColumnNames = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTaskLocked: True "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTaskLocked: True (only affinity matched)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return p1

    :cond_2
    :try_start_2
    const-string p1, "Component or Affinity name is null "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    :cond_4
    if-eqz v2, :cond_5

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public getPackageNameFromPdss(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    return-object p0
.end method

.method public isDexMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AppController"

    const-string v0, "It is dex mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFolderClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public launchApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchApplication(), newJSONStringValue = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p2

    iget-object v0, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mLauncher:Lcom/android/systemui/bixby2/util/ActivityLauncher;

    iget-object v1, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->ActivityName:Ljava/lang/String;

    iget p2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->taskId:I

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->startActivityInBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string/jumbo p0, "wrong parameter was delivered"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception! "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    const-string p0, "NameNotFoundException! "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public openRecentsApp(Landroid/content/Context;)Z
    .locals 30

    const-string v0, "AppController"

    const-string v1, "openRecentsApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/4 v15, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xbb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x48

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v28, 0x0

    const/16 v29, 0x2

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0xbb

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x48

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/bixby2/controller/AppController$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/bixby2/controller/AppController$1;-><init>(Lcom/android/systemui/bixby2/controller/AppController;Landroid/app/Instrumentation;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllTasks(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "removeAllTasks()"

    const-string v3, "AppController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    const/4 v8, 0x0

    invoke-static {v7, v8, v1}, Lcom/android/systemui/bixby2/util/ParamsParser;->getListInfoFromJson(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "listPackageInfo\'s cnt = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    return v6

    :cond_0
    iget-object v8, v0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/bixby2/controller/AppController;->mContentResolver:Landroid/content/ContentResolver;

    :cond_1
    if-eqz v5, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "recentTaskList.size() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "----- taskID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    const-string v12, " -----"

    invoke-static {v10, v11, v12, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/systemui/bixby2/controller/AppController;->mExceptionPackages:Ljava/util/List;

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/bixby2/controller/AppController;->checkExceptionPackage(Ljava/util/List;Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v19, v5

    goto/16 :goto_4

    :cond_2
    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_3

    :goto_1
    move-object v15, v10

    goto :goto_2

    :cond_3
    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    goto :goto_1

    :goto_2
    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v13

    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageName = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", taskId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iget-object v14, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v19, v5

    iget-wide v4, v9, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move/from16 v16, v11

    move-object v11, v10

    move-wide/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    invoke-direct {v0, v9, v10}, Lcom/android/systemui/bixby2/controller/AppController;->checkTaskLocked(Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v4, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/systemui/bixby2/controller/AppController;->isLongLiveApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This Task is LongLiveApp, skip removeTask - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    iget v4, v9, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget v5, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v5, v10}, Lcom/android/systemui/bixby2/controller/AppController;->isLongLiveAppDedicatedMemory(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This Task is LongLiveApp based DedicatedMemory, skip removeTask - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v4, v9, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v4, :cond_7

    const-string v4, "skip visible task"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v6

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "skip excepted package from bixby - "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    invoke-direct {v0, v9}, Lcom/android/systemui/bixby2/controller/AppController;->logTaskIdToRemove(Landroid/app/ActivityManager$RecentTaskInfo;)V

    iget v4, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v2, v4, v6}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    add-int/lit8 v8, v8, 0x1

    :goto_4
    move-object/from16 v5, v19

    goto/16 :goto_0

    :cond_b
    move-object/from16 v19, v5

    const-string/jumbo v4, "t.realActivity IS NULL!!!!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const-string v0, "removed task : "

    invoke-static {v8, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move v8, v6

    :goto_5
    if-lez v8, :cond_e

    const/4 v6, 0x1

    :cond_e
    return v6
.end method

.method public removeFocusedTask(Landroid/content/Context;)Z
    .locals 1

    const-string p1, "removeFocusedTask()"

    const-string v0, "AppController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    move-result p0

    :goto_0
    const-string p1, "retValue = "

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public removeNavigationApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "AppController"

    const-string v1, "removeNavigationApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getListInfoFromJson(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string/jumbo v2, "total listPackageInfo\'s cnt = "

    invoke-static {p2, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove taskId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", removeTask : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    goto :goto_1

    :catch_0
    const-string v4, "Exception! "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NameNotFoundException! : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public removeSearchedTask(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "AppController"

    const-string v1, "removeSearchedTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/AppController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v4, p2, Lcom/android/systemui/bixby2/util/PackageInfoBixby;->PackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "recentTaskInfo = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    move p1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string p0, "retValue = "

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    :catch_0
    const-string p0, "Exception! "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p0, "NameNotFoundException! "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public startNavigationApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z
    .locals 8

    const-string/jumbo v0, "startNavigationApp()"

    const-string v1, "AppController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getListInfoFromJson(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v6, "listPackageInfo\'s cnt = "

    const-string v7, ",  listActivityInfo\'s cnt"

    invoke-static {p2, v4, v6, v7, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v4, :cond_0

    const-string p0, "packageInfo\'s cnt and activityInfo\'s cnt are different!! "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    if-eqz p2, :cond_b

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    move p2, v5

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ge p2, v4, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exist in the phone : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "Exception! "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "NameNotFoundException! : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    :goto_1
    add-int/2addr p2, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string v4, "installed listPackageInfo = "

    invoke-static {p2, v4, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_a

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/systemui/bixby2/controller/AppController;->getPackageToStartActivityFromRecents(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)I

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    move p2, v5

    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkSettingsCoverLauncher(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/AppController;->checkIncludeCoverLauncher(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/controller/AppController;->checkAvailableCoverLauncher(Ljava/lang/String;)Z

    move-result v4

    iput v6, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    if-nez v3, :cond_5

    const-string v2, "NotIncludeCoverLauncherAppList"

    iput-object v2, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    const-string v2, "SetOffCoverLauncher"

    iput-object v2, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    const-string v2, "NotAvailableCoverLauncherWidget"

    iput-object v2, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string/jumbo v2, "success"

    iput-object v2, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    :cond_8
    :goto_3
    const-string/jumbo v2, "to start app is : "

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController;->mLauncher:Lcom/android/systemui/bixby2/util/ActivityLauncher;

    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->startActivityInBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x2

    iput p0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    const-string p0, "fail"

    iput-object p0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    :cond_9
    move v5, v6

    goto :goto_4

    :cond_a
    const-string p0, "There is no navi app in the phone"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v5

    :cond_b
    :goto_5
    const-string p0, "packageInfo\'s cnt or activityInfo\'s cnt is 0"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method
