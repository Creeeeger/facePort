.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$5;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$5;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIsAppIconMoving:Z

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->-$$Nest$msettleDownPointerEffect(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$5;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    sget-object p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->TAIL_ICON_ALPHA_ARRAY:[F

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
