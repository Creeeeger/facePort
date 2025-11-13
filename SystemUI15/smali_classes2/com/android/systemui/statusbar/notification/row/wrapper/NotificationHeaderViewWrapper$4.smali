.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$4;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 4

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mWasLowPriorityShowing:Z

    if-nez v2, :cond_6

    :cond_1
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/RotationHelper;->counterClockWise(FLandroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-static {p3, v1}, Lcom/android/systemui/statusbar/RotationHelper;->counterClockWise(FLandroid/view/View;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p3, v1}, Lcom/android/systemui/statusbar/RotationHelper;->counterClockWise(FLandroid/view/View;)V

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/RotationHelper;->ROTATION:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const p0, 0x3f155555

    div-float/2addr p3, p0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    sget-object p1, Lcom/android/systemui/statusbar/RotationHelper;->ROTATION:Landroid/view/animation/Interpolator;

    check-cast p1, Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x43340000    # 180.0f

    mul-float/2addr p0, p1

    add-float/2addr p0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public final transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 0

    const/4 p0, 0x6

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return p2
.end method
