.class public final Lcom/android/systemui/subscreen/SubScreenManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public mDeviceInteractive:Z

.field public mDeviceState:I

.field public final mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

.field public final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public mFallback:Lcom/android/systemui/subscreen/SubScreenFallback;

.field public final mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsFolderOpened:Z

.field public mIsPluginConnected:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMainDisplayState:I

.field public final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mOccludedApps:Ljava/util/List;

.field public mPendingRequestDualState:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

.field public mPluginContext:Landroid/content/Context;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mRequestBouncerForLauncherTask:Z

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mSettingsHelperLazy:Ldagger/Lazy;

.field public mSubDisplay:Landroid/view/Display;

.field public final mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field public mSubScreenWindow:Landroid/view/Window;

.field public final mTaskStack:Ljava/util/Stack;

.field public final mTaskStackChangeListener:Lcom/android/systemui/subscreen/SubScreenManager$8;

.field public final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

.field public final mToken:Landroid/os/IBinder;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/hardware/display/DisplayManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/app/ActivityManager;Landroid/app/KeyguardManager;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/shared/system/TaskStackChangeListeners;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/app/ActivityManager;",
            "Landroid/app/KeyguardManager;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    iput-boolean v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    iput-boolean v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$1;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$2;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$3;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$4;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$7;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/subscreen/SubScreenManager$8;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListener:Lcom/android/systemui/subscreen/SubScreenManager$8;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/subscreen/SubScreenManager$5;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    return-void
.end method

.method public static getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/subscreen/SubScreenManager$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x3ea

    return p0

    :cond_1
    const/16 p0, 0x3e9

    return p0
.end method

.method public static getRoomName$1(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "INVALID TYPE ["

    const-string v1, "]"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "SUB_ROOM_MUSIC_WIDGET"

    return-object p0

    :pswitch_2
    const-string p0, "SUB_ROOM_NETWORK"

    return-object p0

    :pswitch_3
    const-string p0, "SUB_ROOM_NOTIFICATION"

    return-object p0

    :pswitch_4
    const-string p0, "SUB_ROOM_QUICKPANEL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final addPluginListener$2$1()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const-string v1, "SubScreenManager"

    if-eqz v0, :cond_0

    const-string p0, "addPluginListener() already connected"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "addPluginListener() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-string v3, "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"

    const-class v5, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    return-void
.end method

.method public final adjustSubHomeActivityOrder(Z)V
    .locals 6

    const-string v0, "adjustSubHomeActivityOrder lastWakeReason"

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    monitor-enter v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    :try_start_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x64

    invoke-interface {p1, v0, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-ne p1, v2, :cond_0

    const-string p1, "101_S_R"

    goto :goto_0

    :cond_0
    const-string p1, "101_S"

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    if-eq p0, v2, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p0, "double tap"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "side key"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "screen timeout"

    :goto_1
    if-eqz p0, :cond_9

    const-string v0, "CVSE1004"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p1, p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const-string v4, "SubScreenManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/android/systemui/subscreen/SubScreenComponentChecker;->isCellBroadCastAlertDialog(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_7
    if-ne p1, v2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v0, "SubScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " adjustSubHomeActivityOrder Current Top Task : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->moveToFrontCoverLauncherTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iput-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    :cond_9
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSubDisplay = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mIsPluginConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const-string v2, "  mIsFolderOpened = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    const-string v2, "  mSubScreenPlugin = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  getWindow() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow$1()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSubScreenWindow = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSubRoomMap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    const-string p0, " ----------------------------------------------- "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getWindow$1()Landroid/view/Window;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "SubScreenManager"

    const-string v0, "getWindow() no window"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final initWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "initWindow() mSubDisplay is not initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenPresentation;

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/subscreen/SubScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Invalid display: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener$1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final isShowWhenCoverLocked(Landroid/content/ComponentName;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SubScreenPackageChecker"

    if-eqz v0, :cond_0

    const-string p0, "SubHome Component"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.spay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Specific package: "

    if-eqz v3, :cond_1

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.skt.prod.dialer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.incallui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Specific class: "

    if-eqz v3, :cond_5

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.clockpackage.timer.activity.TimerSubScreenB2AlertActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertSubScreenB2Activity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.dialtacts.common.picker.ContactSelectionActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.app.calendarnotification.view.SubScreenActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.clockpackage.alarm.activity.AlarmAlertActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v4, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "Occluded app: "

    const-string v0, "SubScreenManager"

    invoke-static {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isTurnOnWhenUnFolding()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v2, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "isTurnOnWhenUnFolding() no plugin"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTurnOnWhenUnFolding() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->isTurnOnSmartCase()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->isTurnOnSmartCase()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final moveToFrontCoverLauncherTask(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Move to Front task : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenComponentChecker;->isCellBroadCastAlertDialog(Landroid/content/ComponentName;)Z

    move-result p1

    xor-int/2addr p1, v0

    move v0, p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final onFinishedGoingToSleep()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string p0, "onFinishedGoingToSleep() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->isTurnOnWhenUnFolding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onFinishedGoingToSleep() getLastWakeReason "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v3, v3, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    invoke-static {v3, v1, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "onFinishedGoingToSleep() remove MSG_FINISH_SUB_HOME_ACTIVITY "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedGoingToSleep()V

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "onFinishedWakingUp() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFinishedWakingUp()V

    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 2

    const-string v0, "onFolderStateChanged() opened = "

    const-string v1, "SubScreenManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow$1()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onFolderStateChanged() no window"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v0, :cond_1

    const-string p0, "onFolderStateChanged() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p1, p1, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x64

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSettingsHelperLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNavigationForSubscreen()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setShowNavigationForSubscreen(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginConnected() ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-ne v0, p1, :cond_1

    const-string/jumbo p0, "startSubScreen() already started"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v0, "startSubScreen: plugin is changed, stop old plugin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->getWindow$1()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "startSubScreen() no window"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSubScreen() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p2, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    iput-boolean p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenWindow:Landroid/view/Window;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStarted(Landroid/view/Window;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->semIsResumed()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setSubHomeActivityResumed(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListener:Lcom/android/systemui/subscreen/SubScreenManager$8;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    invoke-virtual {p1, p2, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginDisconnected() ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubScreenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->stopSubScreen()V

    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "onScreenTurnedOff() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOff()V

    return-void
.end method

.method public final onScreenTurnedOn()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "onScreenTurnedOn() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onScreenTurnedOn()V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p0, :cond_0

    const-string p0, "SubScreenManager"

    const-string v0, "onStartedGoingToSleep() no plugin"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedGoingToSleep()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceInteractive:Z

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v2, "SubScreenManager"

    if-nez v1, :cond_0

    const-string p0, "onStartedWakingUp() no plugin"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsFolderOpened:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v1, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v0, " onStartedWakingUp wake up reason  "

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " onStartedWakingUp Current Top Task : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {v4, v2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v2, v0, :cond_2

    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->isShowWhenCoverLocked(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestCoverBouncer()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onStartedWakingUp()V

    return-void
.end method

.method public final requestCoverBouncer()V
    .locals 3

    const-string v0, "SubScreenManager"

    const-string/jumbo v1, "requestCoverBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "runOnCover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "bouncerTimeout"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    :goto_0
    return-void
.end method

.method public final requestDualState(Z)V
    .locals 5

    const-string/jumbo v0, "requestDualState "

    const-string v1, "SubScreenManager"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, " updateRefreshRate token "

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v2, :cond_0

    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mToken:Landroid/os/IBinder;

    const-string/jumbo v3, "subhome"

    const/16 v4, 0x78

    invoke-interface {v0, v2, v4, v3}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateRefreshRate exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->newBuilder(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->setFlags(I)Landroid/hardware/devicestate/DeviceStateRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest$Builder;->build()Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateRequestCallback:Lcom/android/systemui/subscreen/SubScreenManager$3;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceStateManager;->cancelStateRequest()V

    :goto_3
    return-void
.end method

.method public final setSubHomeActivityResumed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSubHomeActivityResumed() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "setSubHomeActivityResumed() "

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setSubHomeActivityResumed(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    const-string v0, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSubRoom() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getRoomName$1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startSubHomeActivity()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    const-string v0, "SubScreenManager"

    const-string/jumbo v1, "startSubHomeActivity() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final startSubHomeActivity(Landroid/view/Display;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startSubHomeActivity() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SubScreenManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/LsRune;->SUBSCREEN_DEBUG_ACTIVITY_ON_MAIN:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startSubScreenFallback(Landroid/view/Display;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v0

    const-string v1, "SubScreenManager"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "startSubScreenFallback. Already unlocked "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSubScreenFallback() "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.subscreen.SubScreenFallback"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final stopSubScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopSubScreen() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "stopSubScreen()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStopped()V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceStateCallback:Lcom/android/systemui/subscreen/SubScreenManager$4;

    invoke-virtual {v0, v2}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListener:Lcom/android/systemui/subscreen/SubScreenManager$8;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayListener:Lcom/android/systemui/subscreen/SubScreenManager$7;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    return-void
.end method

.method public final updatePluginListener$1()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updatePluginListener() mIsPluginConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const-string v2, "SubScreenManager"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string/jumbo v0, "removePluginListener() already disconnected"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "removePluginListener() "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Do not plug in connection in safe mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Do not plug in connection in factory mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Lcom/android/systemui/subscreen/SubScreenPresentation;

    if-nez v0, :cond_4

    const-string/jumbo p0, "requestPluginConnection() no activity and no presentation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-boolean v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->addPluginListener$2$1()V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "requestPluginConnection() PluginFaceWidget is not connected, wait connection"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
