.class public abstract Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final TvScreen(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x6

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x16d76ede

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, p4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p4, 0xe

    if-nez v3, :cond_2

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v3, p4

    goto :goto_1

    :cond_2
    move v3, p4

    :goto_1
    and-int/2addr v0, p5

    if-eqz v0, :cond_3

    or-int/lit8 v3, v3, 0x10

    :cond_3
    and-int/2addr v1, p5

    if-eqz v1, :cond_4

    or-int/lit16 v3, v3, 0x80

    :cond_4
    and-int/lit8 v4, p5, 0x6

    if-ne v4, v2, :cond_6

    and-int/lit16 v3, v3, 0x2db

    const/16 v4, 0x92

    if-ne v3, v4, :cond_6

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_2
    move-object v5, p1

    move-object v6, p2

    goto/16 :goto_c

    :cond_6
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_b

    :cond_8
    :goto_4
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v4, 0x58ab7502

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p1

    if-eqz p1, :cond_d

    instance-of v0, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_5

    :cond_9
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_5
    :try_start_0
    sget v7, Lkotlin/Result;->$r8$clinit:I

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v7

    sget v8, Lkotlin/Result;->$r8$clinit:I

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v7}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v7, v8

    :goto_6
    invoke-static {v7}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    instance-of v8, v7, Lkotlin/Result$Failure;

    if-eqz v8, :cond_b

    move-object v7, v5

    :cond_b
    check-cast v7, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v7, :cond_c

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v7

    :cond_c
    const-class v8, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-static {p1, v8, v7, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    if-eqz v1, :cond_14

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p2

    if-eqz p2, :cond_13

    instance-of v0, p2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_f

    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    goto :goto_8

    :cond_f
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_8
    :try_start_1
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    instance-of v3, v1, Lkotlin/Result$Failure;

    if-eqz v3, :cond_11

    goto :goto_a

    :cond_11
    move-object v5, v1

    :goto_a
    check-cast v5, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v5, :cond_12

    invoke-static {p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v5

    :cond_12
    const-class v1, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    invoke-static {p2, v1, v5, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast p2, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    goto :goto_b

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_b
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;)V

    const v1, 0x5f1ba20d

    invoke-static {v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v0, p3, v2}, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarScaffoldKt;->SnackbarScaffold(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto/16 :goto_2

    :goto_c
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_15

    new-instance p2, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$2;

    move-object v3, p2

    move-object v4, p0

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/TvScreenKt$TvScreen$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;II)V

    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
