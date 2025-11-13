.class final Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;
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
.field final synthetic $animatedBottomPadding:I

.field final synthetic $animatedTopPadding:I

.field final synthetic $animationProgress:F

.field final synthetic $constraints:J

.field final synthetic $contentPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $currentBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $firstBackEvent:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $height:I

.field final synthetic $inputFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $predictiveBackMultiplier:F

.field final synthetic $surfacePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $topPadding:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/MeasureScope;JLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "J",
            "Landroidx/compose/runtime/MutableState;",
            "FF",
            "Landroidx/compose/runtime/MutableState;",
            "I",
            "Landroidx/compose/ui/layout/Placeable;",
            "I",
            "Landroidx/compose/ui/layout/Placeable;",
            "I",
            "Landroidx/compose/ui/layout/Placeable;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput-wide p2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$constraints:J

    iput-object p4, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animationProgress:F

    iput p6, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$predictiveBackMultiplier:F

    iput-object p7, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    iput p8, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$height:I

    iput-object p9, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$surfacePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animatedTopPadding:I

    iput-object p11, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$inputFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p12, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$topPadding:I

    iput-object p13, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$contentPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p14, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animatedBottomPadding:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    sget v1, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarPredictiveBackMinMargin:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$constraints:J

    iget-object v3, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/BackEventCompat;

    iget-object v4, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iget v5, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animationProgress:F

    iget v6, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$predictiveBackMultiplier:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    cmpg-float v9, v6, v7

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v3, Landroidx/activity/BackEventCompat;->swipeEdge:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v3, :cond_1

    move v3, v10

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v11, :cond_2

    move v9, v10

    :cond_2
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    int-to-float v2, v10

    sub-float/2addr v2, v5

    mul-float/2addr v2, v1

    mul-float/2addr v2, v6

    int-to-float v1, v3

    mul-float/2addr v2, v1

    int-to-float v1, v9

    mul-float/2addr v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v8

    :goto_2
    iget-wide v2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$constraints:J

    iget-object v4, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$currentBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/activity/BackEventCompat;

    iget-object v5, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$firstBackEvent:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/activity/BackEventCompat;

    iget v6, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$height:I

    iget-object v9, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    sget v10, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarPredictiveBackMaxOffsetY:F

    invoke-interface {v9, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v9

    iget v10, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$predictiveBackMultiplier:F

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    cmpg-float v11, v10, v7

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, v4, Landroidx/activity/BackEventCompat;->touchY:F

    iget v5, v5, Landroidx/activity/BackEventCompat;->touchY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v5, v8, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FII)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    mul-float/2addr v0, v2

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$surfacePlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animatedTopPadding:I

    add-int/2addr v2, v8

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$inputFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$topPadding:I

    add-int/2addr v2, v8

    invoke-virtual {p1, v0, v1, v2, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    iget-object v0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$contentPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_6

    iget v2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$topPadding:I

    add-int/2addr v8, v2

    iget-object v2, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$inputFieldPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr v8, v2

    iget p0, p0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarLayout$2$1$1;->$animatedBottomPadding:I

    add-int/2addr v8, p0

    invoke-virtual {p1, v0, v1, v8, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
