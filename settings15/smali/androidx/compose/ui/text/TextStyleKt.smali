.class public abstract Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    sget-object v4, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->INSTANCE:Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;

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

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_2
    move-object v8, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    new-instance v9, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v9, v3}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v4, :cond_4

    iget v4, v4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    new-instance v10, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v10, v4}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v4, :cond_5

    sget-object v4, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    :cond_5
    move-object v11, v4

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    move-object v12, v4

    iget-wide v13, v2, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-wide v13, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    :cond_7
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v4, :cond_8

    iget v4, v4, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    new-instance v15, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v15, v4}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v4, :cond_9

    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_9
    move-object/from16 v16, v4

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez v4, :cond_a

    sget-object v4, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v4, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v4}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v4

    :cond_a
    move-object/from16 v17, v4

    const-wide/16 v18, 0x10

    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->background:J

    cmp-long v18, v3, v18

    if-eqz v18, :cond_b

    :goto_5
    move-wide/from16 v18, v3

    goto :goto_6

    :cond_b
    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    goto :goto_5

    :goto_6
    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v3, :cond_c

    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_c
    move-object/from16 v20, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v3, :cond_d

    sget-object v3, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    :cond_d
    move-object/from16 v21, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v3, :cond_e

    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_e
    move-object/from16 v23, v3

    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    move-object v4, v3

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    move-object/from16 v22, v2

    invoke-direct/range {v4 .. v23}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    sget v2, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    new-instance v2, Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v4, v0, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v5, v4, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v5

    const/4 v7, 0x5

    if-eqz v5, :cond_f

    move v5, v7

    goto :goto_7

    :cond_f
    iget v5, v4, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    :goto_7
    const/4 v8, 0x3

    iget v9, v4, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v9, v8}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_11

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    move v8, v9

    goto :goto_8

    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_11
    const/4 v7, 0x4

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    invoke-static {v9, v6}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_14

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    const/4 v7, 0x2

    goto :goto_8

    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_14
    const/4 v8, 0x1

    move v7, v8

    goto :goto_8

    :cond_15
    const/4 v8, 0x1

    move v7, v9

    :goto_8
    iget-wide v9, v4, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v11

    if-eqz v11, :cond_16

    sget-wide v9, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    :cond_16
    iget-object v11, v4, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v11, :cond_17

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_17
    iget v12, v4, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    if-nez v12, :cond_18

    sget v12, Landroidx/compose/ui/text/style/LineBreak;->Simple:I

    :cond_18
    iget v13, v4, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v13, v6}, Landroidx/compose/ui/text/style/Hyphens;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_19

    move v13, v8

    :cond_19
    iget-object v6, v4, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v6, :cond_1a

    sget-object v6, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    :cond_1a
    move-object v14, v6

    iget-object v15, v4, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v8, v4, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    move-object v4, v2

    move v6, v7

    move-object/from16 v16, v8

    move-wide v7, v9

    move-object v9, v11

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v4 .. v14}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-object v1
.end method
