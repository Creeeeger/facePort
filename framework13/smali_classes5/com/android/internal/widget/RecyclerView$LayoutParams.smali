.class public Lcom/android/internal/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final blacklist mDecorInsets:Landroid/graphics/Rect;

.field blacklist mInsetsDirty:Z

.field blacklist mPendingInvalidate:Z

.field blacklist mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 10622
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 10611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10623
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 10618
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 10611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10619
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 10630
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 10611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10631
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10626
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 10611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10627
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 10634
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 10611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 10615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 10635
    return-void
.end method


# virtual methods
.method public blacklist getViewAdapterPosition()I
    .locals 1

    .line 10706
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getViewLayoutPosition()I
    .locals 1

    .line 10694
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10684
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public blacklist isItemChanged()Z
    .locals 1

    .line 10676
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public blacklist isItemRemoved()Z
    .locals 1

    .line 10665
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public blacklist isViewInvalid()Z
    .locals 1

    .line 10654
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public blacklist viewNeedsUpdate()Z
    .locals 1

    .line 10644
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
