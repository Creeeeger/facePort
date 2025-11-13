.class public abstract Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DefaultBackgroundColor:J

.field public static final DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

.field public static final DefaultFontSize:J

.field public static final DefaultLetterSpacing:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    :goto_0
    sput-object v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    return-void
.end method

.method public static final fastMerge-dSHsh3o(Landroidx/compose/ui/text/SpanStyle;JLandroidx/compose/ui/graphics/Brush;FJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-wide/from16 v13, p17

    move-object/from16 v15, p19

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    const-wide/16 v17, 0x10

    if-eqz v16, :cond_3

    iget-wide v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    move-wide/from16 v11, p5

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p15

    :cond_1
    move-wide/from16 v11, p17

    :cond_2
    move-object/from16 v14, p22

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v11, p5

    :goto_0
    if-nez v3, :cond_4

    cmp-long v13, v1, v17

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_4
    if-eqz v6, :cond_5

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    invoke-virtual {v6, v13}, Landroidx/compose/ui/text/font/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_5
    if-eqz v5, :cond_6

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v5, v13}, Landroidx/compose/ui/text/font/FontWeight;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_6
    if-eqz v8, :cond_7

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    if-ne v8, v13, :cond_0

    :cond_7
    invoke-static/range {p12 .. p13}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    iget-wide v13, v0, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    move-wide/from16 v11, p12

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    :cond_8
    move-wide/from16 v11, p12

    :goto_1
    if-eqz v15, :cond_9

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v15, v13}, Landroidx/compose/ui/text/style/TextDecoration;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_9
    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v13

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eqz v3, :cond_a

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v13}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v13

    cmpg-float v13, v4, v13

    if-nez v13, :cond_0

    :cond_a
    if-eqz v7, :cond_b

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-virtual {v7, v13}, Landroidx/compose/ui/text/font/FontSynthesis;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_b
    if-eqz v9, :cond_c

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_c
    if-eqz v10, :cond_d

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    invoke-virtual {v10, v13}, Landroidx/compose/ui/text/style/BaselineShift;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_d
    move-object/from16 v13, p15

    if-eqz v13, :cond_e

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v13, v14}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_e
    move-object/from16 v14, p16

    if-eqz v14, :cond_f

    iget-object v11, v0, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-virtual {v14, v11}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_f
    move-wide/from16 v11, p17

    cmp-long v16, v11, v17

    if-eqz v16, :cond_10

    iget-wide v14, v0, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v11, v12, v14, v15}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_10
    move-object/from16 v14, p20

    if-eqz v14, :cond_11

    iget-object v15, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v14, v15}, Landroidx/compose/ui/graphics/Shadow;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_11
    move-object/from16 v15, p21

    if-eqz v15, :cond_12

    iget-object v14, v0, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    invoke-virtual {v15, v14}, Landroidx/compose/ui/text/PlatformSpanStyle;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_12
    move-object/from16 v14, p22

    if-eqz v14, :cond_13

    iget-object v15, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto :goto_2

    :cond_13
    return-object v0

    :goto_2
    sget-object v15, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    if-eqz v3, :cond_16

    instance-of v1, v3, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v1, :cond_14

    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->modulate-DxMtmZc(FJ)J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-eqz v3, :cond_17

    new-instance v15, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v15, v1, v2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_3

    :cond_14
    instance-of v1, v3, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    if-eqz v1, :cond_15

    new-instance v15, Landroidx/compose/ui/text/style/BrushStyle;

    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v15, v1, v4}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V

    goto :goto_3

    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_16
    cmp-long v3, v1, v17

    if-eqz v3, :cond_17

    new-instance v15, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v15, v1, v2}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    :cond_17
    :goto_3
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-interface {v1, v15}, Landroidx/compose/ui/text/style/TextForegroundStyle;->merge(Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v1

    if-nez v8, :cond_18

    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    goto :goto_4

    :cond_18
    move-object v2, v8

    :goto_4
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v3

    if-nez v3, :cond_19

    move-wide/from16 v3, p5

    goto :goto_5

    :cond_19
    iget-wide v3, v0, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    :goto_5
    if-nez v5, :cond_1a

    iget-object v5, v0, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    :cond_1a
    if-nez v6, :cond_1b

    iget-object v6, v0, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    :cond_1b
    if-nez v7, :cond_1c

    iget-object v7, v0, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    :cond_1c
    if-nez v9, :cond_1d

    iget-object v8, v0, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    move-object v9, v8

    :cond_1d
    invoke-static/range {p12 .. p13}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v8

    if-nez v8, :cond_1e

    move-object/from16 p8, v9

    move-wide/from16 v8, p12

    goto :goto_6

    :cond_1e
    move-object/from16 p8, v9

    iget-wide v8, v0, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    :goto_6
    if-nez v10, :cond_1f

    iget-object v10, v0, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    :cond_1f
    if-nez v13, :cond_20

    iget-object v13, v0, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_20
    if-nez p16, :cond_21

    iget-object v15, v0, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    goto :goto_7

    :cond_21
    move-object/from16 v15, p16

    :goto_7
    cmp-long v16, v11, v17

    if-eqz v16, :cond_22

    goto :goto_8

    :cond_22
    iget-wide v11, v0, Landroidx/compose/ui/text/SpanStyle;->background:J

    :goto_8
    move-wide/from16 p14, v11

    if-nez p19, :cond_23

    iget-object v11, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    goto :goto_9

    :cond_23
    move-object/from16 v11, p19

    :goto_9
    if-nez p20, :cond_24

    iget-object v12, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    move-object/from16 p17, v12

    goto :goto_a

    :cond_24
    move-object/from16 p17, p20

    :goto_a
    iget-object v12, v0, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    if-nez v12, :cond_25

    move-object/from16 v12, p21

    :cond_25
    if-nez v14, :cond_26

    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v14, v0

    :cond_26
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-wide/from16 p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v2

    move-wide/from16 p9, v8

    move-object/from16 p11, v10

    move-object/from16 p12, v13

    move-object/from16 p13, v15

    move-object/from16 p16, v11

    move-object/from16 p18, v12

    move-object/from16 p19, v14

    invoke-direct/range {p0 .. p19}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    return-object v0
.end method

.method public static final lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static final lerpTextUnitInheritable-C3pnCVY(JJF)J
    .locals 4

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Cannot perform operation for "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot perform operation for Unspecified type."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    new-instance p0, Landroidx/compose/ui/unit/TextUnit;

    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    invoke-static {p4, v0, p0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/TextUnit;

    iget-wide p0, p0, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    return-wide p0
.end method
