.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    return-void
.end method
