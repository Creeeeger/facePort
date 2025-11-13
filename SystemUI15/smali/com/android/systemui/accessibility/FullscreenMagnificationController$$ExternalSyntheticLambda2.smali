.class public final synthetic Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/FullscreenMagnificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    iget-object v0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/FullscreenMagnificationController;->mShowHideBorderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
