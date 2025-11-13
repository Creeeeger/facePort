.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPreviewRecycler:Lcom/android/internal/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
