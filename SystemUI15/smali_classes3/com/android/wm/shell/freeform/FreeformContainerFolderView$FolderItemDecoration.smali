.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mItemMargin:Landroid/graphics/Rect;

.field public mItemSpace:I

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p4, p4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    invoke-virtual {p4}, Lcom/android/internal/widget/GridLayoutManager;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    if-nez p3, :cond_0

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p2, :cond_2

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    if-ne p2, p4, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    :cond_5
    if-ne p2, p4, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_6
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method
