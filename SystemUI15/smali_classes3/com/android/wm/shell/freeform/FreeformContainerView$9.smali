.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$9;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic val$iconView:Landroid/widget/ImageView;

.field public final synthetic val$tailCount:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->val$iconView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->val$tailCount:I

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v1, "fullscreen_mode_request_spring_anim_y"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mActivatedYSpringList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string p1, "fullscreen_mode_request_spring_anim_y"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    double-to-float p1, v0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->val$iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$9;->val$tailCount:I

    mul-int/2addr v1, p0

    int-to-float p0, v1

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
