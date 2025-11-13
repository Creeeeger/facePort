.class public abstract Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final LabsHome(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2c4e61f6

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$LabsHomeKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$LabsHomeKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$LabsHomeKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v4, v0, 0x1b0

    const/4 v5, 0x0

    const-string v1, "Labs"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ActionBarKt;->SecTitle(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$LabsHome$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$LabsHome$1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final access$ActionLabs(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x1e29c44d

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-ne v2, v1, :cond_2

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    const p0, 0x58ab7502

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_3
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    :cond_8
    const-class v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {p0, v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "Actions"

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSubHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const v2, 0x3f541182

    invoke-static {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->ListItemContainer(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ActionLabs$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final access$ChromecastLabs(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x45e206ea

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-ne v2, v1, :cond_2

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    const p0, 0x58ab7502

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_3
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    :cond_8
    const-class v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {p0, v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "Chromecast Labs"

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSubHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ChromecastLabs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ChromecastLabs$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const v2, 0x208b19f

    invoke-static {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->ListItemContainer(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ChromecastLabs$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$ChromecastLabs$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final access$DebugLabs(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x4eebee54

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-ne v2, v1, :cond_2

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    const p0, 0x58ab7502

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_3
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    :cond_8
    const-class v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {p0, v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "Debug Labs"

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSubHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const v2, 0x1d80c9d7

    invoke-static {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->ListItemContainer(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$DebugLabs$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final access$Labs(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0xfdee1d

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-ne v2, v1, :cond_2

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    const p0, 0x58ab7502

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_3
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    :cond_8
    const-class v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {p0, v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "Labs"

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSubHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$Labs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$Labs$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const v2, 0x2c67aad8

    invoke-static {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->ListItemContainer(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$Labs$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$Labs$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final access$SmartThingsLabs(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x44ed13cf

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p2, 0x2

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-ne v2, v1, :cond_2

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_4
    :goto_2
    if-eqz v2, :cond_a

    const p0, 0x58ab7502

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v0, p0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_3
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    :cond_8
    const-class v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {p0, v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v0, "SmartThings Labs"

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecSubHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$SmartThingsLabs$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$SmartThingsLabs$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;)V

    const v2, -0x7c3e67e4

    invoke-static {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->ListItemContainer(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$SmartThingsLabs$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/media/mediaoutput/compose/LabsHomeKt$SmartThingsLabs$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
