.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Point;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
