.class public final synthetic Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$setInputChannel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler$setInputChannel$1;->$tmp0:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "CornerGestureHandler"

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->allowGesture:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->startAssistant:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v5, v0

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v2, v7

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->distance:F

    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isPilfered:Z

    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->progressTouchSlop:F

    if-nez v7, :cond_3

    cmpl-float v2, v2, v8

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isPilfered:Z

    :cond_3
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->distance:F

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->touchSlop:F

    cmpl-float v9, v2, v7

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->assistManagerLazy:Ldagger/Lazy;

    if-lez v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v12, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downTime:J

    sub-long/2addr v7, v12

    long-to-float v2, v7

    const/16 v7, 0x32

    int-to-float v7, v7

    div-float v7, v2, v7

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/16 v1, 0xb4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->degreeEnd:F

    float-to-double v5, v5

    cmpg-double v5, v0, v5

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->degreeStart:F

    float-to-double v5, v5

    cmpg-double v5, v5, v0

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_4

    const-string p1, "Execute Assistant"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iget-object p1, p1, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion()V

    iget-boolean v0, p1, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    invoke-virtual {p1, v10, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(FZ)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "invocation_type"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->startAssistant:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateGesture()V

    goto/16 :goto_4

    :cond_4
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cancelGesture by degree="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " diff="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " timeFraction="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_5
    cmpl-float p1, v2, v8

    if-ltz p1, :cond_e

    sub-float/2addr v2, v8

    sub-float/2addr v7, v8

    div-float/2addr v2, v7

    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->timeFraction:F

    invoke-static {p1, v10}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->lastProgress:F

    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->lastProgress:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/assist/AssistManager;->onInvocationProgress(F)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_7
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v8, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v8, v8, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-virtual {v7, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getNavBarHeight(I)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    if-eq v8, v4, :cond_8

    if-eq v8, v2, :cond_a

    if-eq v8, v1, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v1, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v7, v2, v9

    cmpg-float v8, v10, v0

    if-gtz v8, :cond_9

    cmpg-float v8, v0, v9

    if-gtz v8, :cond_9

    goto :goto_0

    :cond_9
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float v8, v1, v9

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_d

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_d

    :goto_0
    cmpg-float v0, v7, v6

    if-gtz v0, :cond_d

    cmpg-float v0, v6, v2

    if-gtz v0, :cond_d

    goto :goto_1

    :cond_a
    iget-object v1, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float v2, v1, v9

    invoke-virtual {v7, v5}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getSpaceWidth(Z)I

    move-result v8

    int-to-float v8, v8

    iget-object v7, v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v7, v7, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_d

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_d

    cmpg-float v1, v10, v0

    if-gtz v1, :cond_b

    cmpg-float v1, v0, v8

    if-gtz v1, :cond_b

    goto :goto_1

    :cond_b
    sub-float v1, v7, v8

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_d

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_d

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iget-wide v0, v0, Lcom/android/systemui/model/SysUiState;->mFlags:J

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(J)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isInLockTaskMode:Z

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    :goto_2
    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->allowGesture:Z

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "allow down x: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->downTime:J

    :cond_e
    :goto_4
    return-void
.end method
