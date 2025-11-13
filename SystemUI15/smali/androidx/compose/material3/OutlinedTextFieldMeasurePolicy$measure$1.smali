.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $containerPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $totalHeight:I

.field final synthetic $trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;


# direct methods
.method public constructor <init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iput p2, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$width:I

    iput-object p3, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p8, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p9, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p11, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iput-object p13, p0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v2, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$totalHeight:I

    iget v3, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$width:I

    iget-object v4, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$leadingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$trailingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$prefixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v7, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$suffixPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v8, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$textFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v10, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$placeholderPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$containerPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v12, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$supportingPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object v13, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iget v14, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    iget-object v15, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v15}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v15

    move/from16 p1, v3

    iget-object v3, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget-object v0, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$measure$1;->this$0:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    iget-object v0, v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    sget v16, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    sget-object v16, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    const-wide/16 v7, 0x0

    invoke-static {v1, v11, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    invoke-static {v12}, Landroidx/compose/material3/internal/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    sub-int/2addr v2, v7

    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v7

    mul-float/2addr v7, v15

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    mul-float/2addr v0, v15

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    sget v3, Landroidx/compose/material3/internal/TextFieldImplKt;->HorizontalIconPadding:F

    mul-float/2addr v3, v15

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v8, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-virtual {v15, v8, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v8

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v15, v8, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_0
    iget-boolean v8, v13, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    if-eqz v9, :cond_3

    if-eqz v8, :cond_1

    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v15, v9, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-virtual {v13, v15, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v13

    goto :goto_0

    :cond_1
    move v13, v7

    :goto_0
    iget v15, v9, Landroidx/compose/ui/layout/Placeable;->height:I

    div-int/lit8 v15, v15, 0x2

    neg-int v15, v15

    invoke-static {v14, v13, v15}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FII)I

    move-result v13

    if-nez v4, :cond_2

    move v3, v11

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v3

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v14

    mul-float/2addr v3, v15

    :goto_1
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v9, v3, v13, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v8, v2, v7, v9, v6}, Landroidx/compose/material3/OutlinedTextFieldKt;->place$calculateVerticalPosition(ZIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    invoke-virtual {v1, v6, v0, v3, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_4
    invoke-static {v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-static {v6}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    add-int/2addr v3, v0

    move-object/from16 v0, v17

    invoke-static {v8, v2, v7, v9, v0}, Landroidx/compose/material3/OutlinedTextFieldKt;->place$calculateVerticalPosition(ZIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    if-eqz v10, :cond_5

    invoke-static {v8, v2, v7, v9, v10}, Landroidx/compose/material3/OutlinedTextFieldKt;->place$calculateVerticalPosition(ZIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    invoke-virtual {v1, v10, v3, v0, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_5
    if-eqz v16, :cond_6

    invoke-static {v5}, Landroidx/compose/material3/internal/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    sub-int v3, p1, v0

    move-object/from16 v0, v16

    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v3, v4

    invoke-static {v8, v2, v7, v9, v0}, Landroidx/compose/material3/OutlinedTextFieldKt;->place$calculateVerticalPosition(ZIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_6
    if-eqz v5, :cond_7

    iget v0, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int v3, p1, v0

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget v4, v5, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-virtual {v0, v4, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    move-result v0

    invoke-virtual {v1, v5, v3, v0, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_7
    if-eqz v12, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v1, v12, v0, v2, v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
