.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# instance fields
.field public backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

.field public currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public final displaySize:Landroid/graphics/Point;

.field public entryToActiveDelay:F

.field public final entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

.field public final failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

.field public fullyStretchedThreshold:F

.field public gestureEntryTime:J

.field public gestureInactiveTime:J

.field public hasPassedDragSlop:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mainHandler:Landroid/os/Handler;

.field public minFlingDistance:I

.field public final onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

.field public pastThresholdWhileEntryOrInactiveTime:J

.field public previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

.field public previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public previousXTranslation:F

.field public previousXTranslationOnActiveOffset:F

.field public startX:F

.field public startY:F

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public totalTouchDeltaActive:F

.field public totalTouchDeltaInactive:F

.field public touchDeltaStartX:F

.field public velocityTracker:Landroid/view/VelocityTracker;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewConfiguration:Landroid/view/ViewConfiguration;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 10

    move-object v6, p0

    move-object v0, p1

    move-object/from16 v1, p8

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v0, p2

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    move-object v0, p3

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    move-object v7, p4

    iput-object v7, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    move-object v0, p5

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;-><init>(Landroid/content/res/Resources;)V

    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetCommittedStateListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetCommittedStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    const-wide/16 v3, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    iget-object v0, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    return-void
.end method

.method public static final synthetic access$getMView$p$s-1759132487(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic getCurrentState$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    if-eqz v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    sub-float p1, v0, p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_6

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public static isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z
    .locals 4

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;-><init>(Ljava/lang/Float;)V

    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move p2, p4

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    if-nez p1, :cond_3

    iput-wide v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    goto :goto_1

    :cond_5
    move p4, v0

    :goto_1
    move v0, p4

    :goto_2
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BackPanelController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  currentState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    const-string v0, "  isLeftPanel="

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getBackPanelView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/navigationbar/gestural/BackPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4b

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    const/4 v11, 0x1

    if-eq v1, v11, :cond_41

    const/4 v9, 0x2

    const/4 v12, 0x3

    if-eq v1, v9, :cond_3

    if-eq v1, v12, :cond_1

    goto/16 :goto_2e

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_2
    iput-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2e

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    if-eqz v14, :cond_4

    move v1, v11

    goto :goto_0

    :cond_4
    sub-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v1, v1, v13

    if-lez v1, :cond_8

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_5

    move-object v1, v5

    :cond_5
    const-string v13, "BackPanelController"

    invoke-virtual {v1, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    iget-object v13, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v14, :cond_7

    move-object v14, v5

    :cond_7
    invoke-interface {v1, v13, v14}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iput-boolean v11, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    iput-boolean v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    :cond_8
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    :goto_0
    if-eqz v1, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    sub-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v14, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean v14, v14, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    if-eqz v14, :cond_9

    iget v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    sub-float v14, v1, v14

    goto :goto_1

    :cond_9
    iget v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    sub-float/2addr v14, v1

    :goto_1
    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget v15, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    sub-float v15, v14, v15

    iput v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v16, v16, v4

    if-lez v16, :cond_e

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v16

    iget v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpg-float v7, v16, v7

    if-nez v7, :cond_a

    move v7, v11

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    iget-object v8, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    if-eqz v8, :cond_b

    goto :goto_3

    :cond_b
    move-object v8, v5

    :goto_3
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v4}, Lkotlin/ranges/ClosedFloatRange;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-nez v7, :cond_d

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    iput v15, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    goto :goto_5

    :cond_d
    :goto_4
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    add-float/2addr v1, v15

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    :goto_5
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    add-float/2addr v4, v15

    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    :cond_e
    int-to-float v1, v9

    mul-float/2addr v1, v14

    cmpl-float v1, v1, v13

    if-ltz v1, :cond_f

    move v1, v11

    goto :goto_6

    :cond_f
    move v1, v6

    :goto_6
    iget v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    cmpl-float v4, v14, v4

    if-lez v4, :cond_10

    move v4, v11

    goto :goto_7

    :cond_10
    move v4, v6

    :goto_7
    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v8, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v11, :cond_18

    if-eq v7, v9, :cond_15

    if-eq v7, v12, :cond_11

    goto/16 :goto_c

    :cond_11
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    iget v7, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    neg-float v7, v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_12

    move v4, v11

    goto :goto_8

    :cond_12
    move v4, v6

    :goto_8
    invoke-interface {v10}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v17

    iget-wide v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    sub-long v17, v17, v12

    const-wide/16 v12, 0x12c

    cmp-long v10, v17, v12

    if-lez v10, :cond_13

    move v10, v11

    goto :goto_9

    :cond_13
    move v10, v6

    :goto_9
    if-eqz v1, :cond_14

    if-eqz v4, :cond_19

    :cond_14
    if-eqz v10, :cond_19

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto :goto_c

    :cond_15
    iget v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    iget v12, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    cmpl-float v10, v10, v12

    if-ltz v10, :cond_16

    move v10, v11

    goto :goto_a

    :cond_16
    move v10, v6

    :goto_a
    if-eqz v4, :cond_17

    if-eqz v10, :cond_17

    if-eqz v1, :cond_17

    move v1, v11

    goto :goto_b

    :cond_17
    move v1, v6

    :goto_b
    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v10, 0x4

    invoke-static {v0, v1, v4, v5, v10}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto :goto_c

    :cond_18
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, v5, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    :cond_19
    :goto_c
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    if-eq v1, v11, :cond_1d

    if-eq v1, v9, :cond_1c

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1a

    :goto_d
    move-object v1, v5

    goto :goto_e

    :cond_1a
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_1b

    goto :goto_d

    :cond_1b
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    sub-float/2addr v14, v1

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    div-float/2addr v14, v1

    invoke-static {v14}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_e

    :cond_1c
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    iget v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    div-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_e

    :cond_1d
    iget v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    div-float/2addr v14, v1

    invoke-static {v14}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_37

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-eq v4, v11, :cond_2e

    if-eq v4, v9, :cond_23

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1e

    goto/16 :goto_23

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_1f

    goto :goto_f

    :cond_1f
    move-object v6, v5

    :goto_f
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v18

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v6, :cond_20

    goto :goto_10

    :cond_20
    move-object v6, v5

    :goto_10
    invoke-interface {v6, v4}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_21

    goto :goto_11

    :cond_21
    move-object v6, v5

    :goto_11
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v21

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_22

    move-object/from16 v25, v4

    goto :goto_12

    :cond_22
    move-object/from16 v25, v5

    :goto_12
    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    goto/16 :goto_23

    :cond_23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v6, :cond_24

    goto :goto_13

    :cond_24
    move-object v6, v5

    :goto_13
    invoke-interface {v6, v4}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v6, v6, v10

    if-lez v6, :cond_27

    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-lez v6, :cond_26

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_25

    goto :goto_14

    :cond_25
    move-object v6, v5

    goto :goto_14

    :cond_26
    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_25

    goto :goto_14

    :cond_27
    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    :goto_14
    iput-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    invoke-interface {v6, v4}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    const/4 v10, 0x0

    invoke-static {v6, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v21

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_28

    goto :goto_15

    :cond_28
    move-object v6, v5

    :goto_15
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v22

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v6, :cond_29

    goto :goto_16

    :cond_29
    move-object v6, v5

    :goto_16
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    if-eqz v6, :cond_2a

    invoke-virtual {v6, v4}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    move-result-object v6

    if-eqz v6, :cond_2a

    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move/from16 v20, v6

    goto :goto_17

    :cond_2a
    const/16 v20, 0x0

    :goto_17
    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_2b

    goto :goto_18

    :cond_2b
    move-object v6, v5

    :goto_18
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v23

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_2c

    goto :goto_19

    :cond_2c
    move-object v6, v5

    :goto_19
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v24

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_2d

    move-object/from16 v25, v4

    goto :goto_1a

    :cond_2d
    move-object/from16 v25, v5

    :goto_1a
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    goto/16 :goto_23

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object/from16 v17, v6

    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    if-eqz v6, :cond_2f

    goto :goto_1b

    :cond_2f
    move-object v6, v5

    :goto_1b
    invoke-interface {v6, v4}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_30

    goto :goto_1c

    :cond_30
    move-object v6, v5

    :goto_1c
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v21

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_31

    goto :goto_1d

    :cond_31
    move-object v6, v5

    :goto_1d
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v22

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v6, :cond_32

    goto :goto_1e

    :cond_32
    move-object v6, v5

    :goto_1e
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    if-eqz v6, :cond_33

    invoke-virtual {v6, v4}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    move-result-object v6

    if-eqz v6, :cond_33

    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move/from16 v20, v6

    goto :goto_1f

    :cond_33
    const/16 v20, 0x0

    :goto_1f
    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_34

    goto :goto_20

    :cond_34
    move-object v6, v5

    :goto_20
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v23

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v6, :cond_35

    goto :goto_21

    :cond_35
    move-object v6, v5

    :goto_21
    invoke-virtual {v6, v4}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v24

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_36

    move-object/from16 v25, v4

    goto :goto_22

    :cond_36
    move-object/from16 v25, v5

    :goto_22
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    :cond_37
    :goto_23
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v1, v4

    goto :goto_24

    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_24
    :pswitch_2
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v8, v4

    if-eq v4, v11, :cond_3b

    if-eq v4, v9, :cond_3a

    const/4 v6, 0x3

    if-eq v4, v6, :cond_39

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_38

    goto :goto_25

    :cond_38
    move-object v4, v5

    goto :goto_25

    :cond_39
    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_38

    goto :goto_25

    :cond_3a
    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_38

    goto :goto_25

    :cond_3b
    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v4, :cond_38

    :goto_25
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    if-eqz v4, :cond_3e

    invoke-virtual {v4, v1}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->isNewState:Z

    if-eqz v4, :cond_3c

    goto :goto_26

    :cond_3c
    move-object v1, v5

    :goto_26
    if-eqz v1, :cond_3e

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v6, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v7, 0x0

    iput v7, v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    if-eqz v1, :cond_3d

    iput-object v1, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_3d
    iget v1, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    add-float/2addr v1, v7

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_3e
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v6, :cond_3f

    goto :goto_27

    :cond_3f
    move-object v6, v5

    :goto_27
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x41700000    # 15.0f

    mul-float/2addr v6, v4

    div-float/2addr v1, v6

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    if-eqz v3, :cond_40

    goto :goto_28

    :cond_40
    move-object v3, v5

    :goto_28
    invoke-virtual {v3, v1}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/4 v1, 0x6

    invoke-static {v0, v2, v5, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    goto/16 :goto_2e

    :cond_41
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v4, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const-wide/16 v7, 0xa

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2a

    :pswitch_3
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto/16 :goto_2a

    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-ne v1, v2, :cond_42

    invoke-interface {v10}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-gez v1, :cond_42

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto/16 :goto_2a

    :cond_42
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-ne v1, v2, :cond_43

    invoke-interface {v10}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x190

    cmp-long v1, v1, v3

    if-gez v1, :cond_43

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$4;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    const-wide/16 v2, 0x82

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    :cond_43
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto :goto_2a

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    if-nez v1, :cond_44

    move-object v1, v5

    :cond_44
    invoke-interface {v1, v11}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_45

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$2;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    invoke-virtual {v9, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_45
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$3;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    :cond_46
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto :goto_2a

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    move-result v1

    if-nez v1, :cond_48

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_47

    goto :goto_29

    :cond_47
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    goto :goto_2a

    :cond_48
    :goto_29
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v1, :cond_49

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    invoke-virtual {v9, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_49
    :goto_2a
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_4a
    iput-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2e

    :cond_4b
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->allAnimatedFloat:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_2b

    :cond_4c
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_4d

    move-object v3, v5

    goto :goto_2c

    :cond_4d
    move-object v3, v2

    :goto_2c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    if-nez v2, :cond_4e

    goto :goto_2d

    :cond_4e
    move-object v5, v2

    :goto_2d
    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v6, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    iput-boolean v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    :cond_4f
    :goto_2e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onViewAttached()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateConfiguration$1()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowDirection(Z)V

    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object p3, p2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p3, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x15e

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;)V

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    return-void
.end method

.method public final setDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    return-void
.end method

.method public final setInsets(II)V
    .locals 0

    return-void
.end method

.method public final setIsLeftPanel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iput-boolean p1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x33

    goto :goto_0

    :cond_1
    const/16 p1, 0x35

    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public final setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    const p2, 0x3f4ccccd    # 0.8f

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_2

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v7, 0xbf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    return-void
.end method

.method public final updateArrowDirection(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    :cond_0
    return-void
.end method

.method public final updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V
    .locals 11

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateArrowState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackPanelController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 v1, 0x4

    const/16 v2, 0x58

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    const/4 v6, 0x3

    if-eq p1, v6, :cond_8

    const/4 v3, 0x5

    if-eq p1, v3, :cond_6

    const/4 v3, 0x6

    if-eq p1, v3, :cond_6

    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    if-nez p1, :cond_5

    move-object p1, v5

    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-eq p1, v3, :cond_c

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    if-nez p1, :cond_7

    move-object p1, v5

    :cond_7
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    if-nez p1, :cond_9

    move-object p1, v5

    :cond_9
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    if-nez p1, :cond_b

    move-object p1, v5

    :cond_b
    invoke-interface {p1, v4}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    const/16 v3, 0x17

    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v9, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V

    iget-object p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz p1, :cond_d

    goto :goto_2

    :cond_d
    move-object p1, v5

    :goto_2
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v7}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/dynamicanimation/animation/SpringForce;

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput v7, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    if-eqz v5, :cond_f

    iput-object v5, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    :cond_f
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    add-float/2addr p0, v7

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-ne p1, p2, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    iget-object p0, v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x78

    invoke-virtual {v10, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object p2, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, v7, p2, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x50

    invoke-virtual {v10, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :pswitch_2
    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-eq p1, p2, :cond_11

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_11
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {v10, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {v10, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :pswitch_4
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    if-eqz v0, :cond_12

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    const-wide/16 v0, 0xa

    invoke-virtual {v10, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-ne p1, p2, :cond_13

    const p1, 0x40966666    # 4.7f

    goto :goto_4

    :cond_13
    const/high16 p1, 0x40900000    # 4.5f

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    goto :goto_5

    :pswitch_5
    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    iget p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    neg-float p1, p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    const/high16 p2, -0x40400000    # -1.5f

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    if-nez v0, :cond_14

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    goto :goto_5

    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->updateBackGestureIcon$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string p0, "BackPanelController"

    const-string/jumbo p1, "updateBackGestureIcon fail, view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateConfiguration$1()V

    goto :goto_0

    :cond_0
    const-string p0, "BackPanelController"

    const-string/jumbo p1, "updateBackPanelColor fail, view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateConfiguration$1()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    return-void
.end method

.method public final updateRestingArrowDimens()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_29

    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x7bf

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    goto/16 :goto_29

    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v9, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    iget-object v8, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    move-object v6, v4

    :goto_4
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v11, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_5

    move-object v6, v1

    goto :goto_5

    :cond_5
    move-object v6, v4

    :goto_5
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v14, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_6

    move-object v6, v1

    goto :goto_6

    :cond_6
    move-object v6, v4

    :goto_6
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v15, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_7

    move-object v6, v1

    goto :goto_7

    :cond_7
    move-object v6, v4

    :goto_7
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v13, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move-object v1, v4

    :goto_8
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x23

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    goto/16 :goto_29

    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_9

    move-object v6, v1

    goto :goto_9

    :cond_9
    move-object v6, v4

    :goto_9
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v9, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_a

    move-object v6, v1

    goto :goto_a

    :cond_a
    move-object v6, v4

    :goto_a
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_b

    move-object v6, v1

    goto :goto_b

    :cond_b
    move-object v6, v4

    :goto_b
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v14, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_c

    move-object v6, v1

    goto :goto_c

    :cond_c
    move-object v6, v4

    :goto_c
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v15, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_d

    move-object v6, v1

    goto :goto_d

    :cond_d
    move-object v6, v4

    :goto_d
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v13, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    move-object v1, v4

    :goto_e
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x67

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    goto/16 :goto_29

    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_f

    move-object v6, v1

    goto :goto_f

    :cond_f
    move-object v6, v4

    :goto_f
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v9, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_10

    move-object v6, v1

    goto :goto_10

    :cond_10
    move-object v6, v4

    :goto_10
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_11

    move-object v6, v1

    goto :goto_11

    :cond_11
    move-object v6, v4

    :goto_11
    iget-object v8, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_12

    move-object v6, v1

    goto :goto_12

    :cond_12
    move-object v6, v4

    :goto_12
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_13

    move-object v7, v1

    goto :goto_13

    :cond_13
    move-object v7, v4

    :goto_13
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v14, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_14

    move-object v7, v1

    goto :goto_14

    :cond_14
    move-object v7, v4

    :goto_14
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v15, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_15

    move-object v7, v1

    goto :goto_15

    :cond_15
    move-object v7, v4

    :goto_15
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v13, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_16

    goto :goto_16

    :cond_16
    move-object v1, v4

    :goto_16
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x62

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    goto/16 :goto_29

    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_17

    move-object v6, v1

    goto :goto_17

    :cond_17
    move-object v6, v4

    :goto_17
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v9, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_18

    move-object v6, v1

    goto :goto_18

    :cond_18
    move-object v6, v4

    :goto_18
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_19

    move-object v6, v1

    goto :goto_19

    :cond_19
    move-object v6, v4

    :goto_19
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1a

    move-object v7, v1

    goto :goto_1a

    :cond_1a
    move-object v7, v4

    :goto_1a
    iget-object v8, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1b

    move-object v7, v1

    goto :goto_1b

    :cond_1b
    move-object v7, v4

    :goto_1b
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v14, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1c

    move-object v7, v1

    goto :goto_1c

    :cond_1c
    move-object v7, v4

    :goto_1c
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v15, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1d

    move-object v7, v1

    goto :goto_1d

    :cond_1d
    move-object v7, v4

    :goto_1d
    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v13, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_1e

    goto :goto_1e

    :cond_1e
    move-object v1, v4

    :goto_1e
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x62

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    goto/16 :goto_29

    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v1, :cond_1f

    move-object v6, v1

    goto :goto_1f

    :cond_1f
    move-object v6, v4

    :goto_1f
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v9, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_20

    move-object v6, v1

    goto :goto_20

    :cond_20
    move-object v6, v4

    :goto_20
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_21

    move-object v6, v1

    goto :goto_21

    :cond_21
    move-object v6, v4

    :goto_21
    iget-object v8, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_22

    move-object v6, v1

    goto :goto_22

    :cond_22
    move-object v6, v4

    :goto_22
    iget-object v7, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->verticalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_23

    move-object v6, v1

    goto :goto_23

    :cond_23
    move-object v6, v4

    :goto_23
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_24

    move-object v11, v1

    goto :goto_24

    :cond_24
    move-object v11, v4

    :goto_24
    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v11, v11, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_25

    move-object v12, v1

    goto :goto_25

    :cond_25
    move-object v12, v4

    :goto_25
    iget-object v12, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v14, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_26

    move-object v12, v1

    goto :goto_26

    :cond_26
    move-object v12, v4

    :goto_26
    iget-object v12, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v15, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_27

    move-object v12, v1

    goto :goto_27

    :cond_27
    move-object v12, v4

    :goto_27
    iget-object v12, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v13, v12, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v1, :cond_28

    goto :goto_28

    :cond_28
    move-object v1, v4

    :goto_28
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x20

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    :goto_29
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    sget-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_29

    sget-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    if-eq v5, v6, :cond_29

    move v6, v7

    goto :goto_2a

    :cond_29
    const/4 v6, 0x0

    :goto_2a
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v2, v5

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eq v5, v9, :cond_2d

    if-eq v5, v8, :cond_2d

    const/4 v10, 0x6

    if-eq v5, v10, :cond_2b

    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v5, v4

    :goto_2b
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    :goto_2c
    move v12, v5

    goto :goto_2f

    :cond_2b
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v5, v4

    :goto_2d
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    goto :goto_2c

    :cond_2d
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_2e

    goto :goto_2e

    :cond_2e
    move-object v5, v4

    :goto_2e
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    goto :goto_2c

    :goto_2f
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v2, v5

    packed-switch v5, :pswitch_data_1

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_6
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_2f

    goto :goto_30

    :cond_2f
    move-object v5, v4

    :goto_30
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    :goto_31
    move-object v13, v5

    goto :goto_34

    :pswitch_7
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_30

    goto :goto_32

    :cond_30
    move-object v5, v4

    :goto_32
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    goto :goto_31

    :pswitch_8
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_31

    goto :goto_33

    :cond_31
    move-object v5, v4

    :goto_33
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    goto :goto_31

    :goto_34
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v2, v5

    if-eq v5, v7, :cond_3b

    const/4 v10, 0x2

    if-eq v5, v10, :cond_3b

    if-eq v5, v9, :cond_39

    const/4 v9, 0x4

    if-eq v5, v9, :cond_37

    if-eq v5, v8, :cond_35

    const/4 v8, 0x7

    if-eq v5, v8, :cond_33

    :cond_32
    move-object v11, v4

    goto :goto_3b

    :cond_33
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_34

    goto :goto_35

    :cond_34
    move-object v5, v4

    :goto_35
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    :goto_36
    move-object v11, v5

    goto :goto_3b

    :cond_35
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_36

    goto :goto_37

    :cond_36
    move-object v5, v4

    :goto_37
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    goto :goto_36

    :cond_37
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_38

    goto :goto_38

    :cond_38
    move-object v5, v4

    :goto_38
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_36

    :cond_39
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_3a

    goto :goto_39

    :cond_3a
    move-object v5, v4

    :goto_39
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    goto :goto_36

    :cond_3b
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_3c

    goto :goto_3a

    :cond_3c
    move-object v5, v4

    :goto_3a
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    goto :goto_36

    :goto_3b
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v2, v5

    packed-switch v5, :pswitch_data_2

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_9
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_3d

    goto :goto_3c

    :cond_3d
    move-object v5, v4

    :goto_3c
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    :goto_3d
    move-object v14, v5

    goto :goto_42

    :pswitch_a
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_3e

    goto :goto_3e

    :cond_3e
    move-object v5, v4

    :goto_3e
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    goto :goto_3d

    :pswitch_b
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_3f

    goto :goto_3f

    :cond_3f
    move-object v5, v4

    :goto_3f
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    goto :goto_3d

    :pswitch_c
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_40

    goto :goto_40

    :cond_40
    move-object v5, v4

    :goto_40
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    goto :goto_3d

    :pswitch_d
    iget-object v5, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v5, :cond_41

    goto :goto_41

    :cond_41
    move-object v5, v4

    :goto_41
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    goto :goto_3d

    :goto_42
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_3

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_e
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_42

    move-object v4, v0

    :cond_42
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    :goto_43
    move-object v15, v0

    goto :goto_44

    :pswitch_f
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_43

    move-object v4, v0

    :cond_43
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    goto :goto_43

    :pswitch_10
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_44

    move-object v4, v0

    :cond_44
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    goto :goto_43

    :pswitch_11
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_45

    move-object v4, v0

    :cond_45
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    goto :goto_43

    :pswitch_12
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    if-eqz v0, :cond_46

    move-object v4, v0

    :cond_46
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    goto :goto_43

    :goto_44
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v19, 0xe0

    const/16 v20, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    iget v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    iget v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    invoke-virtual {v2, v0, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget-object v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    iget v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
