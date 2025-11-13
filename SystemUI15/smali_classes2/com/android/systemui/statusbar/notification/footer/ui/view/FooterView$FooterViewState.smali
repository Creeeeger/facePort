.class public final Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public hideContent:Z

.field public resetY:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->resetY:Z

    return-void
.end method


# virtual methods
.method public final animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->resetY:Z

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->resetY:Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method public final applyToView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->hideContent:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisibleAnimated(Z)V

    :cond_0
    return-void
.end method

.method public final copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->hideContent:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$FooterViewState;->hideContent:Z

    :cond_0
    return-void
.end method
