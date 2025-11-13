.class final Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1;
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
.field final synthetic this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p3, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1;

    iget-object v0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, v1}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p3, v0, :cond_0

    sget-object p3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object p3

    :cond_0
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v4, p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const p3, 0x58a08e30

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$createNewVolumePanelDialog$1;->this$0:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p3, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->viewModelFactory:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;

    new-instance p3, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->daggerComponentFactory:Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;

    iget-object v6, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;-><init>(Landroid/content/res/Resources;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;)V

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, p3

    :cond_2
    check-cast v2, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 p0, 0x8

    const/4 p1, 0x2

    invoke-static {v2, v1, p2, p0, p1}, Lcom/android/systemui/volume/panel/ui/composable/VolumePanelRootKt;->VolumePanelRoot(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
