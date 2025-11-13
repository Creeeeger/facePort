.class public abstract Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;


# instance fields
.field public animateStuckToTarget:Lkotlin/jvm/functions/Function5;

.field public final animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final associatedTargets:Ljava/util/ArrayList;

.field public flingToTargetEnabled:Z

.field public flingToTargetMinVelocity:F

.field public flingToTargetWidthPercent:F

.field public final flingUnstuckFromTargetMinVelocity:F

.field public final flungIntoTargetSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final hapticsEnabled:Z

.field public magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

.field public movedBeyondSlop:Z

.field public final objectLocationOnScreen:[I

.field public final springConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final stickToTargetMaxXVelocity:F

.field public targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

.field public final touchDown:Landroid/graphics/PointF;

.field public touchSlop:I

.field public final underlyingObject:Ljava/lang/Object;

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final vibrationAttributes:Landroid/os/VibrationAttributes;

.field public final vibrator:Landroid/os/Vibrator;

.field public final xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->Companion:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object p3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrator:Landroid/os/Vibrator;

    const/16 p1, 0x12

    invoke-static {p1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrationAttributes:Landroid/os/VibrationAttributes;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    const/high16 p2, 0x457a0000    # 4000.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingUnstuckFromTargetMinVelocity:F

    const/high16 p2, 0x44fa0000    # 2000.0f

    iput p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    iput-boolean p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const p2, 0x44bb8000    # 1500.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->springConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flungIntoTargetSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method


# virtual methods
.method public final cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    filled-new-array {v0, v1}, [Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method

.method public abstract getHeight(Ljava/lang/Object;)F
.end method

.method public abstract getLocationOnScreen(Ljava/lang/Object;[I)V
.end method

.method public final getObjectStuckToTarget()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getWidth(Ljava/lang/Object;)F
.end method

.method public final maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v6, v5, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-instance v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    invoke-direct {v7, v5}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v2, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchSlop:I

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    iput-object v4, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v3, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v2, v2

    neg-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    const/4 v5, 0x1

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v8, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    iget v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->touchSlop:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    iput-boolean v5, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v9, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget-object v11, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->screenVerticalOffset:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget v7, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-gez v7, :cond_6

    goto :goto_2

    :cond_7
    move-object v6, v4

    :goto_2
    move-object v8, v6

    check-cast v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v8, :cond_8

    move v2, v5

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v5

    goto :goto_4

    :cond_9
    move v6, v3

    :goto_4
    const/4 v13, 0x5

    const/4 v14, 0x2

    const/16 v15, 0x3e8

    if-nez v2, :cond_c

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    if-nez v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v2, :cond_b

    move-object v6, v2

    goto :goto_5

    :cond_b
    move-object v6, v4

    :goto_5
    iget-object v7, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    const/4 v11, 0x0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;->onUnstuckFromTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;FFZ)V

    iput-object v4, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v0, v14}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    goto :goto_8

    :cond_c
    :goto_6
    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v6, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    iget-object v7, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    if-eqz v2, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v9, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    cmpl-float v2, v2, v9

    if-lez v2, :cond_d

    return v3

    :cond_d
    iput-object v8, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    move-object v2, v4

    :goto_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-interface {v2, v9}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;->onStuckToTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;)V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    move-object v7, v2

    invoke-interface/range {v7 .. v12}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    :cond_f
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1b

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->cancelAnimations$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v2

    if-eqz v2, :cond_13

    neg-float v1, v10

    iget v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingUnstuckFromTargetMinVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v1, :cond_10

    move-object v6, v1

    goto :goto_9

    :cond_10
    move-object v6, v4

    :goto_9
    iget-object v7, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x1

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-interface/range {v6 .. v11}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;->onUnstuckFromTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;FFZ)V

    goto :goto_b

    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    move-object v1, v4

    :goto_a
    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;->onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)V

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    :goto_b
    iput-object v4, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    return v5

    :cond_13
    iget-object v2, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget-boolean v12, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    if-nez v12, :cond_15

    goto :goto_c

    :cond_15
    iget-object v12, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v13, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->screenVerticalOffset:I

    int-to-float v15, v13

    add-float/2addr v15, v12

    cmpg-float v15, v11, v15

    if-gez v15, :cond_16

    iget v15, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    cmpl-float v15, v10, v15

    if-lez v15, :cond_14

    goto :goto_d

    :cond_16
    iget v15, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    cmpg-float v15, v10, v15

    if-gez v15, :cond_14

    :goto_d
    const/4 v15, 0x0

    cmpg-float v15, v9, v15

    if-nez v15, :cond_17

    goto :goto_e

    :cond_17
    div-float v15, v10, v9

    mul-float/2addr v8, v15

    sub-float/2addr v11, v8

    int-to-float v8, v13

    add-float/2addr v12, v8

    sub-float/2addr v12, v11

    div-float v8, v12, v15

    :goto_e
    iget-object v11, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    mul-float/2addr v11, v12

    iget-object v7, v7, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    int-to-float v12, v14

    div-float/2addr v11, v12

    sub-float v12, v7, v11

    cmpl-float v12, v8, v12

    if-lez v12, :cond_14

    add-float/2addr v7, v11

    cmpg-float v7, v8, v7

    if-gez v7, :cond_14

    goto :goto_f

    :cond_18
    move-object v6, v4

    :goto_f
    move-object v12, v6

    check-cast v12, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz v12, :cond_1a

    iget-object v1, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v1, :cond_19

    move-object v4, v1

    :cond_19
    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;

    invoke-interface {v4, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;->onStuckToTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;)V

    iput-object v12, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    iget-object v11, v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;

    invoke-direct {v1, v0, v12}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    move-object/from16 v16, v1

    invoke-interface/range {v11 .. v16}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_1a
    return v3

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    return v0
.end method

.method public final vibrateIfEnabled(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrator:Landroid/os/Vibrator;

    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->vibrationAttributes:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, p1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_0
    return-void
.end method
