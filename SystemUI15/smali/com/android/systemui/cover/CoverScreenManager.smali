.class public final Lcom/android/systemui/cover/CoverScreenManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field public mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

.field public final mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsAttached:Z

.field public mIsPluginListenerAdded:Z

.field public mIsStarted:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

.field public mPluginContext:Landroid/content/Context;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVisibleRect:Landroid/graphics/Rect;

.field public mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/cover/CoverHost;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/PowerManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/cover/CoverWindowDelegate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/cover/CoverHost;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/cover/CoverWindowDelegate;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    iput-boolean v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    iput-boolean v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    new-instance v2, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/android/systemui/cover/CoverScreenManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/cover/CoverScreenManager$1;-><init>(Lcom/android/systemui/cover/CoverScreenManager;)V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/cover/CoverScreenManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/cover/CoverScreenManager$2;-><init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v3, p11

    iput-object v3, v0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v2, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    iput-object v2, v0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayContainerListener:Lcom/android/systemui/cover/CoverScreenManager$DisplayWindowListenerImpl;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    return-void
.end method

.method public static isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v3, 0x8

    if-eq p0, v3, :cond_1

    const/16 v3, 0xb

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    const/16 v2, 0x10

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    iget v2, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mCoverState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const-string v2, "null"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mIsPluginConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    const-string v3, "  mCoverPlugin = "

    invoke-static {v0, v1, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mVirtualDisplay = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mActivity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz v1, :cond_3

    move-object v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mRoomMap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final initialize(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->startCoverHomeActivity(Landroid/view/Display;)V

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "CoverScreenManager"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e8

    const-wide/16 v0, 0x12c

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    const-string v1, "CoverScreenManager"

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/plugins/cover/PluginViewCover;

    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    :goto_0
    const-string v2, "onPluginConnected() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    goto :goto_1

    :cond_2
    instance-of p1, p1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->startCover()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "onPluginConnected fail by wrong instance "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    const-string p1, "onPluginDisconnected() "

    const-string v0, "CoverScreenManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    const-string/jumbo p1, "stopCover:"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverDetached()V

    iput-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onScreenInternalTurningOff()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string v1, "onScreenInternalTurningOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOff()V

    :cond_0
    return-void
.end method

.method public final onScreenInternalTurningOn()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string v1, "onScreenInternalTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenInternalTurningOn()V

    :cond_0
    return-void
.end method

.method public final onScreenTurnedOff()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string v1, "onScreenTurnedOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onScreenTurningOn()V

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public final prepareCoverHomeActivity()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/TaskInfo;

    iget-object v3, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    const-string v4, "com.android.systemui.cover.CoverHomeActivity"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "CoverScreenManager"

    if-eqz v3, :cond_0

    const-string p0, "ignore startCoverHomeActivity cause already display"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v3, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.samsung.android.spay"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "ignore startCoverHomeActivity cause samsung pay"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, v0, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.skt.prod.dialer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "ignore startCoverHomeActivity by T-CALL"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    new-instance v0, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/cover/CoverScreenManager;I)V

    const-wide/16 v2, 0x64

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return v1
.end method

.method public final prepareCoverWindow()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "CoverScreenManager"

    const-string v6, "Request Virtual display  maximize"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->show()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginCover;->onStartedWakingUp()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->hide()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_ADJUST_REFRESH_RATE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/cover/CoverScreenManager;->updateRefreshRate(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final prepareVirtualDisplay()V
    .locals 11

    const-string v0, " prepareVirtualDisplay mVirtualDisplay="

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_8

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/16 v2, 0x438

    if-ge v1, v2, :cond_0

    const/16 v1, 0x140

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x5a0

    if-ge v1, v2, :cond_1

    const/16 v1, 0x1e0

    goto :goto_0

    :cond_1
    const/16 v1, 0x280

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_DEBUG_CAMERA_COVER_ON_SIDE_COVER:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    const-string v1, "CoverScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cover mVisibleRect="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " density="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/view/SemWindowManager;->getUserDisplaySize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3fe09374bc6a7efaL    # 0.518

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    const-wide v7, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v3, v7

    double-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-double v7, v5

    const-wide v9, 0x3fdd70a3d70a3d71L    # 0.46

    mul-double/2addr v7, v9

    double-to-int v5, v7

    add-int/2addr v5, v2

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-double v7, v7

    const-wide v9, 0x3fd3f7ced916872bL    # 0.312

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v7, v3

    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    const-string v2, "CoverScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "point="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  cover mVisibleRect="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " density="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v1, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->resize(II)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    monitor-enter p0

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7, v1}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v3, "Cover-Virtual-Display"

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const v8, 0x4000060b    # 2.0003688f

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const-string v1, "CoverScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit p0

    goto :goto_7

    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :goto_7
    return-void
.end method

.method public final removePluginListener$1()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CoverScreenManager"

    const-string v1, "removePluginListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    return-void
.end method

.method public final removeVirtualDisplay()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    const-string v0, "CoverScreenManager"

    const-string v1, "removeVirtualDisplay() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    iput-object v0, v1, Lcom/android/systemui/cover/CoverWindowDelegate;->mCoverDisplay:Landroid/view/Display;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    const-string v1, "CoverScreenManager"

    if-eqz v0, :cond_0

    const-string p0, "Do not plug in connection in safe mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "requestPluginListener()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-boolean v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseDisplayCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, "com.samsung.systemui.action.PLUGIN_VIEW_COVER"

    const-class v5, Lcom/android/systemui/plugins/cover/PluginViewCover;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez p1, :cond_4

    const-string p0, "addPluginListener fail. wait virtual display"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    if-nez v0, :cond_5

    const-string p0, "addPluginListener fail. wait activity created"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-string v3, "com.samsung.systemui.action.PLUGIN_DISPLAY_COVER"

    const-class v5, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    :goto_0
    const-string p1, "addPluginListener()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsPluginListenerAdded:Z

    goto :goto_1

    :cond_6
    const-string p1, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginConnectionRunnable:Lcom/android/systemui/cover/CoverScreenManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final startCover()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    const-string v1, "CoverScreenManager"

    if-nez v0, :cond_1

    const-string/jumbo p0, "startCover fail.  plugin is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "startCover:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    or-int/2addr v4, v5

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startCover() hide systemBars - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    instance-of v3, v1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_4
    instance-of v1, v1, Lcom/android/systemui/plugins/cover/PluginDisplayCover;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mActivity:Lcom/android/systemui/cover/CoverHomeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverAttached(Landroid/view/Window;Lcom/samsung/android/cover/CoverState;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mPluginContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object v2, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/cover/PluginCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->isHideInternal(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverWindow()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsStarted:Z

    :cond_8
    return-void
.end method

.method public final startCoverHomeActivity(Landroid/view/Display;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startCoverHomeActivity() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoverScreenManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10010000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.cover.CoverHomeActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mContext:Landroid/content/Context;

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

.method public final updatePluginListener()V
    .locals 2

    const-string v0, "CoverScreenManager"

    const-string/jumbo v1, "updatePluginListener() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->removePluginListener$1()V

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/cover/CoverScreenManager;->requestPluginConnection(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method

.method public final updateRefreshRate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode(Z)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "CoverScreenManager"

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez p1, :cond_1

    const-string p1, "display"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mRefreshRateToken:Landroid/os/IBinder;

    const/16 v1, 0x3c

    invoke-interface {p1, v0, v1, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string/jumbo p1, "updateRefreshRate enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p0, :cond_4

    const-string/jumbo p0, "updateRefreshRate failed"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_4

    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const-string/jumbo p1, "updateRefreshRate disabled"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    :cond_4
    :goto_2
    return-void
.end method
