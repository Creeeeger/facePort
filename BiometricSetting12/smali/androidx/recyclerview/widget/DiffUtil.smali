.class public Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DiffUtil$CenteredArray;,
        Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;,
        Landroidx/recyclerview/widget/DiffUtil$DiffResult;,
        Landroidx/recyclerview/widget/DiffUtil$Range;,
        Landroidx/recyclerview/widget/DiffUtil$Snake;,
        Landroidx/recyclerview/widget/DiffUtil$Diagonal;,
        Landroidx/recyclerview/widget/DiffUtil$ItemCallback;,
        Landroidx/recyclerview/widget/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final DIAGONAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "cb",
            "forward",
            "backward",
            "d"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v3, p4

    :goto_1
    if-gt v3, p4, :cond_7

    neg-int v4, p4

    if-eq v3, v4, :cond_2

    if-eq v3, p4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p3, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v4

    move v5, v4

    move v10, v5

    move v4, v10

    :goto_3
    iget v6, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v7, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v3

    sub-int/2addr v6, v7

    if-eqz p4, :cond_4

    if-eq v5, v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v6, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v7, v6

    :goto_5
    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v5, v8, :cond_5

    iget v8, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v6, v8, :cond_5

    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p1, v8, v9}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p3, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v0, :cond_6

    sub-int v8, v2, v3

    neg-int v9, p4

    if-lt v8, v9, :cond_6

    if-gt v8, p4, :cond_6

    invoke-virtual {p2, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-lt v9, v5, :cond_6

    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v9}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v5, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v6, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v4, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v7, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput-boolean v1, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v9

    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cb",
            "detectMoves"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v10, v3, 0x2

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v4, v10, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    move-object v11, v3

    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;

    mul-int/lit8 v4, v10, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;-><init>(I)V

    move-object v12, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Range;

    move-object/from16 v14, p0

    invoke-static {v3, v14, v11, v12}, Landroidx/recyclerview/widget/DiffUtil;->midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/DiffUtil$Snake;->toDiagonal()Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    goto :goto_1

    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v13, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_1
    iget v6, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v6, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v3

    iget v7, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v7, v3, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_0

    :cond_3
    move-object/from16 v14, p0

    sget-object v3, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v15, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v6

    invoke-virtual {v12}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->backingData()[I

    move-result-object v7

    move-object v3, v15

    move-object/from16 v4, p0

    move-object v5, v2

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v15
.end method

.method private static forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "cb",
            "forward",
            "backward",
            "d"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v7

    sub-int/2addr v6, v7

    neg-int v7, v2

    :goto_1
    if-gt v7, v2, :cond_a

    neg-int v8, v2

    if-eq v7, v8, :cond_2

    if-eq v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v9

    if-le v8, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v8

    move v9, v8

    move/from16 v16, v9

    move/from16 v8, v16

    :goto_3
    iget v10, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v11, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v11, v9, v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    if-eqz v2, :cond_4

    if-eq v9, v8, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v11, v10

    :goto_5
    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v9, v12, :cond_5

    iget v12, v0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v10, v12, :cond_5

    move-object/from16 v12, p1

    invoke-virtual {v12, v9, v10}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p1

    :cond_6
    invoke-virtual {v1, v7, v9}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    if-eqz v3, :cond_8

    sub-int v13, v6, v7

    neg-int v14, v2

    add-int/2addr v14, v5

    if-lt v13, v14, :cond_7

    add-int/lit8 v14, v2, -0x1

    if-gt v13, v14, :cond_7

    move-object/from16 v14, p3

    invoke-virtual {v14, v13}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->get(I)I

    move-result v15

    if-gt v15, v9, :cond_9

    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v5}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v8, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v11, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v10, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput-boolean v4, v5, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    return-object v5

    :cond_7
    move-object/from16 v14, p3

    goto :goto_6

    :cond_8
    move-object/from16 v14, p3

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v12, p1

    move-object/from16 v14, p3

    const/4 v4, 0x0

    return-object v4
.end method

.method private static midPoint(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;)Landroidx/recyclerview/widget/DiffUtil$Snake;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "cb",
            "forward",
            "backward"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v0

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    invoke-virtual {p3, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->set(II)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->forward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    invoke-static {p0, p1, p2, p3, v2}, Landroidx/recyclerview/widget/DiffUtil;->backward(Landroidx/recyclerview/widget/DiffUtil$Range;Landroidx/recyclerview/widget/DiffUtil$Callback;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;Landroidx/recyclerview/widget/DiffUtil$CenteredArray;I)Landroidx/recyclerview/widget/DiffUtil$Snake;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method
