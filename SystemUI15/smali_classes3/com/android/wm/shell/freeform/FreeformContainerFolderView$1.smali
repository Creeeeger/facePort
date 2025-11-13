.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    const-string v0, "FreeformContainer"

    const-string v2, "[FolderView] mOpenFolderRunnable Run()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-boolean v1, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    new-instance v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v5, 0xd5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const v4, 0x7f0101ac

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;

    invoke-direct {v4, p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    return-void
.end method
