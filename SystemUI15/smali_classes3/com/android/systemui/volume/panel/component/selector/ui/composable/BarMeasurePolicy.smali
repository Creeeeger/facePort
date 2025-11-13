.class public final Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final buttonsCount:I

.field public final onTargetIndicatorOffsetMeasured:Lkotlin/jvm/functions/Function1;

.field public final selectedIndex:I

.field public final spacingPx:I


# direct methods
.method public constructor <init>(IIILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->buttonsCount:I

    iput p2, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->selectedIndex:I

    iput p3, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->spacingPx:I

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->onTargetIndicatorOffsetMeasured:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0xe

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_0
    const-string v5, "Collection contains no element matching the predicate."

    if-ge v4, v2, :cond_7

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Buttons:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    if-ne v7, v8, :cond_6

    invoke-interface {v6, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Labels:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    if-ne v8, v9, :cond_4

    invoke-interface {v7, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->ButtonsBackground:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    if-ne v7, v8, :cond_2

    iget v1, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v1, v1, v4, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->buttonsCount:I

    add-int/lit8 v6, v4, -0x1

    iget v7, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->spacingPx:I

    mul-int/2addr v6, v7

    iget v8, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v8, v6

    div-int/2addr v8, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Indicator:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    if-ne v9, v10, :cond_0

    iget p2, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v8, v8, p2, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v3

    invoke-interface {v6, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget v3, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->selectedIndex:I

    mul-int/2addr v8, v3

    mul-int/2addr v7, v3

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy;->onTargetIndicatorOffsetMeasured:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    iget p3, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    iget p4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    add-int/2addr p3, p4

    new-instance p4, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;

    invoke-direct {p4, v1, p2, v2, v0}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p0, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
