.class public final Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mInitTime:J

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

.field public final mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

.field public mScaleDownAnimator:Landroid/animation/ValueAnimator;

.field public mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public mState:I

.field public mTaskId:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

.field public mWaitingForTaskVanished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNsController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;)V

    iput-object p1, p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskVanishedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "RUNNING"

    goto :goto_0

    :cond_1
    const-string p0, "INITIALIZING"

    goto :goto_0

    :cond_2
    const-string p0, "NONE"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clearAllAnimations()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const-string v2, "clearAllAnimations: "

    const-string v3, "PipNaturalSwitchingHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    :cond_1
    return-void
.end method

.method public final setState(I)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    invoke-static {v3}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PipNaturalSwitchingHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mNaturalSwitchingStartedCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const v6, 0x3f75c28f    # 0.96f

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v0

    add-int/2addr v7, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v0

    add-int/2addr v8, v6

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v6, 0x0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v4, p1, v5}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;

    invoke-direct {v7, p0, v0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v5, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    new-instance v5, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v7, 0x435c0000    # 220.0f

    const v8, 0x3ef0a3d7    # 0.47f

    invoke-direct {v5, v7, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleUpPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v9, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10, v6, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v9, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10, v6, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v9, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10, v6, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v9, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10, v6, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v5, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, v8, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Ljava/lang/Runnable;

    new-instance v4, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7, v1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    aput-object v4, p1, v2

    invoke-virtual {v8, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    const-string/jumbo p1, "startEnterAnimation: down="

    const-string v1, ", up="

    invoke-static {p1, v0, v1, v7, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startEnterAnimation: failed, already animating, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    sub-long/2addr v0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onFinishNaturalSwitching: dur="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->clearAllAnimations()V

    const-string/jumbo p1, "reset"

    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->updateWaitingForTaskVanished(Ljava/lang/String;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mInitTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskId:I

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PipNaturalSwitchingHandler{state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mState:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateWaitingForTaskVanished(Ljava/lang/String;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    if-eq v0, p2, :cond_1

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mWaitingForTaskVanished:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->mTaskVanishedTimeout:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setWaitingForTaskVanished: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PipNaturalSwitchingHandler"

    invoke-static {v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->setState(I)V

    :cond_1
    :goto_0
    return-void
.end method
