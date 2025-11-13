.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingCollector;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAcceptedKeycodes:Ljava/util/Set;

.field public mAvoidGesture:Z

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

.field public final mCommunalInteractorLazy:Ldagger/Lazy;

.field public final mDockEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$5;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

.field public final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mPendingDownEvent:Landroid/view/MotionEvent;

.field public final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field public final mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

.field public mSessionStarted:Z

.field public final mShadeInteractorLazy:Ldagger/Lazy;

.field public mShowingAod:Z

.field public mShowingCommunalHub:Z

.field public mState:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUserInteractor:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FalsingCollector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/util/time/SystemClock;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            "Lcom/android/systemui/util/sensors/ProximitySensor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAcceptedKeycodes:Ljava/util/Set;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mBatteryListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$5;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShadeInteractorLazy:Ldagger/Lazy;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mUserInteractor:Ldagger/Lazy;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mCommunalInteractorLazy:Ldagger/Lazy;

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FalsingCollector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final avoidGesture()V
    .locals 1

    const-string v0, "REAL: avoidGesture"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    const-string v1, "FalsingCollector"

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay(I)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;I)V

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mCommunalInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    sget-object v2, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v4, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalShowing:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    filled-new-array {v4, v0}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;I)V

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mBatteryListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onA11yAction()V
    .locals 1

    const-string v0, "REAL: onA11yAction"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->completePriorGesture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    return-void
.end method

.method public final onBouncerHidden()V
    .locals 1

    const-string v0, "REAL: onBouncerHidden"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_0
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: onKeyEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAcceptedKeycodes:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    iget-object v0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->ejectOldEvents()V

    :cond_0
    return-void
.end method

.method public final onMotionEventComplete()V
    .locals 4

    const-string v0, "REAL: onMotionEventComplete"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-wide/16 v2, 0x64

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public onQsExpansionChanged(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: onQsExpansionChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz p0, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onScreenOff()V
    .locals 1

    const-string v0, "REAL: onScreenOff"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public final onScreenOnFromTouch()V
    .locals 0

    const-string p0, "REAL: onScreenOnFromTouch"

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 0

    return-void
.end method

.method public final onSuccessfulUnlock()V
    .locals 1

    const-string v0, "REAL: onSuccessfulUnlock"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: onTouchEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->avoidGesture()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final sessionEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_2

    const-string v0, "Ending Session"

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->clear()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public final setShowingAod(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: setShowingAod("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public final updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REAL: updateFalseConfidence("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    return-void
.end method

.method public final updateSensorRegistration()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p0, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method public final updateSessionActive()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSensorRegistration()V

    return-void
.end method
