.class public final Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ACTION_LOCK_TASK_MODE:Ljava/lang/String;

.field public final FLAG_NAVSTAR_ASSISTANT_ENABLED:I

.field public allowGesture:Z

.field public final assistManagerLazy:Ldagger/Lazy;

.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;

.field public final context:Landroid/content/Context;

.field public final degreeEnd:F

.field public final degreeStart:F

.field public final displayId:I

.field public distance:F

.field public final downPos:Landroid/graphics/PointF;

.field public downTime:J

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Landroid/view/InputMonitor;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isAttached:Z

.field public isInLockTaskMode:Z

.field public isPilfered:Z

.field public lastProgress:F

.field public navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final progressTouchSlop:F

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startAssistant:Z

.field public timeFraction:F

.field public final touchSlop:F

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->assistManagerLazy:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->displayId:I

    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/high16 p2, 0x42dc0000    # 110.0f

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->degreeStart:F

    const/high16 p2, 0x43340000    # 180.0f

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->degreeEnd:F

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070420

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->touchSlop:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10502c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->progressTouchSlop:F

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->FLAG_NAVSTAR_ASSISTANT_ENABLED:I

    const-string p1, "com.samsung.android.action.LOCK_TASK_MODE"

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->ACTION_LOCK_TASK_MODE:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;-><init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->intentFilter:Landroid/content/IntentFilter;

    sget-object p1, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->bgHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final cancelGesture(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->allowGesture:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->startAssistant:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->lastProgress:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$1;-><init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$cancelGesture$1$2;-><init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->allowGesture:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->startAssistant:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isPilfered:Z

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->lastProgress:F

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->distance:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final updateIsEnabled()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarSPluginFlags()I

    move-result v0

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->FLAG_NAVSTAR_ASSISTANT_ENABLED:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :cond_3
    iput-object v3, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/InputMonitor;->dispose()V

    :cond_4
    iput-object v3, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->context:Landroid/content/Context;

    const-class v4, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_5

    const-string v4, "corner-swipe"

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->displayId:I

    invoke-virtual {v0, v4, v5}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    new-instance v4, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    :cond_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$setInputChannel$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$setInputChannel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V

    invoke-direct {v4, v3, v0, v5, v6}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$broadcastReceiver$1;

    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->intentFilter:Landroid/content/IntentFilter;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->bgHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v13, 0x30

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;Ljava/lang/String;I)V

    :cond_7
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_8

    move v1, v2

    :catch_0
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isInLockTaskMode:Z

    const-string p0, "isInLockTaskMode="

    const-string v0, "CornerGestureHandler"

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
