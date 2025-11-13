.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;
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
.field final synthetic $contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field final synthetic $onEditDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $removeButtonEnabled$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $selectedKey:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $toolbarSize$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$onEditDone:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$selectedKey:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p6, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p7, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$toolbarSize$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$removeButtonEnabled$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$1;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$selectedKey:Landroidx/compose/runtime/State;

    iget-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    invoke-direct {v1, p1, p3, v2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$1;-><init>(Landroidx/compose/runtime/State;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x7f515a27

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$toolbarSize$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p3, :cond_0

    new-instance p2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$2$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const p2, 0x7f515a6e

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$removeButtonCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_1

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$3$1;

    invoke-direct {v3, p2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$onOpenWidgetPicker:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;->$onEditDone:Lkotlin/jvm/functions/Function0;

    const/16 v7, 0xd80

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->access$Toolbar(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
