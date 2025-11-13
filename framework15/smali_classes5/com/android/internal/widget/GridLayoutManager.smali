.class public Lcom/android/internal/widget/GridLayoutManager;
.super Lcom/android/internal/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_SPAN_COUNT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field blacklist mCachedBorders:[I

.field final blacklist mDecorInsets:Landroid/graphics/Rect;

.field blacklist mPendingSpanCountChange:Z

.field final blacklist mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final blacklist mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field blacklist mSet:[Landroid/view/View;

.field blacklist mSpanCount:I

.field blacklist mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private blacklist assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V
    .locals 8

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    move v1, p3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move v4, v0

    :goto_1
    if-eq v4, v1, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput v3, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v7, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v7

    add-int/2addr v4, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private blacklist cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static blacklist calculateItemBorders([III)[I
    .locals 7

    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    :cond_1
    const/4 v0, 0x0

    aput v0, p0, v0

    div-int v0, p2, p1

    rem-int v1, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-gt v4, p1, :cond_3

    move v5, v0

    add-int/2addr v3, v1

    if-lez v3, :cond_2

    sub-int v6, p1, v3

    if-ge v6, v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v3, p1

    :cond_2
    add-int/2addr v2, v5

    aput v2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private blacklist clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private blacklist ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v2

    if-eqz v1, :cond_1

    :goto_1
    if-lez v2, :cond_3

    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v3, :cond_3

    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr v3, v0

    iput v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    iget v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v4, v2

    :goto_2
    if-ge v0, v3, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v5

    if-le v5, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_2

    :cond_2
    iput v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private blacklist ensureViewSet()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private blacklist getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .locals 3

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private blacklist getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .locals 4

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private blacklist getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .locals 4

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private blacklist guessMeasurement(FI)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private blacklist measureChild(Landroid/view/View;IZ)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v4, p2, v3, v5, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v8, v2, v9, v7}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, p2, v2, v5, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v5, v8, v3, v9, v7}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    :goto_0
    invoke-direct {p0, p1, v5, v6, p3}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private blacklist measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private blacklist updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public blacklist checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method blacklist collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    iget v2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    const/4 v3, 0x0

    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p3, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureLayoutState()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-le p4, p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    move v5, p3

    :goto_1
    if-eq v5, p4, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, p5, :cond_5

    invoke-direct {p0, p1, p2, v7}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v0, :cond_5

    move-object v0, v6

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4

    iget-object v9, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    move-object v1, v6

    :cond_5
    :goto_3
    add-int/2addr v5, v4

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    move-object v5, v1

    goto :goto_4

    :cond_7
    move-object v5, v0

    :goto_4
    return-object v5
.end method

.method public blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist getSpaceForSpanRange(II)I
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public blacklist getSpanSizeLookup()Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method blacklist layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getModeInOther()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v11, v14, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v1

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    move v5, v0

    if-eqz v15, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    :cond_2
    iget v0, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v13, :cond_3

    move v0, v13

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    move/from16 v16, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-nez v16, :cond_4

    iget v3, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v3}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v3

    iget v4, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v4

    add-int v2, v3, v4

    move v4, v0

    move/from16 v17, v1

    goto :goto_3

    :cond_4
    move v4, v0

    move/from16 v17, v1

    :goto_3
    iget v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v4, v0, :cond_8

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez v2, :cond_8

    iget v0, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v1

    iget v3, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-gt v1, v3, :cond_7

    sub-int/2addr v2, v1

    if-gez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v7}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int v17, v17, v1

    iget-object v14, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v14, v4

    nop

    add-int/lit8 v4, v4, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item at position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " requires "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " spans but GridLayoutManager has only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " spans."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_4
    move v14, v2

    if-nez v4, :cond_9

    iput-boolean v13, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_9
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v13, v4

    move/from16 v4, v17

    move/from16 v21, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V

    const/4 v0, 0x0

    move/from16 v1, v19

    move/from16 v5, v20

    :goto_5
    if-ge v0, v13, :cond_f

    iget-object v2, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget-object v3, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_b

    if-eqz v16, :cond_a

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v6, v2, v12}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v16, :cond_c

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v6, v2, v12}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    :goto_6
    iget-object v3, v6, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v6, v2, v11, v12}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v3, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    iget-object v12, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v12, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v12

    int-to-float v12, v12

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v12, v12, v20

    move/from16 v20, v1

    iget v1, v4, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v1, v1

    div-float/2addr v12, v1

    cmpl-float v1, v12, v5

    if-lez v1, :cond_e

    move v1, v12

    move v5, v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v20

    const/4 v12, 0x0

    goto :goto_5

    :cond_f
    if-eqz v15, :cond_12

    move/from16 v12, v21

    invoke-direct {v6, v5, v12}, Lcom/android/internal/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v13, :cond_11

    iget-object v2, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v6, v2, v4, v3}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v3, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_10

    move v0, v3

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    move v4, v0

    goto :goto_8

    :cond_12
    move/from16 v12, v21

    move v4, v1

    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v13, :cond_15

    iget-object v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v4, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    iget-object v3, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move/from16 v20, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v7, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v21, v3

    iget v3, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v8, v3}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    iget v8, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    move/from16 v22, v11

    const/4 v11, 0x1

    if-ne v8, v11, :cond_13

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v18, v12

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v3, v12, v7, v8, v11}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    sub-int v11, v4, v5

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move-object/from16 v23, v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_13
    move/from16 v18, v12

    const/high16 v12, 0x40000000    # 2.0f

    sub-int v8, v4, v7

    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v11, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v23, v2

    const/4 v2, 0x0

    invoke-static {v3, v12, v5, v11, v2}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v11

    :goto_a
    const/4 v2, 0x1

    invoke-direct {v6, v1, v8, v11, v2}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_b

    :cond_14
    move/from16 v20, v5

    move/from16 v22, v11

    move/from16 v18, v12

    const/high16 v12, 0x40000000    # 2.0f

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v12, v18

    move/from16 v5, v20

    move/from16 v11, v22

    goto/16 :goto_9

    :cond_15
    move/from16 v20, v5

    move/from16 v22, v11

    move/from16 v18, v12

    iput v4, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_17

    iget v5, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_16

    iget v3, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v2, v3, v4

    goto :goto_c

    :cond_16
    iget v2, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v3, v2, v4

    goto :goto_c

    :cond_17
    iget v5, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_18

    iget v1, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v0, v1, v4

    goto :goto_c

    :cond_18
    iget v0, v9, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v1, v0, v4

    :goto_c
    const/4 v5, 0x0

    move v7, v5

    :goto_d
    if-ge v7, v13, :cond_1d

    iget-object v5, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    iget v5, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v5

    iget-object v12, v6, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v19, v0

    iget v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v21, v1

    iget v1, v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v0, v1

    aget v0, v12, v0

    add-int/2addr v5, v0

    iget-object v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v0, v5, v0

    move/from16 v19, v0

    move v12, v2

    move/from16 v23, v3

    move/from16 v21, v5

    goto :goto_e

    :cond_19
    move/from16 v19, v0

    move/from16 v21, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v19, v0

    move/from16 v21, v1

    move v12, v2

    move/from16 v23, v3

    goto :goto_e

    :cond_1a
    move/from16 v19, v0

    move/from16 v21, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v12, v0

    move/from16 v23, v1

    :goto_e
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v19

    move v3, v12

    move/from16 v24, v4

    move/from16 v4, v21

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v11}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v11}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v0, 0x1

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :goto_10
    iget-boolean v1, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v7, v7, 0x1

    move v2, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_d

    :cond_1d
    move/from16 v19, v0

    move/from16 v21, v1

    iget-object v0, v6, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method blacklist onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_1

    nop

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v2

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :goto_0
    return-void
.end method

.method public blacklist onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public blacklist onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public blacklist onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public blacklist onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public blacklist setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v5

    invoke-static {p2, v3, v5}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v5

    invoke-static {p3, v3, v5}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result v3

    move v2, v4

    move v4, v3

    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public blacklist setSpanCount(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->requestLayout()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public blacklist setStackFromEnd(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
