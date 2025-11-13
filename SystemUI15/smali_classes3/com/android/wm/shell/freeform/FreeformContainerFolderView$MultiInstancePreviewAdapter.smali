.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public final mSnapshotBitmapList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Ljava/util/List;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/android/wm/shell/freeform/FreeformContainerItem;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mSnapshotBitmapList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    const v0, 0x7f0d02d2

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;

    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[FolderView] onViewAttachedToWindow: invalid, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
