.class public abstract Landroidx/leanback/widget/StaggeredGrid;
.super Landroidx/leanback/widget/Grid;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFirstIndex:I

.field public final mLocations:Landroidx/collection/CircularArray;

.field public mPendingItem:Ljava/lang/Object;

.field public mPendingItemSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroidx/collection/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/collection/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method


# virtual methods
.method public final appendVisbleItemsWithCache(IZ)Z
    .locals 13

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v1

    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v4, 0x1

    const v5, 0x7fffffff

    if-ltz v3, :cond_1

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v7, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    add-int/2addr v3, v4

    if-gt v6, v3, :cond_c

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ge v6, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-le v6, v3, :cond_4

    return v2

    :cond_4
    move v3, v5

    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    :goto_2
    if-ge v6, v1, :cond_b

    if-gt v6, v7, :cond_b

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    if-eq v3, v5, :cond_5

    iget v9, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    add-int/2addr v3, v9

    :cond_5
    iget v9, v8, Landroidx/leanback/widget/Grid$Location;->mRow:I

    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v11, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-virtual {v10, v6, v4, v11, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v10

    iget v12, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    if-eq v10, v12, :cond_6

    iput v10, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    sub-int/2addr v7, v6

    invoke-virtual {v0, v7}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    move v7, v6

    :cond_6
    iput v6, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-gez v8, :cond_7

    iput v6, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :cond_7
    iget-object v8, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    aget-object v11, v11, v2

    invoke-virtual {v8, v10, v9, v3, v11}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v8

    if-eqz v8, :cond_8

    return v4

    :cond_8
    if-ne v3, v5, :cond_9

    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v3

    :cond_9
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v8, v4

    if-ne v9, v8, :cond_a

    if-eqz p2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    return v2

    :cond_c
    :goto_3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return v2
.end method

.method public final appendVisibleItemToRow(III)I
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_6

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :goto_1
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v4, :cond_3

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/Grid$Location;->mRow:I

    if-ne v4, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :goto_2
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    neg-int v4, v4

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    iget v5, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v4, v5

    :goto_3
    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v5

    if-gt v0, v5, :cond_7

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v4, v3

    goto :goto_5

    :cond_6
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4, v0}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v0

    sub-int v4, p3, v0

    :cond_7
    :goto_5
    new-instance v0, Landroidx/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v0, p2, v4, v3}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v4, v1, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v5, v1, Landroidx/collection/CircularArray;->tail:I

    aput-object v0, v4, v5

    add-int/2addr v5, v2

    iget v4, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v4, v5

    iput v4, v1, Landroidx/collection/CircularArray;->tail:I

    iget v5, v1, Landroidx/collection/CircularArray;->head:I

    if-ne v4, v5, :cond_8

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_8
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v4, :cond_9

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-virtual {v4, p1, v2, v5, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v4

    iput v4, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    aget-object v4, v5, v3

    :goto_6
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    if-ne v1, v2, :cond_a

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    goto :goto_7

    :cond_a
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v1, :cond_b

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_7

    :cond_b
    add-int/2addr v1, v2

    iput v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget p1, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    iget p0, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    return p0
.end method

.method public final appendVisibleItems(IZ)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    :catchall_0
    move-exception p1

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method public abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v2, v2, v1

    iput v0, v2, Landroidx/collection/CircularIntArray;->tail:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_4

    :goto_1
    if-gt p1, p2, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->mRow:I

    aget-object v0, v0, v1

    iget v1, v0, Landroidx/collection/CircularIntArray;->tail:I

    iget v2, v0, Landroidx/collection/CircularIntArray;->capacityBitmask:I

    and-int v3, v1, v2

    if-lez v3, :cond_3

    if-eqz v1, :cond_2

    iget-object v3, v0, Landroidx/collection/CircularIntArray;->elements:[I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v2, v4

    aget v3, v3, v2

    add-int/lit8 v4, p1, -0x1

    if-ne v3, v4, :cond_3

    if-eqz v1, :cond_1

    iput v2, v0, Landroidx/collection/CircularIntArray;->tail:I

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    goto :goto_2

    :cond_1
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLastIndex()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result p0

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/2addr v1, p1

    iget p0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr p0, v1

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/leanback/widget/StaggeredGrid$Location;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget p0, Landroidx/collection/CollectionPlatformUtils;->$r8$clinit:I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final invalidateItemsAfter(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_0
    return-void
.end method

.method public final prependVisbleItemsWithCache(IZ)Z
    .locals 12

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v4, v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v1

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v4}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    iget v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-gt v5, v1, :cond_a

    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    add-int/lit8 v4, v1, -0x1

    if-ge v5, v4, :cond_3

    goto :goto_3

    :cond_3
    if-ge v5, v1, :cond_4

    return v2

    :cond_4
    const v1, 0x7fffffff

    move v4, v2

    :goto_1
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v6, v6, Landroidx/leanback/widget/GridLayoutManager$2;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v6, v6, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iget v7, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    if-lt v5, v6, :cond_9

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v8, v7, Landroidx/leanback/widget/Grid$Location;->mRow:I

    iget-object v9, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v10, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-virtual {v9, v5, v2, v10, v2}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v9

    iget v11, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    if-eq v9, v11, :cond_5

    add-int/2addr v5, v3

    iget p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v5, p1

    invoke-virtual {v0, v5}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    aget-object p1, v10, v2

    iput-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput v9, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v2

    :cond_5
    iput v5, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iget v11, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v11, :cond_6

    iput v5, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_6
    iget-object v11, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    aget-object v10, v10, v2

    sub-int/2addr v1, v4

    invoke-virtual {v11, v9, v8, v1, v10}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v1

    if-eqz v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v1

    iget v4, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    if-nez v8, :cond_8

    if-eqz p2, :cond_8

    return v3

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    :goto_3
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    return v2
.end method

.method public final prependVisibleItemToRow(III)I
    .locals 8

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GridLayoutManager$2;->getEdge(I)I

    move-result v2

    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    iget v6, v5, Landroidx/collection/CircularArray;->head:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v5, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v6, v7

    iput v6, v5, Landroidx/collection/CircularArray;->head:I

    iget-object v7, v5, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v3, v7, v6

    iget v7, v5, Landroidx/collection/CircularArray;->tail:I

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_3
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/GridLayoutManager$2;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    aget-object v5, v5, v4

    :goto_2
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v1, :cond_5

    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_5
    iget-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-nez p1, :cond_6

    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    sub-int/2addr p3, p1

    goto :goto_3

    :cond_6
    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    add-int/2addr p3, p1

    :goto_3
    if-eqz v0, :cond_7

    sub-int/2addr v2, p3

    iput v2, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->mOffset:I

    :cond_7
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    iget p1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    invoke-virtual {p0, p1, p2, p3, v5}, Landroidx/leanback/widget/GridLayoutManager$2;->addItem(IIILjava/lang/Object;)V

    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->mSize:I

    return p0
.end method

.method public final prependVisibleItems(IZ)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager$2;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    :catchall_0
    move-exception p1

    aput-object v1, v0, v2

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method public abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
