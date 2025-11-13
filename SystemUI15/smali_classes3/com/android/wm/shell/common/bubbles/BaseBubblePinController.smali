.class public abstract Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public dismissZone:Landroid/graphics/RectF;

.field public dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

.field public initialLocationOnLeft:Z

.field public listener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

.field public onLeft:Z

.field public screenCenterX:I

.field public final screenSizeProvider:Lkotlin/jvm/functions/Function0;

.field public stuckToDismissTarget:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->screenSizeProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final animateIn(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateIn$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateIn$1;-><init>(Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;)V

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final animateOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;

    invoke-direct {v0, p2, p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$animateOut$1;-><init>(Ljava/lang/Runnable;Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;)V

    new-instance p2, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;

    invoke-direct {p2, v0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$addEndAction$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dropTargetAnimator:Landroidx/core/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public abstract getDropTargetView()Landroid/view/View;
.end method

.method public final onDragEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->getDropTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onDragEnd$1$1;-><init>(Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;Landroid/view/View;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dismissZone:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->RIGHT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->canShowAsBubbleBar()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p0, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-direct {v1}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    iput-object p0, v1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    :cond_2
    return-void
.end method

.method public abstract removeDropTargetView(Landroid/view/View;)V
.end method

.method public abstract updateLocation(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V
.end method
