.class final Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "invoke"
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
.field final synthetic $borderColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $boxColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $checkCache:Landroidx/compose/material3/CheckDrawingCache;

.field final synthetic $checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $checkColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $checkDrawFraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/CheckDrawingCache;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$boxColor:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$borderColor:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkColor:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material3/CheckDrawingCache;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget v1, Landroidx/compose/material3/CheckboxKt;->StrokeWidth:F

    invoke-interface {v12, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v13, v1

    iget-object v1, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$boxColor:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v1, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object v1, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$borderColor:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v14, v1, Landroidx/compose/ui/graphics/Color;->value:J

    sget v1, Landroidx/compose/material3/CheckboxKt;->RadiusSize:F

    invoke-interface {v12, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v13, v1

    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, v16

    move v4, v13

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v8

    invoke-static {v9, v10, v14, v15}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    sget-object v17, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-static {v8, v8}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    invoke-static {v11, v11}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v14

    const-wide/16 v4, 0x0

    const/16 v11, 0xe2

    move-object v1, v12

    move-wide v2, v9

    move v10, v6

    move-wide v6, v7

    move-wide v8, v14

    move v14, v10

    move-object/from16 v10, v17

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    goto :goto_0

    :cond_0
    invoke-static {v13, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v13

    sub-float v1, v8, v1

    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v18

    sub-float v1, v11, v13

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v1}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v20

    const/16 v22, 0xe0

    move-object v1, v12

    move v7, v2

    move-wide v2, v9

    move v9, v6

    move v10, v7

    move-wide/from16 v6, v18

    move/from16 v18, v8

    move-wide/from16 v8, v20

    move v0, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move/from16 v11, v22

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    sub-float v8, v18, v13

    invoke-static {v8, v8}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v6

    sub-float v11, v17, v0

    invoke-static {v11, v11}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v8

    const/16 v11, 0xe0

    move-object v1, v12

    move-wide v2, v14

    move-object/from16 v10, v16

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkColor:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v1, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object v1, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v0, v0, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material3/CheckDrawingCache;

    new-instance v11, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v6, 0x2

    const/16 v8, 0x1a

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move v4, v13

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v4

    const v6, 0x3f333333    # 0.7f

    invoke-static {v6, v5, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    invoke-static {v5, v5, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v8, v5, v2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    iget-object v5, v0, Landroidx/compose/material3/CheckDrawingCache;->checkPath:Landroidx/compose/ui/graphics/Path;

    check-cast v5, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v3

    mul-float/2addr v7, v3

    iget-object v8, v0, Landroidx/compose/material3/CheckDrawingCache;->checkPath:Landroidx/compose/ui/graphics/Path;

    move-object v13, v8

    check-cast v13, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v14, v13, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v14, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float/2addr v4, v3

    mul-float/2addr v6, v3

    iget-object v5, v13, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v3

    mul-float/2addr v3, v2

    iget-object v2, v13, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Landroidx/compose/material3/CheckDrawingCache;->pathMeasure:Landroidx/compose/ui/graphics/AndroidPathMeasure;

    iget-object v3, v2, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    if-eqz v8, :cond_2

    instance-of v4, v8, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v4, :cond_1

    check-cast v8, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v4, v8, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to obtain android.graphics.Path"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v3, v0, Landroidx/compose/material3/CheckDrawingCache;->pathToDraw:Landroidx/compose/ui/graphics/Path;

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    iget-object v4, v2, Landroidx/compose/ui/graphics/AndroidPathMeasure;->internalPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    mul-float/2addr v4, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroidx/compose/ui/graphics/AndroidPathMeasure;->getSegment(FFLandroidx/compose/ui/graphics/Path;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v1, v0, Landroidx/compose/material3/CheckDrawingCache;->pathToDraw:Landroidx/compose/ui/graphics/Path;

    const/4 v7, 0x3

    move-object v0, v12

    move-wide v2, v9

    move-object v5, v11

    invoke-interface/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
