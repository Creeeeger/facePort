.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "diagonals",
            "oldItemStatuses",
            "newItemStatuses",
            "detectMoves"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->addEdgeDiagonals()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addEdgeDiagonals()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v2, :cond_1

    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v3, v1, v1, v1}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-direct {v3, v4, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private findMatchingAddition(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posX"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_1
    iget v4, v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v0

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v4, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v5, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    :cond_0
    const/4 v6, 0x4

    :goto_2
    nop

    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v0, 0x4

    or-int/2addr v8, v6

    aput v8, v7, p1

    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, p1, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findMatchingItems()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    const/4 v2, 0x0

    :goto_1
    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v2, v3, :cond_1

    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    add-int/2addr v3, v2

    iget v4, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/2addr v4, v2

    iget-object v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    :goto_2
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v3

    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v6

    aput v8, v7, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMoveMatches()V

    :cond_3
    return-void
.end method

.method private findMoveMatches()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_1
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->findMatchingAddition(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "postponedUpdates",
            "posInList",
            "removal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_0

    move-object v0, v2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    if-eqz p2, :cond_2

    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_2

    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    :goto_2
    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newListPosition"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    shr-int/lit8 v1, v0, 0x4

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldListPosition"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    shr-int/lit8 v1, v0, 0x4

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", old list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateCallback"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v1, v2

    :goto_0
    iget v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iget v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    iget-object v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_1
    if-ltz v7, :cond_b

    iget-object v9, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endX()I

    move-result v10

    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->endY()I

    move-result v11

    :goto_2
    const/4 v12, 0x0

    if-le v5, v10, :cond_4

    add-int/lit8 v5, v5, -0x1

    iget-object v13, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v13, v13, v5

    and-int/lit8 v14, v13, 0xc

    if-eqz v14, :cond_3

    shr-int/lit8 v14, v13, 0x4

    invoke-static {v4, v14, v12}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v12

    if-eqz v12, :cond_2

    iget v15, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v15, v3, v15

    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v2, v5, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v8, v5, v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v1

    add-int/lit8 v1, v15, -0x1

    move/from16 v17, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object/from16 v16, v1

    move/from16 v17, v6

    const/4 v6, 0x1

    :goto_3
    goto :goto_4

    :cond_2
    move-object/from16 v16, v1

    move/from16 v17, v6

    move v6, v8

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v8, v3, v5

    sub-int/2addr v8, v6

    invoke-direct {v1, v5, v8, v6}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4
    goto :goto_5

    :cond_3
    move-object/from16 v16, v1

    move/from16 v17, v6

    move v6, v8

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v3, v3, -0x1

    :goto_5
    move-object/from16 v1, v16

    move/from16 v6, v17

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v16, v1

    move/from16 v17, v6

    :goto_6
    if-le v6, v11, :cond_8

    add-int/lit8 v6, v6, -0x1

    iget-object v1, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v1, v1, v6

    and-int/lit8 v8, v1, 0xc

    if-eqz v8, :cond_7

    shr-int/lit8 v8, v1, 0x4

    const/4 v13, 0x1

    invoke-static {v4, v8, v13}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v14

    if-nez v14, :cond_5

    new-instance v13, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v15, v3, v5

    invoke-direct {v13, v6, v15, v12}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_7

    :cond_5
    iget v13, v14, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v13, v3, v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    invoke-virtual {v2, v13, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v17, v1, 0x4

    if-eqz v17, :cond_6

    iget-object v12, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v12, v8, v6}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v5, v15, v12}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_6
    :goto_7
    goto :goto_8

    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v2, v5, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v3, v3, 0x1

    :goto_8
    const/4 v12, 0x0

    goto :goto_6

    :cond_8
    iget v1, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v5, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    const/4 v6, 0x0

    :goto_9
    iget v8, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v6, v8, :cond_a

    iget-object v8, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v8, v8, v1

    and-int/lit8 v8, v8, 0xf

    const/4 v12, 0x2

    if-ne v8, v12, :cond_9

    iget-object v8, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v8, v1, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v2, v1, v12, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_a

    :cond_9
    const/4 v12, 0x1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v12, 0x1

    iget v1, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v6, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/lit8 v7, v7, -0x1

    move v5, v1

    move v8, v12

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adapter"
        }
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void
.end method
