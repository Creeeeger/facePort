.class public final synthetic Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler$1;->this$0:Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mMotionHelper:Lcom/android/wm/shell/pip2/phone/PipMotionHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mDismissalPending:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v4, v3, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    int-to-float v4, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;I)V

    filled-new-array {v2}, [Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip2/phone/PipTouchHandler$$ExternalSyntheticLambda2;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/pip2/phone/PipMotionHelper;->mDismissalPending:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mEnableDismissDragToEdge:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mTargetViewContainer:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipDismissTargetHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    return-void
.end method
