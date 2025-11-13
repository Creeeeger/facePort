.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public final mPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0479

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter$PreviewItemViewHolder;->mPreview:Landroid/widget/ImageView;

    return-void
.end method
