.class final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
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
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;)V
    .locals 0

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
    .locals 38

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

    sget-object v11, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    const-wide/16 v12, 0x10

    if-nez v10, :cond_3

    instance-of v14, v9, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v14, :cond_3

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v14

    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v8

    cmp-long v10, v8, v12

    if-eqz v10, :cond_2

    new-instance v11, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v11, v8, v9}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    :cond_2
    :goto_1
    move-object v13, v11

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_7

    instance-of v10, v9, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v10, :cond_7

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v10, v10, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    move-object v14, v9

    check-cast v14, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v14, v14, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-static {v3, v10, v14}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/graphics/Brush;

    check-cast v8, Landroidx/compose/ui/text/style/BrushStyle;

    iget v8, v8, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    check-cast v9, Landroidx/compose/ui/text/style/BrushStyle;

    iget v9, v9, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-static {v8, v9, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v8

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    instance-of v9, v10, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v9, :cond_5

    check-cast v10, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v9, v10, Landroidx/compose/ui/graphics/SolidColor;->value:J

    invoke-static {v8, v9, v10}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->modulate-DxMtmZc(FJ)J

    move-result-wide v8

    cmp-long v10, v8, v12

    if-eqz v10, :cond_2

    new-instance v11, Landroidx/compose/ui/text/style/ColorStyle;

    invoke-direct {v11, v8, v9}, Landroidx/compose/ui/text/style/ColorStyle;-><init>(J)V

    goto :goto_1

    :cond_5
    instance-of v9, v10, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    if-eqz v9, :cond_6

    new-instance v11, Landroidx/compose/ui/text/style/BrushStyle;

    check-cast v10, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v11, v10, v8}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;F)V

    goto :goto_1

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_7
    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/text/style/TextForegroundStyle;

    goto :goto_1

    :goto_2
    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v3, v8, v9}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    iget-wide v10, v7, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    invoke-static {v8, v9, v10, v11, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v14

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v8, :cond_8

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_8
    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v9, :cond_9

    sget-object v9, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_9
    iget v8, v8, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v9, v9, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v8, v9, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v8

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    new-instance v9, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v10, v7, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    invoke-static {v3, v8, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v10, v7, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-static {v3, v8, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    iget-object v10, v7, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    invoke-static {v3, v8, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/String;

    iget-wide v10, v6, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    iget-wide v4, v7, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    invoke-static {v10, v11, v4, v5, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v21

    const/4 v4, 0x0

    iget-object v5, v6, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v5, :cond_a

    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v8, :cond_b

    iget v4, v8, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    :cond_b
    invoke-static {v5, v4, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v8, :cond_c

    move-object v8, v5

    :cond_c
    iget-object v10, v7, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v10, :cond_d

    goto :goto_4

    :cond_d
    move-object v5, v10

    :goto_4
    new-instance v10, Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget v11, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    iget v12, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    invoke-static {v11, v12, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v11

    iget v8, v8, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    iget v5, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    invoke-static {v8, v5, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v5

    invoke-direct {v10, v11, v5}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    iget-object v5, v6, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v3, v5, v8}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroidx/compose/ui/text/intl/LocaleList;

    iget-wide v11, v6, Landroidx/compose/ui/text/SpanStyle;->background:J

    move-object v5, v1

    iget-wide v0, v7, Landroidx/compose/ui/text/SpanStyle;->background:J

    invoke-static {v11, v12, v0, v1, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v26

    iget-object v0, v6, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v0, v6, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v0, :cond_e

    new-instance v0, Landroidx/compose/ui/graphics/Shadow;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/Shadow;-><init>()V

    :cond_e
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-nez v1, :cond_f

    new-instance v1, Landroidx/compose/ui/graphics/Shadow;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/Shadow;-><init>()V

    :cond_f
    new-instance v8, Landroidx/compose/ui/graphics/Shadow;

    iget-wide v11, v0, Landroidx/compose/ui/graphics/Shadow;->color:J

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    iget-wide v9, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    invoke-static {v11, v12, v9, v10, v3}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v30

    iget-wide v9, v0, Landroidx/compose/ui/graphics/Shadow;->offset:J

    const/16 v11, 0x20

    move-wide/from16 v35, v14

    shr-long v14, v9, v11

    long-to-int v12, v14

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    iget-wide v14, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    move/from16 v23, v4

    move-object/from16 v37, v5

    shr-long v4, v14, v11

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v12, v4, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    const-wide v32, 0xffffffffL

    and-long v9, v9, v32

    long-to-int v5, v9

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    and-long v9, v14, v32

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-static {v5, v9, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v9, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v9, v11

    and-long v4, v4, v32

    or-long v32, v9, v4

    iget v0, v0, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    invoke-static {v0, v1, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v34

    move-object/from16 v29, v8

    invoke-direct/range {v29 .. v34}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    if-nez v1, :cond_10

    iget-object v4, v7, Landroidx/compose/ui/text/SpanStyle;->platformStyle:Landroidx/compose/ui/text/PlatformSpanStyle;

    if-nez v4, :cond_10

    const/16 v30, 0x0

    goto :goto_5

    :cond_10
    if-nez v1, :cond_11

    sget-object v1, Landroidx/compose/ui/text/PlatformSpanStyle;->Default:Landroidx/compose/ui/text/PlatformSpanStyle;

    :cond_11
    move-object/from16 v30, v1

    :goto_5
    iget-object v1, v6, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    iget-object v4, v7, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v3, v1, v4}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    new-instance v4, Landroidx/compose/ui/text/style/BaselineShift;

    move/from16 v5, v23

    invoke-direct {v4, v5}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    move-object v12, v1

    move-wide/from16 v14, v35

    move-object/from16 v23, v4

    move-object/from16 v29, v8

    invoke-direct/range {v12 .. v31}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    sget v4, Landroidx/compose/ui/text/ParagraphStyleKt;->$r8$clinit:I

    new-instance v4, Landroidx/compose/ui/text/ParagraphStyle;

    move-object/from16 v5, v37

    iget-object v5, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v6, v5, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    new-instance v7, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v7, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    iget v6, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    new-instance v8, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v8, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    invoke-static {v3, v7, v8}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/style/TextAlign;

    iget v6, v6, Landroidx/compose/ui/text/style/TextAlign;->value:I

    new-instance v7, Landroidx/compose/ui/text/style/TextDirection;

    iget v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-direct {v7, v8}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    new-instance v8, Landroidx/compose/ui/text/style/TextDirection;

    iget v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    invoke-direct {v8, v9}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    invoke-static {v3, v7, v8}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/style/TextDirection;

    iget v7, v7, Landroidx/compose/ui/text/style/TextDirection;->value:I

    iget-wide v8, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    iget-wide v10, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    invoke-static {v8, v9, v10, v11, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v8

    iget-object v10, v5, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v10, :cond_12

    sget-object v10, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_12
    iget-object v11, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v11, :cond_13

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    :cond_13
    new-instance v12, Landroidx/compose/ui/text/style/TextIndent;

    iget-wide v13, v10, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    move-object/from16 v16, v1

    iget-wide v0, v11, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    invoke-static {v13, v14, v0, v1, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v0

    iget-wide v13, v10, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    iget-wide v10, v11, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    invoke-static {v13, v14, v10, v11, v3}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    move-result-wide v10

    invoke-direct {v12, v0, v1, v10, v11}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    iget-object v0, v5, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v1, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    const/4 v11, 0x0

    goto :goto_7

    :cond_14
    sget-object v10, Landroidx/compose/ui/text/PlatformParagraphStyle;->Default:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-nez v0, :cond_15

    move-object v0, v10

    :cond_15
    if-nez v1, :cond_16

    move-object v1, v10

    :cond_16
    iget-boolean v10, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    iget-boolean v11, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    if-ne v10, v11, :cond_17

    goto :goto_6

    :cond_17
    new-instance v13, Landroidx/compose/ui/text/PlatformParagraphStyle;

    new-instance v14, Landroidx/compose/ui/text/EmojiSupportMatch;

    iget v0, v0, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-direct {v14, v0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    new-instance v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    iget v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    invoke-static {v3, v14, v0}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v3, v1, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v13, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    move-object v0, v13

    :goto_6
    move-object v11, v0

    :goto_7
    iget-object v0, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    iget-object v1, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    new-instance v1, Landroidx/compose/ui/text/style/LineBreak;

    iget v10, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-direct {v1, v10}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    new-instance v10, Landroidx/compose/ui/text/style/LineBreak;

    iget v13, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    invoke-direct {v10, v13}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    invoke-static {v3, v1, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/LineBreak;

    iget v13, v1, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    new-instance v1, Landroidx/compose/ui/text/style/Hyphens;

    iget v10, v5, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-direct {v1, v10}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    new-instance v10, Landroidx/compose/ui/text/style/Hyphens;

    iget v14, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    invoke-direct {v10, v14}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    invoke-static {v3, v1, v10}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/style/Hyphens;

    iget v14, v1, Landroidx/compose/ui/text/style/Hyphens;->value:I

    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/compose/ui/text/style/TextMotion;

    move-object v5, v4

    move-object v10, v12

    move-object v12, v0

    invoke-direct/range {v5 .. v15}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$overrideLabelTextStyleColor:Z

    iget-object v3, v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;->$labelTextStyleColor:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_18

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v2, Landroidx/compose/ui/graphics/Color;->value:J

    const/16 v17, 0x0

    const v18, 0xfffffe

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v18}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    :cond_18
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

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
