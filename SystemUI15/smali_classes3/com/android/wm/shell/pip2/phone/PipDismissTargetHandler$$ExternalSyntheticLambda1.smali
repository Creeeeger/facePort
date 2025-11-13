.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    check-cast p4, Ljava/lang/Boolean;

    check-cast p5, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f07033b

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr p4, v2

    div-float v1, p4, v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p4, v3

    sub-float/2addr v2, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float v3, v1, v3

    sub-float/2addr p1, v3

    iget-object v3, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->isInMotion()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->setBoundsInMotion(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v3, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mAnimateToDismissSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v3, v2, p2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object p2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    invoke-virtual {v0, p2, p1, p3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object p2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    const/4 p3, 0x0

    invoke-virtual {v0, p2, p4, p3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object p2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {v0, p2, v1, p3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    filled-new-array {p5}, [Lkotlin/jvm/functions/Function0;

    move-result-object p2

    iget-object p3, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
