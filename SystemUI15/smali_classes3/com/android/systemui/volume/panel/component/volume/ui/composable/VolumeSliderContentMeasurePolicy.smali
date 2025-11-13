.class public final Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final isEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentMeasurePolicy;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentComponent;->Label:Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentComponent;

    if-ne v4, v5, :cond_6

    invoke-interface {v3, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentMeasurePolicy;->isEnabled:Z

    if-eqz p0, :cond_0

    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_1

    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    :goto_1
    if-eqz p0, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_2
    move v6, p0

    goto :goto_3

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    goto :goto_2

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    move v3, v1

    :goto_4
    const/4 v4, 0x0

    if-ge v3, p0, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentComponent;->DisabledMessage:Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentComponent;

    if-ne v7, v8, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move-object v5, v4

    :goto_5
    move-object p0, v5

    check-cast p0, Landroidx/compose/ui/layout/Measurable;

    if-eqz p0, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v9, 0xd

    move-wide v3, p3

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide p2

    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    :cond_4
    iget p0, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    if-eqz v4, :cond_5

    iget v1, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    :cond_5
    add-int/2addr p0, v1

    new-instance p2, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentMeasurePolicy$measure$1;

    invoke-direct {p2, v0, v4}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderContentMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, v2, p0, p2}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
