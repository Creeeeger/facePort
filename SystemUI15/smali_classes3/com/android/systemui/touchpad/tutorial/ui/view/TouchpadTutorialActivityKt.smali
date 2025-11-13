.class public abstract Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final BackGestureTutorialScreen(ILandroidx/compose/runtime/Composer;)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x26151dc3

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/touchpad/tutorial/ui/GestureViewModelFactory;

    invoke-direct {v0}, Lcom/android/systemui/touchpad/tutorial/ui/GestureViewModelFactory;-><init>()V

    const v1, 0x671a9c9b

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_1
    const-class v3, Lcom/android/systemui/touchpad/tutorial/ui/BackGestureTutorialViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    invoke-static {v3, v1, v0, v2, p1}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/touchpad/tutorial/ui/BackGestureTutorialViewModel;

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$BackGestureTutorialScreen$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$BackGestureTutorialScreen$1;-><init>(I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final HomeGestureTutorialScreen(ILandroidx/compose/runtime/Composer;)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x2488a345

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/touchpad/tutorial/ui/GestureViewModelFactory;

    invoke-direct {v0}, Lcom/android/systemui/touchpad/tutorial/ui/GestureViewModelFactory;-><init>()V

    const v1, 0x671a9c9b

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_1
    const-class v3, Lcom/android/systemui/touchpad/tutorial/ui/HomeGestureTutorialViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    invoke-static {v3, v1, v0, v2, p1}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/touchpad/tutorial/ui/HomeGestureTutorialViewModel;

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$HomeGestureTutorialScreen$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$HomeGestureTutorialScreen$1;-><init>(I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final TouchpadTutorialScreen(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x18dbebd3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x671a9c9b

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    const-class v2, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-static {v2, v0, p0, v1, p2}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    const/16 v2, 0x38

    iget-object v3, v0, Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;->screen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3, v1, p2, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/android/systemui/touchpad/tutorial/ui/Screen;->TUTORIAL_SELECTION:Lcom/android/systemui/touchpad/tutorial/ui/Screen;

    if-ne v1, v2, :cond_1

    const v1, 0x175135fd

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v1, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$1;-><init>(Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;)V

    new-instance v2, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$2;-><init>(Lcom/android/systemui/touchpad/tutorial/ui/TouchpadTutorialViewModel;)V

    sget-object v3, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$3;->INSTANCE:Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$3;

    shl-int/lit8 v0, p3, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v5, v0, 0x180

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/touchpad/tutorial/ui/view/TutorialSelectionScreenKt;->TutorialSelectionScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/touchpad/tutorial/ui/Screen;->BACK_GESTURE:Lcom/android/systemui/touchpad/tutorial/ui/Screen;

    if-ne v1, v0, :cond_2

    const v0, 0x17513727

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v6, p2}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt;->BackGestureTutorialScreen(ILandroidx/compose/runtime/Composer;)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/touchpad/tutorial/ui/Screen;->HOME_GESTURE:Lcom/android/systemui/touchpad/tutorial/ui/Screen;

    if-ne v1, v0, :cond_3

    const v0, 0x1751375b

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v6, p2}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt;->HomeGestureTutorialScreen(ILandroidx/compose/runtime/Composer;)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_3
    const v0, 0x1751377c

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/touchpad/tutorial/ui/view/TouchpadTutorialActivityKt$TouchpadTutorialScreen$4;-><init>(Landroidx/lifecycle/ViewModelProvider$Factory;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
