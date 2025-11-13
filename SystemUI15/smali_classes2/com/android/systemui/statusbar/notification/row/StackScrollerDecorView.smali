.class public abstract Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimationDuration:I

.field public mContent:Landroid/view/View;

.field public mContentAnimating:Z

.field public mContentVisible:Z

.field public mIsSecondaryVisible:Z

.field public mIsVisible:Z

.field public mSecondaryAnimating:Z

.field public mSecondaryView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    const/16 p1, 0x104

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mAnimationDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public abstract findContentView()Landroid/view/View;
.end method

.method public abstract findSecondaryView()Landroid/view/View;
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTransparent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needsClippingToShelf()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return p0
.end method

.method public final onContentVisibilityAnimationEnd()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZLcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public final performAddAnimation(JJ)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    return-void
.end method

.method public final performAddAnimation(JZJ)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    return-void
.end method

.method public final performRemoveAnimation(FJJLandroid/animation/AnimatorListenerAdapter;Lcom/android/systemui/statusbar/notification/row/ExpandableView$ClipSide;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)J
    .locals 0

    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p9}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mAnimationDuration:I

    return-void
.end method

.method public final setContentVisible(ZZLjava/util/function/Consumer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onContentVisibilityAnimationEnd()V

    :cond_2
    return-void
.end method

.method public final setContentVisibleAnimated(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    return-void
.end method

.method public final setSecondaryVisible(ZZLcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindClearAllButton$2$3$1$1;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryAnimating:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setViewVisible(Landroid/view/View;ZZLjava/util/function/Consumer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_5

    const-wide/16 p2, 0x3e8

    goto :goto_2

    :cond_5
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mAnimationDuration:I

    int-to-long p2, p2

    :goto_2
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final setVisible(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZLjava/util/function/Consumer;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_3
    :goto_2
    return-void
.end method
