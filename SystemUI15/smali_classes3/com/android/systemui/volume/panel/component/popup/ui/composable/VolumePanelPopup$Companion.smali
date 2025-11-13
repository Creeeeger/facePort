.class public final Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$Companion;-><init>()V

    return-void
.end method

.method public static calculateGravity(Landroidx/compose/ui/layout/LayoutCoordinates;F)I
    .locals 4

    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    add-float/2addr v0, v2

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 v1, 0x5

    :cond_1
    :goto_0
    return v1
.end method
