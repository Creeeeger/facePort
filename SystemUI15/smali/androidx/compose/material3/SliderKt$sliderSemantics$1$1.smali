.class final Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;
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
.field final synthetic $state:Landroidx/compose/material3/SliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v0, v0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget-object v1, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v1, Lkotlin/ranges/ClosedFloatRange;

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget v0, v0, Landroidx/compose/material3/SliderState;->steps:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    move v4, p1

    move v5, v4

    move v3, v2

    :goto_0
    iget-object v6, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v6, v6, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v6, Lkotlin/ranges/ClosedFloatRange;

    iget v6, v6, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v7, v7, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v7, Lkotlin/ranges/ClosedFloatRange;

    iget v7, v7, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    int-to-float v8, v3

    iget-object v9, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget v9, v9, Landroidx/compose/material3/SliderState;->steps:I

    add-int/2addr v9, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v6, v7, v8}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    sub-float v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v5, v6

    :cond_0
    if-eq v3, v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v5

    :cond_2
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v2, v0, Landroidx/compose/material3/SliderState;->onValueChange:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Landroidx/compose/material3/SliderState;->setValue(F)V

    :goto_1
    iget-object p0, p0, Landroidx/compose/material3/SliderKt$sliderSemantics$1$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
