.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public backingLayoutHelper:Landroidx/compose/ui/text/android/LayoutHelper;

.field public backingWordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

.field public final bottomPadding:I

.field public final didExceedMaxLines:Z

.field public final fallbackLineSpacing:Z

.field public final includePadding:Z

.field public final isBoringLayout:Z

.field public final lastLineExtra:I

.field public final lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public final layout:Landroid/text/Layout;

.field public final leftPadding:F

.field public final lineCount:I

.field public final lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

.field public final rect:Landroid/graphics/Rect;

.field public final rightPadding:F

.field public final textPaint:Landroid/text/TextPaint;

.field public final topPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v14, p7

    move/from16 v13, p8

    move-object/from16 v3, p14

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p3

    iput-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->rect:Landroid/graphics/Rect;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v34

    sget-object v6, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_4

    if-eq v2, v12, :cond_3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    sget-object v2, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_RIGHT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->ALIGN_LEFT_FRAMEWORK:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object v2, v15

    check-cast v2, Landroid/text/Spanned;

    const/4 v6, -0x1

    const-class v8, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-interface {v2, v6, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    if-ge v2, v4, :cond_5

    move v2, v12

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    const-string v4, "TextLayout:initLayout"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v4, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    const/4 v9, 0x0

    if-nez v4, :cond_6

    iget v4, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textDirectionHeuristic:I

    invoke-static {v4}, Landroidx/compose/ui/text/android/TextLayout_androidKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    iget-object v6, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    iget-object v8, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    invoke-static {v6, v8, v4, v12, v9}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v4

    iput-object v4, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    iput-boolean v12, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetricsIsInit:Z

    :cond_6
    iget-object v8, v3, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_boringMetrics:Landroid/text/BoringLayout$Metrics;

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v4, v11

    float-to-int v12, v4

    if-eqz v8, :cond_9

    invoke-virtual/range {p14 .. p14}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_9

    if-nez v2, :cond_9

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    if-ltz v12, :cond_8

    if-ltz v12, :cond_7

    new-instance v16, Landroid/text/BoringLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v12

    move-object v5, v7

    move v7, v9

    const/16 v22, 0x0

    move/from16 v9, p7

    const/4 v15, 0x0

    move-object/from16 v10, p5

    move/from16 v18, v11

    const/16 v17, 0x1

    move v11, v12

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    :goto_3
    move-object/from16 v1, v16

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative ellipsized width"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative width"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_9
    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v22, 0x0

    iput-boolean v15, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v10, v1

    const/4 v4, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v3, v12

    move v12, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v5, v6

    move-object/from16 v6, v34

    move/from16 v8, p8

    move-object/from16 v9, p5

    move/from16 v13, p13

    move/from16 v14, p7

    move/from16 v15, v17

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    invoke-static/range {v1 .. v21}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;

    move-result-object v16

    goto :goto_3

    :goto_4
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move/from16 v3, p8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    if-ge v2, v3, :cond_b

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-gtz v3, :cond_c

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v3, v6, :cond_a

    :cond_c
    move v12, v4

    :goto_5
    iput-boolean v12, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    sget-wide v6, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    const-wide v8, 0xffffffffL

    const/16 v3, 0x20

    if-nez p7, :cond_e

    iget-boolean v10, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    if-eqz v10, :cond_d

    move-object v10, v1

    check-cast v10, Landroid/text/BoringLayout;

    invoke-virtual {v10}, Landroid/text/BoringLayout;->isFallbackLineSpacingEnabled()Z

    move-result v10

    goto :goto_6

    :cond_d
    move-object v10, v1

    check-cast v10, Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->isFallbackLineSpacingEnabled()Z

    move-result v10

    :goto_6
    if-eqz v10, :cond_f

    :cond_e
    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v14

    iget v15, v13, Landroid/graphics/Rect;->top:I

    if-ge v15, v14, :cond_10

    sub-int/2addr v14, v15

    goto :goto_7

    :cond_10
    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v14

    :goto_7
    if-ne v2, v4, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    invoke-static {v10, v11, v2, v13}, Landroidx/compose/ui/text/android/PaintExtensions_androidKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v13

    :goto_8
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-le v10, v2, :cond_12

    sub-int/2addr v10, v2

    goto :goto_9

    :cond_12
    invoke-virtual {v1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v10

    :goto_9
    if-nez v14, :cond_13

    if-nez v10, :cond_13

    goto :goto_a

    :cond_13
    int-to-long v13, v14

    shl-long/2addr v13, v3

    int-to-long v10, v10

    and-long/2addr v10, v8

    or-long/2addr v10, v13

    goto :goto_b

    :goto_a
    move-wide v10, v6

    :goto_b
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_14

    :goto_c
    move-object/from16 v1, v22

    goto :goto_d

    :cond_14
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v13, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    const-class v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-static {v2, v14}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v13, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-interface {v2, v12, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    :goto_d
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    if-eqz v1, :cond_1a

    array-length v2, v1

    move v6, v12

    move v7, v6

    move v13, v7

    :goto_e
    if-ge v6, v2, :cond_18

    aget-object v14, v1, v6

    iget v15, v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    if-gez v15, :cond_16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_16
    iget v14, v14, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    if-gez v14, :cond_17

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_17
    add-int/2addr v6, v4

    goto :goto_e

    :cond_18
    if-nez v7, :cond_19

    if-nez v13, :cond_19

    sget-wide v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->ZeroVerticalPadding:J

    :goto_f
    move-wide v6, v1

    goto :goto_10

    :cond_19
    int-to-long v1, v7

    shl-long/2addr v1, v3

    int-to-long v6, v13

    and-long/2addr v6, v8

    or-long/2addr v1, v6

    goto :goto_f

    :cond_1a
    :goto_10
    shr-long v1, v10, v3

    long-to-int v1, v1

    shr-long v2, v6, v3

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    and-long v1, v10, v8

    long-to-int v1, v1

    and-long v2, v6, v8

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    iget-object v14, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->lineHeightSpans:[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    sub-int/2addr v2, v4

    iget-object v3, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v3, v4, :cond_1d

    if-eqz v1, :cond_1d

    array-length v3, v1

    if-nez v3, :cond_1b

    goto/16 :goto_12

    :cond_1b
    new-instance v13, Landroid/text/SpannableString;

    const-string/jumbo v3, "\u200b"

    invoke-direct {v13, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    if-eqz v2, :cond_1c

    move v10, v12

    goto :goto_11

    :cond_1c
    iget-boolean v10, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v4, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    iget-boolean v6, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    iget v1, v1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topRatio:F

    move-object/from16 p1, v2

    move/from16 p2, v4

    move/from16 p3, v3

    move/from16 p4, v10

    move/from16 p5, v6

    move/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZF)V

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v13, v2, v12, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v17

    sget-object v19, Landroidx/compose/ui/text/android/LayoutCompat;->DEFAULT_LAYOUT_ALIGNMENT:Landroid/text/Layout$Alignment;

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    move/from16 v27, v1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const v20, 0x7fffffff

    const/16 v21, 0x0

    const v22, 0x7fffffff

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v18, v34

    invoke-static/range {v13 .. v33}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;

    move-result-object v1

    new-instance v9, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v9}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v2

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v2

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_13

    :cond_1d
    :goto_12
    move-object/from16 v9, v22

    :goto_13
    if-eqz v9, :cond_1e

    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v2

    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v10, v1, v2

    goto :goto_14

    :cond_1e
    move v10, v12

    :goto_14
    iput v10, v0, Landroidx/compose/ui/text/android/TextLayout;->lastLineExtra:I

    iput-object v9, v0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->getEllipsizedLeftPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->leftPadding:F

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt;->getEllipsizedRightPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->rightPadding:F

    return-void

    :goto_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineExtra:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getHorizontalPadding(I)F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->leftPadding:F

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->rightPadding:F

    add-float/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingLayoutHelper:Landroidx/compose/ui/text/android/LayoutHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/android/LayoutHelper;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/LayoutHelper;-><init>(Landroid/text/Layout;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingLayoutHelper:Landroidx/compose/ui/text/android/LayoutHelper;

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getLineBaseline(I)F
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    int-to-float v0, v0

    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p0

    int-to-float p1, p0

    :goto_0
    add-float/2addr v0, p1

    return v0
.end method

.method public final getLineBottom(I)F
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->lastLineFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1

    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v1, p0

    return v1
.end method

.method public final getLineEnd(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getLineTop(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final getPrimaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getHorizontalPadding(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final getSecondaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getHorizontalPadding(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0
.end method

.method public final getWordIterator()Landroidx/compose/ui/text/android/selection/WordIterator;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingWordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->backingWordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    return-object v0
.end method
