.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/List;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    const/4 p4, 0x1

    iput-boolean p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-nez v2, :cond_1

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v1, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v1, p3, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    iget-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move v3, v0

    :goto_1
    iget v4, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v3, v4, :cond_3

    iget v4, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    add-int/2addr v4, v3

    iget v5, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, p4

    goto :goto_2

    :cond_4
    const/4 v6, 0x2

    :goto_2
    shl-int/lit8 v7, v5, 0x4

    or-int/2addr v7, v6

    aput v7, v1, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v6

    aput v4, p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_4
    iget v3, p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    if-ge p2, v3, :cond_a

    aget v3, v1, p2

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    :goto_5
    if-ge v4, v3, :cond_9

    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    :goto_6
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    if-ge v5, v7, :cond_8

    aget v7, p3, v5

    if-nez v7, :cond_7

    invoke-virtual {v2, p2, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, p2, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    goto :goto_7

    :cond_6
    const/4 v3, 0x4

    :goto_7
    shl-int/lit8 v4, v5, 0x4

    or-int/2addr v4, v3

    aput v4, v1, p2

    shl-int/lit8 v4, p2, 0x4

    or-int/2addr v3, v4

    aput v3, p3, v5

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    iget v5, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    iget p2, p4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr p2, v3

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v1, p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    if-eqz p2, :cond_2

    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v1, v2

    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v5, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move v7, v6

    move v6, v5

    :goto_1
    if-ltz v3, :cond_b

    iget-object v8, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v10, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v9, v10

    iget v11, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int v12, v11, v10

    :goto_2
    iget-object v13, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    const/4 v15, 0x0

    if-le v6, v9, :cond_4

    add-int/lit8 v6, v6, -0x1

    aget v13, v13, v6

    and-int/lit8 v16, v13, 0xc

    if-eqz v16, :cond_2

    shr-int/lit8 v4, v13, 0x4

    invoke-static {v2, v4, v15}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v15

    if-eqz v15, :cond_1

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v15, v5, v15

    move/from16 v16, v7

    const/4 v7, 0x1

    sub-int/2addr v15, v7

    invoke-virtual {v1, v6, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_3

    invoke-virtual {v14, v6, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v15, v7, v4}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move/from16 v16, v7

    const/4 v7, 0x1

    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v13, v5, v6

    sub-int/2addr v13, v7

    invoke-direct {v4, v6, v13, v7}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move/from16 v16, v7

    move v7, v4

    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v5, v5, -0x1

    :cond_3
    :goto_3
    move/from16 v7, v16

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move/from16 v16, v7

    :goto_4
    if-le v7, v12, :cond_8

    add-int/lit8 v7, v7, -0x1

    iget-object v4, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v7

    and-int/lit8 v9, v4, 0xc

    if-eqz v9, :cond_6

    shr-int/lit8 v9, v4, 0x4

    const/4 v15, 0x1

    invoke-static {v2, v9, v15}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v4, v5, v6

    const/4 v9, 0x0

    invoke-direct {v0, v7, v4, v9}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v16, v9

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v0, v5, v0

    sub-int/2addr v0, v15

    invoke-virtual {v1, v0, v6}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_7

    invoke-virtual {v14, v9, v7}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v15, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    move/from16 v16, v15

    const/4 v15, 0x1

    invoke-virtual {v1, v6, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    move/from16 v15, v16

    goto :goto_4

    :cond_8
    move/from16 v16, v15

    iget v6, v8, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move v0, v6

    move v4, v11

    :goto_6
    if-ge v15, v10, :cond_a

    aget v7, v13, v0

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    invoke-virtual {v14, v0, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v0, v8, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/4 v8, 0x1

    :goto_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    move v4, v8

    move v7, v11

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method
