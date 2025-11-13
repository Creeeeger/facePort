.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewX:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringPreviewAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FreeformContainer"

    const-string v0, "[FolderView] onSpringAtRest of springX, releaseDraggingState"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->-$$Nest$mrestorePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppPreview()V

    :cond_0
    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    double-to-float p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method
