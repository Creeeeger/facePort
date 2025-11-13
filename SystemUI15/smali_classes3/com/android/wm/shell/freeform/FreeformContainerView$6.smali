.class public final Lcom/android/wm/shell/freeform/FreeformContainerView$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$6;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$6;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$6;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v0, "fullscreen_mode_request_folder"

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$6;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->-$$Nest$msettleDownPointerEffect(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView$6;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mAnimElevation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method
