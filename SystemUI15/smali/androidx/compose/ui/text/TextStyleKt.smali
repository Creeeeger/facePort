.class public abstract Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    sget-object v4, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->INSTANCE:Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/style/TextForegroundStyle;

    goto :goto_0

    :goto_1
    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    :cond_1
    move-wide v6, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_2
    move-object v8, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_2

    :cond_3
    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v9

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v3, :cond_4

    iget v3, v3, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_3

    :cond_4
    sget-object v3, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    :goto_3
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v10

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    :cond_5
    move-object v11, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    move-object v12, v3

    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    :cond_7
    move-wide v13, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v3, :cond_8

    iget v3, v3, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_4

    :cond_8
    sget-object v3, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v15

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v3, :cond_9

    sget-object v3, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_9
    move-object/from16 v16, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez v3, :cond_a

    sget-object v3, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v3}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v3

    :cond_a
    move-object/from16 v17, v3

    const-wide/16 v3, 0x10

    move-object/from16 v25, v1

    iget-wide v0, v2, Landroidx/compose/ui/text/SpanStyle;->background:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_b

    :goto_5
    move-wide/from16 v18, v0

    goto :goto_6

    :cond_b
    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    goto :goto_5

    :goto_6
    iget-object v0, v2, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v0, :cond_c

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_c
    move-object/from16 v20, v0

    iget-object v0, v2, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v0, :cond_d

    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    :cond_d
    move-object/from16 v21, v0

    iget-object v0, v2, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v0, :cond_e

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_e
    move-object/from16 v23, v0

    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    move-object v4, v0

    iget-object v1, v2, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    move-object/from16 v22, v1

    const/16 v24, 0x0

    invoke-direct/range {v4 .. v24}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v1, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    new-instance v1, Landroidx/compose/ui/text/ParagraphStyle;

    move-object/from16 v14, p0

    iget-object v2, v14, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    sget-object v4, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->Unspecified:I

    invoke-static {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->Start:I

    goto :goto_7

    :cond_f
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    :goto_7
    sget-object v4, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextDirection;->Content:I

    iget v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v5, v4}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_12

    sget-object v4, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v7, :cond_11

    if-ne v4, v6, :cond_10

    sget v4, Landroidx/compose/ui/text/style/TextDirection;->ContentOrRtl:I

    goto :goto_8

    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_11
    sget v4, Landroidx/compose/ui/text/style/TextDirection;->ContentOrLtr:I

    goto :goto_8

    :cond_12
    sget v4, Landroidx/compose/ui/text/style/TextDirection;->Unspecified:I

    invoke-static {v5, v4}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v7, :cond_14

    if-ne v4, v6, :cond_13

    sget v4, Landroidx/compose/ui/text/style/TextDirection;->Rtl:I

    goto :goto_8

    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_14
    sget v4, Landroidx/compose/ui/text/style/TextDirection;->Ltr:I

    goto :goto_8

    :cond_15
    move v4, v5

    :goto_8
    iget-wide v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v7

    if-eqz v7, :cond_16

    sget-wide v5, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    :cond_16
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v7, :cond_17

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_17
    sget-object v8, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    if-nez v8, :cond_18

    sget v8, Landroidx/compose/ui/text/style/LineBreak;->Simple:I

    :cond_18
    move v10, v8

    sget-object v8, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/Hyphens;->Unspecified:I

    iget v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v9, v8}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_19

    sget v8, Landroidx/compose/ui/text/style/Hyphens;->None:I

    move v11, v8

    goto :goto_9

    :cond_19
    move v11, v9

    :goto_9
    iget-object v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v8, :cond_1a

    sget-object v8, Landroidx/compose/ui/text/style/TextMotion;->Companion:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_1a
    move-object v12, v8

    iget-object v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    const/4 v13, 0x0

    iget-object v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v14, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    move-object/from16 v3, v25

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-object v3
.end method
