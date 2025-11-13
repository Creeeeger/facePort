.class public abstract Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final DisposableBroadcastReceiverAsUser(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    const-string v2, "intentFilter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "userHandle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onReceive"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x56428f73

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverAsUserFlowKt;->broadcastReceiverAsUserFlow(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v12

    sget-object v2, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/lifecycle/LifecycleOwner;

    const v2, 0x2de72b6c

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v2, v10, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/4 v14, 0x0

    const/16 v3, 0x100

    if-le v2, v3, :cond_0

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    and-int/lit16 v2, v10, 0x180

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v14

    :goto_0
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_4

    :cond_3
    new-instance v15, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt$DisposableBroadcastReceiverAsUser$1$1;

    const-class v5, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v6, "suspendConversion0"

    const/4 v3, 0x2

    const-string v7, "DisposableBroadcastReceiverAsUser$suspendConversion0(Lkotlin/jvm/functions/Function1;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v15

    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v13, v3}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt$DisposableBroadcastReceiverAsUser$2;

    invoke-direct {v3, v0, v1, v9, v10}, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt$DisposableBroadcastReceiverAsUser$2;-><init>(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;I)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
