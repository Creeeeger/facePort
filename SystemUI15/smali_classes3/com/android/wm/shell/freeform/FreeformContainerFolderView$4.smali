.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v0, "fullscreen_mode_request_folder"

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    return-void
.end method
