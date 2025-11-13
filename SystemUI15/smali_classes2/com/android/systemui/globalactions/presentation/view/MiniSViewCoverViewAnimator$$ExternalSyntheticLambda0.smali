.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mOriginalConfirmLocationX:F

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
