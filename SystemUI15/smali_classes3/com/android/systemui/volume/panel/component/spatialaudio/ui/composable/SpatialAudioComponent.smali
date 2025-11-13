.class public final Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;


# instance fields
.field public final popup:Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioPopup;

.field public final viewModel:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;->viewModel:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;->popup:Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioPopup;

    return-void
.end method


# virtual methods
.method public final Content(Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3ac58045

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;->viewModel:Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;

    iget-object v1, v0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;->shouldUsePopup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, p3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v3, 0x37ab55d7

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_2

    :cond_0
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/spatial/ui/viewmodel/SpatialAudioViewModel;->spatialAudioButton:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;

    new-instance v2, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$buttonComponent$1$1;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;->popup:Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioPopup;

    invoke-direct {v2, v3}, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$buttonComponent$1$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    new-instance v2, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$buttonComponent$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$buttonComponent$1$2;-><init>(Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;)V

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v0, p4, 0x7e

    invoke-interface {v3, p1, p2, p3, v0}, Lcom/android/systemui/volume/panel/ui/composable/ComposeVolumePanelUiComponent;->Content(Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent$Content$2;-><init>(Lcom/android/systemui/volume/panel/component/spatialaudio/ui/composable/SpatialAudioComponent;Lcom/android/systemui/volume/panel/ui/composable/VolumePanelComposeScope;Landroidx/compose/ui/Modifier;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
