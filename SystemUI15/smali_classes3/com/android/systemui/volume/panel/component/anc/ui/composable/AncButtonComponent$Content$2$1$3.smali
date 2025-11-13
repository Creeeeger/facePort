.class final Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent$Content$2$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $gravity$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent$Content$2$1$3;->this$0:Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent$Content$2$1$3;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent$Content$2$1$3;->this$0:Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent;->ancPopup:Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncButtonComponent$Content$2$1$3;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result p0

    iget-object v1, v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_ANC_POPUP_SHOWN:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    or-int/lit8 p0, p0, 0x50

    new-instance v1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$show$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$show$1;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;)V

    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, -0x52853372

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$show$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup$show$2;-><init>(Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x122cb253

    invoke-direct {v3, v5, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/AncPopup;->volumePanelPopup:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;->show(Lcom/android/systemui/animation/Expandable;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
