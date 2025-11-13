.class final Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$1$1;
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
.field final synthetic $gravity$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $screenWidth:F


# direct methods
.method public constructor <init>(FLandroidx/compose/runtime/MutableIntState;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$1$1;->$screenWidth:F

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$1$1;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$1$1;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    sget-object v1, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;->Companion:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$Companion;

    iget p0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$1$1;->$screenWidth:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$Companion;->calculateGravity(Landroidx/compose/ui/layout/LayoutCoordinates;F)I

    move-result p0

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
