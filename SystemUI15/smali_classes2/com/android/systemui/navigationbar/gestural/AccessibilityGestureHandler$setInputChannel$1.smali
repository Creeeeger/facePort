.class public final synthetic Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 11

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1, p0, v1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;-><init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    if-eq v0, v1, :cond_18

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto/16 :goto_d

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    if-ne v2, v3, :cond_1c

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_0
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    sub-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    goto/16 :goto_d

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-nez v3, :cond_1c

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getNavBarHeight(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    int-to-float v5, v5

    sub-float v2, v5, v2

    int-to-float v7, v7

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_1c

    cmpg-float v2, v6, v5

    if-gtz v2, :cond_1c

    cmpg-float v2, v4, v3

    if-gtz v2, :cond_1c

    cmpg-float v2, v3, v7

    if-gtz v2, :cond_1c

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateAccessibilityGestureDetected(Z)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    goto/16 :goto_d

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->clear(Landroid/view/MotionEvent;)V

    goto/16 :goto_d

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    if-eqz p0, :cond_1c

    const-wide/16 v2, 0x190

    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->makePauseHarderToTrigger:Z

    if-eqz v6, :cond_8

    move-wide v7, v2

    goto :goto_1

    :cond_8
    const-wide/16 v7, 0x12c

    :goto_1
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;-><init>(Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;Landroid/view/MotionEvent;)V

    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    invoke-virtual {v10, v7, v8, v9}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->start(JLkotlin/jvm/functions/Function0;)V

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    iget-object v8, v7, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v8, v7, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->directionY:Z

    if-eqz v8, :cond_9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v7, v7, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    if-eqz v7, :cond_17

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    if-eqz v10, :cond_c

    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedFast:F

    cmpg-float v2, v8, p1

    if-ltz v2, :cond_b

    cmpg-float p1, v9, p1

    if-gez p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v5

    :cond_b
    :goto_3
    const-string p1, "Was paused, but started moving at a fast speed"

    :goto_4
    move v5, v1

    goto/16 :goto_b

    :cond_c
    cmpg-float v10, v0, v4

    if-gez v10, :cond_d

    move v10, v1

    goto :goto_5

    :cond_d
    move v10, v5

    :goto_5
    cmpg-float v4, v7, v4

    if-gez v4, :cond_e

    move v4, v1

    goto :goto_6

    :cond_e
    move v4, v5

    :goto_6
    if-eq v10, v4, :cond_f

    const-string p1, "Velocity changed directions"

    goto :goto_b

    :cond_f
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedVerySlow:F

    cmpg-float v7, v8, v4

    if-gez v7, :cond_10

    cmpg-float v4, v9, v4

    if-gez v4, :cond_10

    move v4, v1

    goto :goto_7

    :cond_10
    move v4, v5

    :goto_7
    if-nez v4, :cond_12

    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    if-nez v7, :cond_12

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v4

    cmpg-float v4, v8, v9

    if-gez v4, :cond_11

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSomewhatFast:F

    cmpg-float v4, v8, v4

    if-gez v4, :cond_11

    move v4, v1

    goto :goto_8

    :cond_11
    move v4, v5

    :goto_8
    const-string v7, "Didn\'t have back to back slow speeds, checking for rapid deceleration on first pause only"

    goto :goto_9

    :cond_12
    const-string v7, "Pause requires back to back slow speeds"

    :goto_9
    if-eqz v6, :cond_16

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSlow:F

    cmpg-float v4, v8, v4

    const-wide/16 v6, 0x0

    if-gez v4, :cond_15

    iget-wide v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    sub-long/2addr v6, v8

    cmp-long p1, v6, v2

    if-ltz p1, :cond_14

    goto :goto_a

    :cond_14
    move v1, v5

    :goto_a
    const-string p1, "Maintained slow speed for sufficient duration when making pause harder to trigger"

    goto :goto_4

    :cond_15
    iput-wide v6, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    const-string p1, "Intentionally making pause harder to trigger"

    goto :goto_b

    :cond_16
    move v5, v4

    move-object p1, v7

    :goto_b
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->updatePaused(Ljava/lang/String;Z)V

    :cond_17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    goto :goto_d

    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    sub-float/2addr v1, v3

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inGestureDistance:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v1, "accessibilityButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->clear(Landroid/view/MotionEvent;)V

    :cond_1c
    :goto_d
    return-void
.end method
