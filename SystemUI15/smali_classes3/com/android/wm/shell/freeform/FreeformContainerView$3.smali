.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final synthetic val$iconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->-$$Nest$msettleDownPointerEffect(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
