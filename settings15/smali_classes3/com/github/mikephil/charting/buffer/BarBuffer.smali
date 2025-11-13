.class public final Lcom/github/mikephil/charting/buffer/BarBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final buffer:[F

.field public index:I

.field public mBarWidth:F

.field public final mContainsStacks:Z

.field public mInverted:Z

.field public phaseX:F

.field public phaseY:F


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    iput-boolean p2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    return-void
.end method


# virtual methods
.method public final feed(Lcom/github/mikephil/charting/data/BarDataSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    int-to-float v6, v5

    cmpg-float v6, v6, v2

    if-gez v6, :cond_12

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v6, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v7, v6, Lcom/github/mikephil/charting/data/Entry;->x:F

    iget v8, v6, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    iget-object v9, v6, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    iget-boolean v10, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    iget-object v11, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    const/4 v12, 0x0

    if-eqz v10, :cond_a

    if-nez v9, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v6, v6, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    neg-float v6, v6

    move v10, v12

    const/4 v8, 0x0

    :goto_1
    array-length v13, v9

    if-ge v8, v13, :cond_11

    aget v13, v9, v8

    cmpl-float v14, v13, v12

    if-nez v14, :cond_3

    cmpl-float v15, v10, v12

    if-eqz v15, :cond_2

    cmpl-float v15, v6, v12

    if-nez v15, :cond_3

    :cond_2
    move v14, v13

    move v13, v6

    move v6, v14

    goto :goto_2

    :cond_3
    if-ltz v14, :cond_4

    add-float/2addr v13, v10

    move v14, v13

    move v13, v6

    move v6, v10

    move v10, v14

    goto :goto_2

    :cond_4
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v6

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float/2addr v13, v6

    :goto_2
    sub-float v15, v7, v3

    add-float v16, v7, v3

    iget-boolean v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    if-eqz v4, :cond_7

    cmpl-float v4, v6, v14

    if-ltz v4, :cond_5

    move v4, v6

    goto :goto_3

    :cond_5
    move v4, v14

    :goto_3
    cmpg-float v17, v6, v14

    if-gtz v17, :cond_6

    goto :goto_6

    :cond_6
    move v6, v14

    goto :goto_6

    :cond_7
    cmpl-float v4, v6, v14

    if-ltz v4, :cond_8

    move v4, v6

    goto :goto_4

    :cond_8
    move v4, v14

    :goto_4
    cmpg-float v17, v6, v14

    if-gtz v17, :cond_9

    goto :goto_5

    :cond_9
    move v6, v14

    :goto_5
    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    :goto_6
    iget v14, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    mul-float/2addr v6, v14

    mul-float/2addr v4, v14

    iget v14, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v17, v14, 0x1

    aput v15, v11, v14

    add-int/lit8 v15, v14, 0x2

    aput v6, v11, v17

    add-int/lit8 v6, v14, 0x3

    aput v16, v11, v15

    add-int/lit8 v14, v14, 0x4

    iput v14, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput v4, v11, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v13

    goto :goto_1

    :cond_a
    :goto_7
    sub-float v4, v7, v3

    add-float/2addr v7, v3

    iget-boolean v6, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    if-eqz v6, :cond_d

    cmpl-float v6, v8, v12

    if-ltz v6, :cond_b

    move v6, v8

    goto :goto_8

    :cond_b
    move v6, v12

    :goto_8
    cmpg-float v9, v8, v12

    if-gtz v9, :cond_c

    goto :goto_b

    :cond_c
    move v8, v12

    goto :goto_b

    :cond_d
    cmpl-float v6, v8, v12

    if-ltz v6, :cond_e

    move v6, v8

    goto :goto_9

    :cond_e
    move v6, v12

    :goto_9
    cmpg-float v9, v8, v12

    if-gtz v9, :cond_f

    goto :goto_a

    :cond_f
    move v8, v12

    :goto_a
    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    :goto_b
    cmpl-float v9, v8, v12

    if-lez v9, :cond_10

    iget v9, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    mul-float/2addr v8, v9

    goto :goto_c

    :cond_10
    iget v9, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    mul-float/2addr v6, v9

    :goto_c
    iget v9, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v10, v9, 0x1

    aput v4, v11, v9

    add-int/lit8 v4, v9, 0x2

    aput v8, v11, v10

    add-int/lit8 v8, v9, 0x3

    aput v7, v11, v4

    add-int/lit8 v9, v9, 0x4

    iput v9, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput v6, v11, v8

    :cond_11
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x0

    iput v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    return-void
.end method
