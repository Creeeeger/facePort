.class public final Landroidx/compose/ui/text/android/LayoutHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bidiProcessedParagraphs:[Z

.field public final layout:Landroid/text/Layout;

.field public final paragraphBidi:Ljava/util/List;

.field public final paragraphEnds:Ljava/util/List;

.field public tmpBuffer:[C


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-static {v2, v4, v1, v0, v3}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void
.end method


# virtual methods
.method public final getDownstreamHorizontal(IZ)F
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getHorizontalPosition(IZZ)F
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0

    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/text/android/LayoutCompat_androidKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    iget-object v5, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    invoke-virtual/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0

    :cond_1
    if-eqz v1, :cond_2d

    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_2

    goto/16 :goto_15

    :cond_2
    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-eqz v2, :cond_4

    if-lez v6, :cond_4

    iget-object v2, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v7, v6, -0x1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    move v6, v7

    :cond_4
    iget-object v2, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v7, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(II)I

    move-result v5

    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v10

    sub-int v11, v4, v10

    sub-int v10, v5, v10

    iget-object v12, v0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    aget-boolean v13, v12, v6

    if-eqz v13, :cond_6

    iget-object v12, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/Bidi;

    goto/16 :goto_5

    :cond_6
    const/4 v13, 0x0

    if-nez v6, :cond_7

    move v14, v13

    goto :goto_2

    :cond_7
    iget-object v14, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v15, v6, -0x1

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    :goto_2
    iget-object v15, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    sub-int v8, v15, v14

    iget-object v7, v0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    if-eqz v7, :cond_8

    array-length v9, v7

    if-ge v9, v8, :cond_9

    :cond_8
    new-array v7, v8, [C

    :cond_9
    iget-object v9, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9, v14, v15, v7, v13}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    invoke-static {v7, v13, v8}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v9

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_b

    iget-object v9, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_a

    move/from16 v22, v14

    goto :goto_3

    :cond_a
    const/16 v22, 0x0

    :goto_3
    new-instance v9, Ljava/text/Bidi;

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    move/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Ljava/text/Bidi;-><init>([CI[BIII)V

    invoke-virtual {v9}, Ljava/text/Bidi;->getRunCount()I

    move-result v8

    if-ne v8, v14, :cond_c

    :cond_b
    move-object v9, v15

    :cond_c
    iget-object v8, v0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aput-boolean v14, v12, v6

    if-eqz v9, :cond_e

    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    if-ne v7, v6, :cond_d

    move-object v7, v15

    goto :goto_4

    :cond_d
    move-object v7, v6

    :cond_e
    :goto_4
    iput-object v7, v0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    move-object v6, v9

    :goto_5
    if-eqz v6, :cond_f

    invoke-virtual {v6, v11, v10}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v6

    goto :goto_6

    :cond_f
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    move v5, v8

    :goto_7
    const/4 v11, 0x0

    goto/16 :goto_11

    :cond_10
    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    move-result v7

    new-array v8, v7, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_12

    new-instance v10, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    invoke-virtual {v6, v9}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v6, v9}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v6, v9}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v13

    rem-int/lit8 v13, v13, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    const/4 v13, 0x1

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    :goto_9
    invoke-direct {v10, v11, v12, v13}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    move-result v9

    new-array v10, v9, [B

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v9, :cond_13

    invoke-virtual {v6, v11}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v11, v7}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    if-ne v1, v4, :cond_1c

    move v4, v11

    :goto_b
    if-ge v4, v7, :cond_15

    aget-object v5, v8, v4

    iget v5, v5, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    if-ne v5, v1, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, -0x1

    :goto_c
    aget-object v1, v8, v4

    if-nez p2, :cond_16

    iget-boolean v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-ne v2, v1, :cond_18

    :cond_16
    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_d

    :cond_17
    move v2, v11

    :cond_18
    :goto_d
    if-nez v4, :cond_19

    if-eqz v2, :cond_19

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_19
    const/4 v1, 0x1

    sub-int/2addr v7, v1

    if-ne v4, v7, :cond_1a

    if-nez v2, :cond_1a

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_1a
    if-eqz v2, :cond_1b

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    sub-int/2addr v4, v1

    aget-object v1, v8, v4

    iget v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_1b
    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/2addr v4, v1

    aget-object v1, v8, v4

    iget v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_1c
    if-le v1, v5, :cond_1d

    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(II)I

    move-result v1

    :cond_1d
    move v4, v11

    :goto_e
    if-ge v4, v7, :cond_1f

    aget-object v5, v8, v4

    iget v5, v5, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    if-ne v5, v1, :cond_1e

    goto :goto_f

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1f
    const/4 v4, -0x1

    :goto_f
    aget-object v1, v8, v4

    if-nez p2, :cond_22

    iget-boolean v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    if-ne v2, v1, :cond_20

    goto :goto_10

    :cond_20
    if-nez v2, :cond_21

    const/4 v2, 0x1

    goto :goto_10

    :cond_21
    move v2, v11

    :cond_22
    :goto_10
    if-nez v4, :cond_23

    if-eqz v2, :cond_23

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    return v0

    :cond_23
    const/4 v5, 0x1

    sub-int/2addr v7, v5

    if-ne v4, v7, :cond_24

    if-nez v2, :cond_24

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    return v0

    :cond_24
    if-eqz v2, :cond_25

    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    sub-int/2addr v4, v5

    aget-object v1, v8, v4

    iget v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_25
    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/2addr v4, v5

    aget-object v1, v8, v4

    iget v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0

    :cond_26
    const/4 v5, 0x1

    goto/16 :goto_7

    :goto_11
    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v6, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    if-nez p2, :cond_27

    if-ne v2, v6, :cond_29

    :cond_27
    if-nez v2, :cond_28

    move v2, v5

    goto :goto_12

    :cond_28
    move v2, v11

    :cond_29
    :goto_12
    if-ne v1, v4, :cond_2a

    move v7, v2

    goto :goto_13

    :cond_2a
    if-nez v2, :cond_2b

    move v7, v5

    goto :goto_13

    :cond_2b
    move v7, v11

    :goto_13
    iget-object v0, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    if-eqz v7, :cond_2c

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    goto :goto_14

    :cond_2c
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    :goto_14
    return v0

    :cond_2d
    :goto_15
    invoke-virtual/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public final getParagraphStart(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final lineEndToVisibleEnd(II)I
    .locals 2

    :goto_0
    if-le p1, p2, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1680

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, 0x200a

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x2007

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x205f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return p1
.end method
