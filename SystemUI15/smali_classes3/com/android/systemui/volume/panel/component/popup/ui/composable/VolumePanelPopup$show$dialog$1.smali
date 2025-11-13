.class final Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $title:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->this$0:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->$title:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->this$0:Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->$title:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup$show$dialog$1;->$content:Lkotlin/jvm/functions/Function3;

    const/16 v5, 0x1008

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;->access$PopupComposable(Lcom/android/systemui/volume/panel/component/popup/ui/composable/VolumePanelPopup;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
