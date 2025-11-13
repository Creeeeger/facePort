.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "FreeformContainer"

    const-string v0, "[FolderView] onSpringAtRest of springY, releaseDraggingState"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->restoreAppIcon()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    :cond_0
    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    iget-object p1, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    double-to-float p1, v0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
