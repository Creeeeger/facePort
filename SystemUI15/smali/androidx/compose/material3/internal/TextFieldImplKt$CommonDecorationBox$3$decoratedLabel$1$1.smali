.class final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $bodyLarge:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $bodySmall:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $it:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $labelContentColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $labelProgressValue:F

.field final synthetic $labelTextStyleColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $overrideLabelTextStyleColor:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Landroidx/compose/runtime/State;",
            "Lkotlin/jvm/functions/Function2;",
            "Z",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodyLarge:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodySmall:Landroidx/compose/ui/text/TextStyle;

    iput p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgressValue:F

    iput-object p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$it:Lkotlin/jvm/functions/Function2;

    iput-boolean p6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$overrideLabelTextStyleColor:Z

    iput-object p7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v4

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodyLarge:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$bodySmall:Landroidx/compose/ui/text/TextStyle;

    iget v3, v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelProgressValue:F

    new-instance v5, Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v7, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    sget-object v8, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColorForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    instance-of v10, v8, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v10, :cond_2

    instance-of v11, v9, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v11, :cond_2

    sget-object v10, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v11

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v8

    invoke-static {v11, v12, v8, v9, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->from-8_81llA(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v8

    :goto_1
    move-object v10, v8

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    instance-of v10, v9, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v10, :cond_3

    sget-object v10, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v11, v11, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v12, v12, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-static {v3, v11, v12}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/graphics/Brush;

    check-cast v8, Landroidx/compose/ui/text/style/BrushStyle;

    iget v8, v8, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    check-cast v9, Landroidx/compose/ui/text/style/BrushStyle;

    iget v9, v9, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-static {v8, v9, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v11}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->from(FLandroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/style/TextForegroundStyle;

    goto :goto_1

    :goto_2
    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    iget-wide v11, v7, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v8, v9, v11, v12, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v11

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v8, :cond_4

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_4
    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v9, :cond_5

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_5
    iget v8, v8, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v9, v9, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FII)I

    move-result v8

    const/4 v9, 0x1

    const/16 v13, 0x3e8

    invoke-static {v8, v9, v13}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v8

    new-instance v13, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v13, v8}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Ljava/lang/String;

    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    iget-wide v4, v7, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v8, v9, v4, v5, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v18

    const/4 v4, 0x0

    iget-object v5, v6, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v5, :cond_6

    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_3

    :cond_6
    sget-object v5, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    move v5, v4

    :goto_3
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v8, :cond_7

    iget v4, v8, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_4

    :cond_7
    sget-object v8, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    :goto_4
    invoke-static {v5, v4, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    sget-object v5, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    iget-object v5, v6, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v5, :cond_8

    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_8
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v8, :cond_9

    sget-object v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_9
    new-instance v9, Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget v0, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    move-object/from16 v30, v2

    iget v2, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    iget v2, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    iget v5, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    invoke-static {v2, v5, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    invoke-direct {v9, v0, v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    iget-object v0, v6, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v3, v0, v2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroidx/compose/ui/text/intl/LocaleList;

    move-object v0, v9

    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->background:J

    move-object v5, v0

    move-object v2, v1

    iget-wide v0, v7, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v8, v9, v0, v1, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v23

    iget-object v0, v6, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v0, v6, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v0, :cond_a

    new-instance v0, Landroidx/compose/ui/graphics/Shadow;

    const/16 v37, 0x7

    const/16 v38, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v38}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_a
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v1, :cond_b

    new-instance v1, Landroidx/compose/ui/graphics/Shadow;

    const/16 v37, 0x7

    const/16 v38, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v38}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_b
    new-instance v26, Landroidx/compose/ui/graphics/Shadow;

    iget-wide v8, v0, Landroidx/compose/ui/graphics/Shadow;->color:J

    move-object/from16 v21, v14

    move-object/from16 v27, v15

    iget-wide v14, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    invoke-static {v8, v9, v14, v15, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v32

    iget-wide v8, v0, Landroidx/compose/ui/graphics/Shadow;->offset:J

    iget-wide v14, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    invoke-static {v8, v9, v14, v15, v3}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v34

    iget v0, v0, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    invoke-static {v0, v1, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v36

    const/16 v37, 0x0

    move-object/from16 v31, v26

    invoke-direct/range {v31 .. v37}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    if-nez v1, :cond_c

    if-nez v8, :cond_c

    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    if-nez v1, :cond_d

    sget-object v1, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/PlatformSpanStyle;->Default:Landroidx/compose/ui/text/PlatformSpanStyle;

    :cond_d
    if-nez v8, :cond_e

    sget-object v8, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    :goto_5
    iget-object v6, v6, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    iget-object v7, v7, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v3, v6, v7}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v28, v6

    check-cast v28, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    move-object v9, v6

    invoke-static {v4}, Landroidx/compose/ui/text/style/BaselineShift;->box-impl(F)Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v20

    const/16 v29, 0x0

    move-object/from16 v14, v21

    move-object/from16 v15, v27

    move-object/from16 v21, v5

    move-object/from16 v27, v1

    invoke-direct/range {v9 .. v29}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v1, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    new-instance v1, Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v4}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v4

    move-object/from16 v5, v30

    iget-object v5, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    invoke-static {v7}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/style/TextAlign;

    iget v8, v4, Landroidx/compose/ui/text/style/TextAlign;->value:I

    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v4}, Landroidx/compose/ui/text/style/TextDirection;->box-impl(I)Landroidx/compose/ui/text/style/TextDirection;

    move-result-object v4

    iget v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-static {v7}, Landroidx/compose/ui/text/style/TextDirection;->box-impl(I)Landroidx/compose/ui/text/style/TextDirection;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/style/TextDirection;

    iget v9, v4, Landroidx/compose/ui/text/style/TextDirection;->value:I

    iget-wide v10, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    iget-wide v12, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v10, v11, v12, v13, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v10

    iget-object v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v4, :cond_f

    sget-object v4, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_f
    iget-object v7, v5, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v7, :cond_10

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_10
    new-instance v18, Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v12, v4, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    iget-wide v14, v7, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v12, v13, v14, v15, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v13

    move-object/from16 v20, v1

    iget-wide v0, v4, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    move-object v4, v6

    iget-wide v6, v7, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    invoke-static {v0, v1, v6, v7, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object/from16 v12, v18

    invoke-direct/range {v12 .. v17}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v0, :cond_11

    if-nez v1, :cond_11

    const/4 v13, 0x0

    goto :goto_7

    :cond_11
    if-nez v0, :cond_12

    sget-object v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    :cond_12
    if-nez v1, :cond_13

    sget-object v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    :cond_13
    iget-boolean v6, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    iget-boolean v7, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    if-ne v6, v7, :cond_14

    goto :goto_6

    :cond_14
    new-instance v6, Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget v7, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {v7}, Landroidx/compose/ui/text/EmojiSupportMatch;->box-impl(I)Landroidx/compose/ui/text/EmojiSupportMatch;

    move-result-object v7

    iget v12, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-static {v12}, Landroidx/compose/ui/text/EmojiSupportMatch;->box-impl(I)Landroidx/compose/ui/text/EmojiSupportMatch;

    move-result-object v12

    invoke-static {v3, v7, v12}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/EmojiSupportMatch;

    iget v7, v7, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    iget-boolean v0, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v6, v7, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v6

    :goto_6
    move-object v13, v0

    :goto_7
    iget-object v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/LineBreak;->box-impl(I)Landroidx/compose/ui/text/style/LineBreak;

    move-result-object v0

    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineBreak;->box-impl(I)Landroidx/compose/ui/text/style/LineBreak;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    iget v15, v0, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    iget v0, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v0

    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    iget v0, v0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    iget-object v1, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    iget-object v2, v5, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/ui/text/style/TextMotion;

    const/4 v1, 0x0

    move-object/from16 v7, v20

    move-object/from16 v12, v18

    move/from16 v16, v0

    move-object/from16 v18, v1

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$overrideLabelTextStyleColor:Z

    iget-object v3, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_15

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v2, Landroidx/compose/ui/graphics/Color;->value:J

    const/16 v18, 0x0

    const v19, 0xfffffe

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v19}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    :cond_15
    move-object v2, v0

    iget-object v0, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelContentColor:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v0, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object v5, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$it:Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    move-wide v0, v3

    move-object v3, v5

    move-object/from16 v4, p1

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt;->access$Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
