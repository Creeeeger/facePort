.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->dismissTipPopup()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-nez p1, :cond_2

    const-string p0, "FloatingIcon"

    const-string p1, "onTouch() - MotionEvent.ACTION_MOVE: already removed view"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr p2, v2

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    sub-int/2addr v0, p1

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int p1, v2

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    sub-int/2addr v0, p2

    int-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mTouchSlop:I

    if-gt p2, p1, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->updateIconDisplayableBound()V

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->onMovingEnd()Z

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    sub-int/2addr p2, v1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    :cond_6
    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    :goto_1
    return p0
.end method
