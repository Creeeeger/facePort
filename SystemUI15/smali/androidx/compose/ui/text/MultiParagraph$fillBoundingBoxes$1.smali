.class final Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $array:[F

.field final synthetic $currentArrayStart:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $currentHeight:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $range:J


# direct methods
.method public constructor <init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$range:J

    iput-object p3, p0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$array:[F

    iput-object p4, p0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$currentArrayStart:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$currentHeight:Lkotlin/jvm/internal/Ref$FloatRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    iget-wide v2, v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$range:J

    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$array:[F

    iget-object v5, v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$currentArrayStart:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;->$currentHeight:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v6, v1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    if-le v6, v7, :cond_0

    iget v6, v1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v6

    :goto_0
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v7

    iget v8, v1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    if-ge v8, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    :goto_1
    invoke-virtual {v1, v6}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result v2

    invoke-virtual {v1, v8}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    iget v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/Paragraph;

    check-cast v1, Landroidx/compose/ui/text/AndroidParagraph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v7

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v8

    iget-object v9, v1, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v10, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ltz v7, :cond_d

    if-ge v7, v10, :cond_c

    if-le v8, v7, :cond_b

    if-gt v8, v10, :cond_a

    sub-int v10, v8, v7

    mul-int/lit8 v10, v10, 0x4

    array-length v11, v4

    sub-int/2addr v11, v6

    if-lt v11, v10, :cond_9

    iget-object v10, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v10, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    add-int/lit8 v11, v8, -0x1

    iget-object v12, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    new-instance v12, Landroidx/compose/ui/text/android/HorizontalPositionCache;

    invoke-direct {v12, v9}, Landroidx/compose/ui/text/android/HorizontalPositionCache;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    if-gt v10, v11, :cond_7

    :goto_2
    iget-object v13, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v14

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v15

    invoke-virtual {v9, v10}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v16

    move/from16 p0, v6

    iget-object v6, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v6, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    move/from16 p1, v7

    const/4 v7, 0x1

    move/from16 v17, v8

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    xor-int/lit8 v18, v6, 0x1

    move v7, v13

    move/from16 v13, p0

    :goto_4
    if-ge v7, v14, :cond_6

    iget-object v8, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v8

    if-eqz v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v20, v9

    move/from16 v21, v14

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v14, v9, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v8

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v12, v9, v9, v9, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v14

    move/from16 v19, v6

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move-object/from16 v20, v9

    move/from16 v21, v14

    if-eqz v6, :cond_4

    if-eqz v8, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v12, v9, v9, v9, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v14

    add-int/lit8 v8, v7, 0x1

    move/from16 v19, v6

    const/4 v6, 0x1

    invoke-virtual {v12, v6, v6, v9, v8}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v8

    goto :goto_5

    :cond_4
    move/from16 v19, v6

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v18, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v12, v9, v9, v6, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v14

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v12, v6, v6, v6, v8}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v8

    goto :goto_5

    :cond_5
    invoke-virtual {v12, v9, v9, v9, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v8

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v12, v6, v6, v9, v14}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->get(ZZZI)F

    move-result v14

    :goto_5
    aput v8, v4, v13

    add-int/lit8 v8, v13, 0x1

    aput v15, v4, v8

    add-int/lit8 v8, v13, 0x2

    aput v14, v4, v8

    add-int/lit8 v8, v13, 0x3

    aput v16, v4, v8

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v19

    move-object/from16 v9, v20

    move/from16 v14, v21

    goto :goto_4

    :cond_6
    move-object/from16 v20, v9

    if-eq v10, v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    move v6, v13

    move/from16 v8, v17

    move-object/from16 v9, v20

    goto/16 :goto_2

    :cond_7
    iget v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v6

    iget v3, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_6
    if-ge v3, v2, :cond_8

    add-int/lit8 v6, v3, 0x1

    aget v7, v4, v6

    iget v8, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v7, v8

    aput v7, v4, v6

    add-int/lit8 v6, v3, 0x3

    aget v7, v4, v6

    add-float/2addr v7, v8

    aput v7, v4, v6

    add-int/lit8 v3, v3, 0x4

    goto :goto_6

    :cond_8
    iput v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v1}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v1

    add-float/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endOffset must be smaller or equal to text length"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endOffset must be greater than startOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startOffset must be less than text length"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startOffset must be > 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
