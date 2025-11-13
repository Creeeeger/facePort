.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIsVisiblePreview:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/freeform/FreeformThumbnailView;->scheduleAnimation(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder$2;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;->mIsVisiblePreview:Z

    :cond_1
    :goto_0
    return-void
.end method
