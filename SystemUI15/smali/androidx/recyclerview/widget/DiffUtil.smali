.class public final Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 25

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0, v6, v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    invoke-direct {v7, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    if-lt v9, v2, :cond_17

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v9

    if-ge v9, v2, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v9

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v12, v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int v13, v2, v12

    iget-object v14, v5, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    aput v9, v14, v13

    iget v9, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v13, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int v15, v2, v13

    iget-object v10, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    aput v9, v10, v15

    move v9, v6

    :goto_1
    if-ge v9, v11, :cond_17

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v15

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    rem-int/lit8 v15, v15, 0x2

    if-ne v15, v2, :cond_1

    move v15, v2

    goto :goto_2

    :cond_1
    move v15, v6

    :goto_2
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v16

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v17

    sub-int v16, v16, v17

    neg-int v2, v9

    move v6, v2

    :goto_3
    if-gt v6, v9, :cond_a

    if-eq v6, v2, :cond_4

    if-eq v6, v9, :cond_2

    move/from16 v18, v11

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v11

    move-object/from16 v19, v4

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    if-le v11, v4, :cond_3

    goto :goto_4

    :cond_2
    move-object/from16 v19, v4

    move/from16 v18, v11

    :cond_3
    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    add-int/lit8 v11, v4, 0x1

    move-object/from16 v20, v0

    goto :goto_5

    :cond_4
    move-object/from16 v19, v4

    move/from16 v18, v11

    :goto_4
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    move-object/from16 v20, v0

    move v11, v4

    :goto_5
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v21, v3

    iget v3, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v3, v11, v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v6

    if-eqz v9, :cond_6

    if-eq v11, v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v3, -0x1

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v3

    :goto_7
    move-object/from16 v22, v5

    :goto_8
    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v11, v5, :cond_7

    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v3, v5, :cond_7

    invoke-virtual {v1, v11, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_7
    add-int v5, v6, v12

    aput v11, v14, v5

    if-eqz v15, :cond_9

    sub-int v5, v16, v6

    move/from16 v23, v12

    add-int/lit8 v12, v2, 0x1

    if-lt v5, v12, :cond_8

    add-int/lit8 v12, v9, -0x1

    if-gt v5, v12, :cond_8

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    if-gt v5, v11, :cond_8

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v4, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v0, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v11, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v3, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v0, 0x0

    iput-boolean v0, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_b

    :cond_8
    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    move/from16 v23, v12

    goto :goto_9

    :goto_a
    add-int/lit8 v6, v6, 0x2

    move/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v5, v22

    move/from16 v12, v23

    goto/16 :goto_3

    :cond_a
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v5

    move/from16 v18, v11

    move/from16 v23, v12

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_b

    move-object v10, v5

    move-object/from16 v14, v22

    goto/16 :goto_14

    :cond_b
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v4

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :cond_c
    move v3, v0

    :goto_c
    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v4

    invoke-virtual {v8}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_d
    if-gt v5, v9, :cond_15

    if-eq v5, v2, :cond_e

    if-eq v5, v9, :cond_d

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v6

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v11

    if-ge v6, v11, :cond_d

    goto :goto_e

    :cond_d
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v6

    add-int/lit8 v11, v6, -0x1

    goto :goto_f

    :cond_e
    :goto_e
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v6

    move v11, v6

    :goto_f
    iget v12, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v15, v11

    sub-int/2addr v15, v5

    sub-int/2addr v12, v15

    if-eqz v9, :cond_10

    if-eq v11, v6, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v15, v12, 0x1

    goto :goto_11

    :cond_10
    :goto_10
    move v15, v12

    :goto_11
    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v11, v0, :cond_11

    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v12, v0, :cond_11

    add-int/lit8 v0, v11, -0x1

    move-object/from16 v16, v14

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v1, v0, v14}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v0

    if-eqz v0, :cond_12

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v14, v16

    goto :goto_11

    :cond_11
    move-object/from16 v16, v14

    :cond_12
    add-int v0, v5, v13

    aput v11, v10, v0

    if-eqz v3, :cond_13

    sub-int v0, v4, v5

    if-lt v0, v2, :cond_13

    if-gt v0, v9, :cond_13

    move-object/from16 v14, v22

    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v0

    if-lt v0, v11, :cond_14

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v11, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v12, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v6, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v15, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_12

    :cond_13
    move-object/from16 v14, v22

    :cond_14
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_15
    move-object/from16 v16, v14

    move-object/from16 v14, v22

    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_16

    move-object v10, v0

    goto :goto_14

    :cond_16
    add-int/lit8 v9, v9, 0x1

    move-object v5, v14

    move-object/from16 v14, v16

    move/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move/from16 v12, v23

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_17
    :goto_13
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object v14, v5

    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_1d

    invoke-virtual {v10}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v0

    if-lez v0, :cond_1b

    iget v0, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v0, v2

    iget v3, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v4, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_1a

    iget-boolean v5, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v5, :cond_18

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    :goto_15
    move-object/from16 v2, v21

    goto :goto_16

    :cond_18
    if-le v0, v3, :cond_19

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_19
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v3

    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_1a
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v0, v4, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :goto_16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1b
    move-object/from16 v2, v21

    :goto_17
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    move-object/from16 v4, v20

    const/4 v3, 0x1

    goto :goto_18

    :cond_1c
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move-object/from16 v4, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_18
    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v5, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v5, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v5, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v0, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v0, v10, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v0, v8, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1d
    move-object/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    const/4 v3, 0x1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object v0, v4

    move-object v4, v5

    move-object v5, v14

    const/4 v6, 0x0

    move/from16 v24, v3

    move-object v3, v2

    move/from16 v2, v24

    goto/16 :goto_0

    :cond_1e
    move-object v2, v3

    move-object v14, v5

    sget-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v4, v7, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    const/4 v5, 0x1

    iget-object v3, v14, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v6
.end method
