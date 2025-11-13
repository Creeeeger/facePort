.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mOriginalConfirmLocationX:F

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    new-array v3, v1, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v3, v3, v2

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mOriginalConfirmLocationY:F

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    new-array v5, v1, [I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v5, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v4, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-array v1, v1, [I

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setX(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
