.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# instance fields
.field public final charSequence:Ljava/lang/CharSequence;

.field public final constraints:J

.field public final layout:Landroidx/compose/ui/text/android/TextLayout;

.field public final maxLines:I

.field public final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field public final placeholderRects:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    const/4 v11, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput v10, v9, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    move-wide/from16 v12, p4

    iput-wide v12, v9, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    if-nez v1, :cond_29

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    if-nez v1, :cond_29

    if-lt v10, v11, :cond_28

    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    const/4 v15, 0x0

    if-eqz p3, :cond_2

    iget-object v1, v14, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v1, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v14, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-wide v1, v1, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v14, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v2, v1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->Unspecified:I

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->Start:I

    iget v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->Justify:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    invoke-direct {v1}, Landroidx/compose/ui/text/android/style/IndentationFixSpan;-><init>()V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    sub-int/2addr v3, v11

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    iget-object v0, v14, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/TextAlign;->Left:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v8, 0x2

    if-eqz v1, :cond_3

    move/from16 v16, v3

    goto :goto_2

    :cond_3
    sget v1, Landroidx/compose/ui/text/style/TextAlign;->Right:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v16, v2

    goto :goto_2

    :cond_4
    sget v1, Landroidx/compose/ui/text/style/TextAlign;->Center:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v16, v8

    goto :goto_2

    :cond_5
    sget v1, Landroidx/compose/ui/text/style/TextAlign;->Start:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move/from16 v16, v15

    goto :goto_2

    :cond_7
    sget v1, Landroidx/compose/ui/text/style/TextAlign;->End:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    move/from16 v16, v11

    :goto_2
    iget-object v0, v14, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v1, v0, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->Justify:I

    invoke-static {v1, v4}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v17

    sget-object v1, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/Hyphens;->Auto:I

    iget v4, v0, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v4, v1}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v18, v2

    goto :goto_3

    :cond_8
    sget-object v1, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    move/from16 v18, v15

    :goto_3
    sget-object v1, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    iget v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    and-int/lit16 v1, v0, 0xff

    sget-object v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Simple:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move/from16 v19, v15

    goto :goto_4

    :cond_a
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->HighQuality:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_b

    move/from16 v19, v11

    goto :goto_4

    :cond_b
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strategy;->Balanced:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strategy;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v19, v8

    :goto_4
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Companion:Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Default:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    move/from16 v20, v15

    goto :goto_5

    :cond_d
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Loose:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v20, v11

    goto :goto_5

    :cond_e
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Normal:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v20, v8

    goto :goto_5

    :cond_f
    sget v2, Landroidx/compose/ui/text/style/LineBreak$Strictness;->Strict:I

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/LineBreak$Strictness;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v20, v3

    :goto_5
    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->Default:I

    if-ne v0, v1, :cond_11

    :cond_10
    move/from16 v21, v15

    goto :goto_6

    :cond_11
    sget v1, Landroidx/compose/ui/text/style/LineBreak$WordBreak;->Phrase:I

    if-ne v0, v1, :cond_10

    move/from16 v21, v11

    :goto_6
    const/16 v22, 0x0

    if-eqz p3, :cond_12

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v23, v0

    goto :goto_7

    :cond_12
    move-object/from16 v23, v22

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v4, p2

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIII)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v0

    if-eqz p3, :cond_17

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result v1

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    if-le v1, v2, :cond_17

    if-le v10, v11, :cond_17

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    move v2, v15

    :goto_8
    iget v3, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    if-ge v2, v3, :cond_14

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    goto :goto_9

    :cond_13
    add-int/2addr v2, v11

    goto :goto_8

    :cond_14
    move v2, v3

    :goto_9
    if-ltz v2, :cond_16

    iget v1, v9, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    if-eq v2, v1, :cond_16

    if-ge v2, v11, :cond_15

    move v4, v11

    goto :goto_a

    :cond_15
    move v4, v2

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIII)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v0

    :cond_16
    iput-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_b

    :cond_17
    iput-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    :goto_b
    iget-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget-object v1, v14, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v3

    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    if-nez v1, :cond_19

    :cond_18
    move-object/from16 v0, v22

    goto :goto_c

    :cond_19
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v3

    const/4 v4, -0x1

    invoke-interface {v1, v4, v3, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v1

    if-eq v2, v1, :cond_18

    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spanned;

    iget-object v0, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-interface {v1, v15, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    :goto_c
    if-eqz v0, :cond_1a

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    invoke-direct {v1, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    :goto_d
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1a
    iget-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_1b

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_1c

    :cond_1b
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v1, v15, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    move v4, v15

    :goto_e
    if-ge v4, v3, :cond_27

    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v8, v8, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    iget v10, v9, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    if-lt v8, v10, :cond_1c

    move v10, v11

    goto :goto_f

    :cond_1c
    move v10, v15

    :goto_f
    iget-object v12, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    if-lez v12, :cond_1d

    iget-object v12, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    if-le v7, v12, :cond_1d

    move v12, v11

    goto :goto_10

    :cond_1d
    move v12, v15

    :goto_10
    iget-object v13, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v13, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v13

    if-le v7, v13, :cond_1e

    move v7, v11

    goto :goto_11

    :cond_1e
    move v7, v15

    :goto_11
    if-nez v12, :cond_1f

    if-nez v7, :cond_1f

    if-eqz v10, :cond_20

    :cond_1f
    const/4 v10, 0x2

    goto/16 :goto_1a

    :cond_20
    iget-object v7, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-object v7, v7, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v7

    if-eqz v7, :cond_21

    sget-object v7, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_12

    :cond_21
    sget-object v7, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_12
    sget-object v10, Landroidx/compose/ui/text/AndroidParagraph$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v10, v7

    if-eq v7, v11, :cond_23

    const/4 v10, 0x2

    if-ne v7, v10, :cond_22

    iget-object v7, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v7, v6, v15}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    goto :goto_13

    :cond_22
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_23
    const/4 v10, 0x2

    iget-object v7, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v7, v6, v15}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    move-result v6

    :goto_13
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iget-object v12, v9, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected verticalAlignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v13, :cond_24

    goto :goto_14

    :cond_24
    move-object/from16 v13, v22

    :goto_14
    iget v14, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v14, v13

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v13

    sub-int/2addr v14, v13

    div-int/2addr v14, v10

    int-to-float v13, v14

    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    :goto_15
    add-float/2addr v8, v13

    goto :goto_19

    :pswitch_1
    iget-object v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v13, :cond_25

    goto :goto_16

    :cond_25
    move-object/from16 v13, v22

    :goto_16
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v13, v13

    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    add-float/2addr v8, v13

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    :goto_17
    int-to-float v12, v12

    sub-float/2addr v8, v12

    goto :goto_19

    :pswitch_2
    iget-object v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v13, :cond_26

    goto :goto_18

    :cond_26
    move-object/from16 v13, v22

    :goto_18
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v13, v13

    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    goto :goto_15

    :pswitch_3
    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v13

    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v8

    add-float/2addr v8, v13

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v8, v12

    int-to-float v12, v10

    div-float/2addr v8, v12

    goto :goto_19

    :pswitch_4
    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    goto :goto_17

    :pswitch_5
    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v8

    goto :goto_19

    :pswitch_6
    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    goto :goto_17

    :goto_19
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v8

    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v12, v6, v8, v7, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_1b

    :goto_1a
    move-object/from16 v12, v22

    :goto_1b
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v11

    goto/16 :goto_e

    :cond_27
    move-object v0, v2

    :goto_1c
    iput-object v0, v9, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/util/List;

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLines should be greater than 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range;",
            ">;IZJ",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move v2, p5

    move v3, p6

    move-wide v4, p7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    return-void
.end method


# virtual methods
.method public final constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIII)Landroidx/compose/ui/text/android/TextLayout;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v4, v3, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    sget-object v0, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    iget-object v0, v3, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v22, Landroidx/compose/ui/text/android/TextLayout;

    move-object/from16 v0, v22

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v6, v3, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x1

    iget-object v3, v3, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-object/from16 v19, v3

    const v20, 0x30080

    const/16 v21, 0x0

    move-object v3, v4

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v11, p4

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p5

    move/from16 v16, p2

    invoke-direct/range {v0 .. v21}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22
.end method

.method public final getHeight()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 5

    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    sget-object v0, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    sget v2, Landroidx/compose/ui/text/TextGranularity;->Word:I

    if-ne p2, v2, :cond_1

    move p2, v0

    :goto_1
    new-instance v2, Landroidx/compose/ui/text/AndroidParagraph$getRangeForRect$range$1;

    invoke-direct {v2, p3}, Landroidx/compose/ui/text/AndroidParagraph$getRangeForRect$range$1;-><init>(Landroidx/compose/ui/text/TextInclusionStrategy;)V

    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->INSTANCE:Landroidx/compose/ui/text/android/AndroidLayoutApi34;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    sget-object p2, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;->INSTANCE:Landroidx/compose/ui/text/android/selection/Api34SegmentFinder;

    new-instance p3, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;

    iget-object v3, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getWordIterator()Landroidx/compose/ui/text/android/selection/WordIterator;

    move-result-object v4

    invoke-direct {p3, v3, v4}, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;

    invoke-direct {p2, p3}, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;-><init>(Landroidx/compose/ui/text/android/selection/SegmentFinder;)V

    goto :goto_2

    :cond_3
    new-instance p2, Landroid/text/GraphemeClusterSegmentFinder;

    iget-object p3, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {p3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v3, p0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    invoke-direct {p2, p3, v3}, Landroid/text/GraphemeClusterSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    new-instance p3, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda0;

    invoke-direct {p3, v2}, Landroidx/compose/ui/text/android/AndroidLayoutApi34$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/Layout;->getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p0, Landroidx/compose/ui/text/TextRange;->Zero:J

    return-wide p0

    :cond_4
    aget p1, p0, v1

    aget p0, p0, v0

    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWidth()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final paint(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    check-cast p1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result p0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/text/android/TextLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    if-eqz p0, :cond_2

    int-to-float v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    iput-object p1, v1, Landroidx/compose/ui/text/android/TextAndroidCanvas;->nativeCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    if-eqz p0, :cond_3

    const/4 v1, -0x1

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public final paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v2, v1, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    iget-object p0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method

.method public final paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v2, v1, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v3

    invoke-virtual {v1, p2, v3, v4, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    iget-object p0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    return-void
.end method
