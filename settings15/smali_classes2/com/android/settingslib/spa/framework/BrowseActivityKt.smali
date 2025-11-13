.class public abstract Lcom/android/settingslib/spa/framework/BrowseActivityKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final BrowseContent(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroid/content/Intent;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string v0, "sppRepository"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPageEnabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1719666a

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/navigation/Navigator;

    invoke-static {v1, p3}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v1

    sget-object v2, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x21de76b3

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p3}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v2

    sget-object v3, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    const v4, -0x223c63a6

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_1

    new-instance v4, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v4, v1, v2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;-><init>(Landroidx/navigation/NavHostController;Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v4, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    const v2, -0x19e0f4d6

    invoke-static {v2, v0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, p3, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$BrowseContent$2;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;Lkotlin/jvm/functions/Function1;Landroid/content/Intent;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final access$InitialDestination(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Landroid/content/Intent;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x49740e6e

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$destinationNavigated$1;->INSTANCE:Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$destinationNavigated$1;

    const/16 v4, 0xc08

    const/4 v5, 0x6

    const/4 v1, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$1;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Landroid/content/Intent;Ljava/lang/String;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    goto :goto_3

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    sget v0, Lcom/android/settingslib/spa/framework/util/SpaIntentKt;->$r8$clinit:I

    const-string v0, "spaActivityDestination"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, p2

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$2;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Landroid/content/Intent;Ljava/lang/String;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget v1, Lcom/android/settingslib/spa/framework/util/SpaIntentKt;->$r8$clinit:I

    const-string v1, "highlightEntry"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_5

    sget v0, Lcom/android/settingslib/spa/framework/util/SpaIntentKt;->$r8$clinit:I

    const-string v0, "sessionSource"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v4, v0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v7, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$3;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$4;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$InitialDestination$4;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Landroid/content/Intent;Ljava/lang/String;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    :goto_3
    return-void
.end method

.method public static final access$NavContent(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Ljava/util/Collection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x74eae88c    # -2.8714E-32f

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;->navController:Landroidx/navigation/NavHostController;

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    new-instance v13, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;

    invoke-direct {v13, v1, v2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;-><init>(Ljava/util/Collection;Lkotlin/jvm/functions/Function3;)V

    const/16 v16, 0x0

    const/16 v17, 0x3f8

    const-string v4, "NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x1b8

    move-object v14, v15

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-static/range {v3 .. v17}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$2;

    move/from16 v5, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$2;-><init>(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Ljava/util/Collection;Lkotlin/jvm/functions/Function3;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method
