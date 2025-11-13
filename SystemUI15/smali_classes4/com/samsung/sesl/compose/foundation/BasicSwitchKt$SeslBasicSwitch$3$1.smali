.class public final Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic $fraction$delegate:Landroidx/compose/runtime/State;

.field public final synthetic $width$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;->$width$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;->$fraction$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Collection contains no element matching the predicate."

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/samsung/sesl/compose/foundation/SwitchComponents;->THUMB:Lcom/samsung/sesl/compose/foundation/SwitchComponents;

    if-ne v3, v4, :cond_0

    invoke-interface {v1, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/samsung/sesl/compose/foundation/SwitchComponents;->TRACK:Lcom/samsung/sesl/compose/foundation/SwitchComponents;

    if-ne v1, v3, :cond_1

    invoke-interface {v0, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    iget p2, v6, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;->$width$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast p3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget p2, v6, Landroidx/compose/ui/layout/Placeable;->height:I

    iget p3, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget p3, v6, Landroidx/compose/ui/layout/Placeable;->width:I

    new-instance p4, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1$1;

    iget-object v9, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;->$fraction$delegate:Landroidx/compose/runtime/State;

    iget-object v10, p0, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;->$width$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v5, p4

    move v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableIntState;)V

    invoke-static {p1, p3, p2, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
