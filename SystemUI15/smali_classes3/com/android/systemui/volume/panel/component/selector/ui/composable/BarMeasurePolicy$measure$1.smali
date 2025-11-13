.class final Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;
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
.field final synthetic $buttonsBackgroundPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $buttonsPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelsPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$buttonsBackgroundPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$buttonsPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$labelsPlaceable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$buttonsBackgroundPlaceable:Landroidx/compose/ui/layout/Placeable;

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->ButtonsBackground:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-virtual {v1}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->getZIndex()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$indicatorPlaceable:Landroidx/compose/ui/layout/Placeable;

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Indicator:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-virtual {v1}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->getZIndex()F

    move-result v1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$buttonsPlaceable:Landroidx/compose/ui/layout/Placeable;

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Buttons:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-virtual {v1}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->getZIndex()F

    move-result v1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$labelsPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/selector/ui/composable/BarMeasurePolicy$measure$1;->$buttonsBackgroundPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    sget-object v1, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->Labels:Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;

    invoke-virtual {v1}, Lcom/android/systemui/volume/panel/component/selector/ui/composable/RadioButtonBarComponent;->getZIndex()F

    move-result v1

    invoke-virtual {p1, v0, v2, p0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
