.class public final Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

.field public final synthetic val$showAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformThumbnailView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->val$showAnimation:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformThumbnailView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
