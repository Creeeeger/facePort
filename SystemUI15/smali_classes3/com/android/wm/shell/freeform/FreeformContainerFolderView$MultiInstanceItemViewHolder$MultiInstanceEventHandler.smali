.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$MultiInstanceEventHandler;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    invoke-static {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->-$$Nest$mcreateMultiInstancePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;Z)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->-$$Nest$mcreateMultiInstancePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;Z)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method
