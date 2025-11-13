.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;->mOpenedByHoverAction:Z

    if-eqz v0, :cond_1

    const-string v0, "hover_exit"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
