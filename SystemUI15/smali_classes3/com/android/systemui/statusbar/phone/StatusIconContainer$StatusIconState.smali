.class public final Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public distanceToViewEnd:F

.field public justAdded:Z

.field public qsExpansionTransitioning:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->qsExpansionTransitioning:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    sub-float/2addr v0, v2

    instance-of v2, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_5

    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v3

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v7, 0x0

    if-eq v1, v3, :cond_4

    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-ne v1, v5, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    goto :goto_2

    :cond_4
    if-eq v3, v5, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_6

    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    sget-object v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    :cond_6
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v2, v1, v6}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    if-eqz v7, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->qsExpansionTransitioning:Z

    if-nez v1, :cond_7

    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    :cond_7
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->qsExpansionTransitioning:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method
