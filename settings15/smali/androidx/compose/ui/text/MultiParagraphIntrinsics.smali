.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsics;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final annotatedString:Landroidx/compose/ui/text/AnnotatedString;

.field public final infoList:Ljava/util/List;

.field public final maxIntrinsicWidth$delegate:Lkotlin/Lazy;

.field public final minIntrinsicWidth$delegate:Lkotlin/Lazy;

.field public final placeholders:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->placeholders:Ljava/util/List;

    sget-object v3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v4, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    new-instance v4, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {v4, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    sget-object v3, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v1, Landroidx/compose/ui/text/AnnotatedString;->paragraphStylesOrNull:Ljava/util/List;

    if-nez v4, :cond_0

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    iget-object v10, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    if-ge v8, v6, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/text/ParagraphStyle;

    iget v13, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-eq v13, v9, :cond_1

    new-instance v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v14, v9, v13, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v10, v12}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v10

    iget v11, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-direct {v9, v13, v11, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_0

    :cond_2
    if-eq v9, v3, :cond_3

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v4, v9, v3, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v3, v7, v7, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v7

    :goto_1
    if-ge v6, v4, :cond_b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    new-instance v11, Landroidx/compose/ui/text/AnnotatedString;

    iget v12, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v9, v12, :cond_5

    iget-object v13, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v15, v13

    goto :goto_3

    :cond_5
    const-string v13, ""

    goto :goto_2

    :goto_3
    invoke-static {v1, v9, v12}, Landroidx/compose/ui/text/AnnotatedStringKt;->getLocalSpanStyles(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;

    move-result-object v9

    const/4 v13, 0x0

    invoke-direct {v11, v15, v9, v13, v13}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/text/ParagraphStyle;

    iget v13, v9, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    const/high16 v14, -0x80000000

    invoke-static {v13, v14}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v30, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v29, v6

    move/from16 v32, v12

    move-object/from16 v31, v15

    goto :goto_4

    :cond_6
    iget v13, v10, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    new-instance v14, Landroidx/compose/ui/text/ParagraphStyle;

    iget v7, v9, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    iget-object v1, v9, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    move/from16 v27, v4

    iget v4, v9, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    move-object/from16 v28, v5

    move/from16 v29, v6

    iget-wide v5, v9, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    move-object/from16 v30, v3

    iget-object v3, v9, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    move-object/from16 v31, v15

    iget-object v15, v9, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    move/from16 v32, v12

    iget-object v12, v9, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v9, v9, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    move-object/from16 v16, v14

    move/from16 v17, v4

    move/from16 v18, v13

    move-wide/from16 v19, v5

    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-object/from16 v23, v12

    move/from16 v24, v9

    move/from16 v25, v7

    move-object/from16 v26, v1

    invoke-direct/range {v16 .. v26}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    move-object v9, v14

    :goto_4
    new-instance v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    new-instance v3, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v10, v9}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object v4

    iget-object v5, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    invoke-direct {v3, v5, v4}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    invoke-virtual {v11}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    move-result-object v17

    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->placeholders:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_5
    iget v9, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-ge v7, v6, :cond_8

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v13, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v12, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    move/from16 v15, v32

    invoke-static {v9, v15, v13, v12}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v32, v15

    goto :goto_5

    :cond_8
    move/from16 v15, v32

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v11, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-gt v9, v11, :cond_9

    iget v12, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-gt v12, v15, :cond_9

    new-instance v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    sub-int/2addr v11, v9

    sub-int/2addr v12, v9

    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-direct {v13, v11, v12, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "placeholder can not overlap with paragraph."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v5, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v14, v5

    move v6, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, p5

    move-object/from16 v20, p4

    invoke-direct/range {v14 .. v20}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    invoke-direct {v1, v5, v9, v6}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;II)V

    move-object/from16 v3, v30

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v27

    move-object/from16 v5, v28

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->infoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getHasStaleResolvedFonts()Z
    .locals 4

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->infoList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    iget-object v3, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/ParagraphIntrinsics;

    invoke-interface {v3}, Landroidx/compose/ui/text/ParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->maxIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->minIntrinsicWidth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
