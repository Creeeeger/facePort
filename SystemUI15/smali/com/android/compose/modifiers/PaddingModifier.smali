.class public final Lcom/android/compose/modifiers/PaddingModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field public final bottom:Lkotlin/jvm/functions/Function1;

.field public final end:Lkotlin/jvm/functions/Function1;

.field public final rtlAware:Z

.field public final start:Lkotlin/jvm/functions/Function1;

.field public final top:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p6}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/compose/modifiers/PaddingModifier;->start:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/compose/modifiers/PaddingModifier;->top:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/compose/modifiers/PaddingModifier;->end:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/compose/modifiers/PaddingModifier;->bottom:Lkotlin/jvm/functions/Function1;

    iput-boolean p5, p0, Lcom/android/compose/modifiers/PaddingModifier;->rtlAware:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/compose/modifiers/PaddingModifier;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/compose/modifiers/PaddingModifier;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->start:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Lcom/android/compose/modifiers/PaddingModifier;->start:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->top:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Lcom/android/compose/modifiers/PaddingModifier;->top:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->end:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Lcom/android/compose/modifiers/PaddingModifier;->end:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->bottom:Lkotlin/jvm/functions/Function1;

    iget-object v2, p1, Lcom/android/compose/modifiers/PaddingModifier;->bottom:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/compose/modifiers/PaddingModifier;->rtlAware:Z

    iget-boolean p1, p1, Lcom/android/compose/modifiers/PaddingModifier;->rtlAware:Z

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier;->start:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->top:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier;->end:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->bottom:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/android/compose/modifiers/PaddingModifier;->rtlAware:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier;->start:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/compose/modifiers/PaddingModifier;->top:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/compose/modifiers/PaddingModifier;->end:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/compose/modifiers/PaddingModifier;->bottom:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    neg-int v4, v2

    neg-int v5, v3

    invoke-static {v4, v5, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget v4, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    add-int/2addr v4, v2

    invoke-static {v4, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    iget v4, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr v4, v3

    invoke-static {v4, p3, p4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result p3

    new-instance p4, Lcom/android/compose/modifiers/PaddingModifier$measure$1;

    invoke-direct {p4, p0, p2, v0, v1}, Lcom/android/compose/modifiers/PaddingModifier$measure$1;-><init>(Lcom/android/compose/modifiers/PaddingModifier;Landroidx/compose/ui/layout/Placeable;II)V

    invoke-static {p1, v2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
