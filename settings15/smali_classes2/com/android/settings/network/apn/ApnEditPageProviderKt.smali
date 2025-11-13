.class public abstract Lcom/android/settings/network/apn/ApnEditPageProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ApnPage(Lcom/android/settings/network/apn/ApnData;Landroidx/compose/runtime/MutableState;Landroid/net/Uri;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "apnDataInit"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apnDataCur"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriInit"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6f1f2917

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    invoke-static {v10}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/Composer;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {v10}, Landroidx/compose/ui/res/Resources_androidKt;->resources(Landroidx/compose/runtime/Composer;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const v0, 0x69077017

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-boolean v1, v7, Lcom/android/settings/network/apn/ApnData;->newApn:Z

    if-eqz v1, :cond_1

    const v1, 0x690770c1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x7f14033e

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    const v1, 0x690770ec

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x7f140342

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v6, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object v7, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lcom/android/settings/network/apn/ApnData;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const v0, -0x62dd2455

    invoke-static {v0, v7, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    new-instance v6, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;

    move-object v0, v6

    move-object v1, v15

    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object v11, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    const v0, 0x7e241004

    invoke-static {v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v4, 0x1b0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v3, v10

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$3;

    move-object/from16 v2, p0

    move/from16 v3, p4

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/android/settings/network/apn/ApnEditPageProviderKt$ApnPage$3;-><init>(Lcom/android/settings/network/apn/ApnData;Landroidx/compose/runtime/MutableState;Landroid/net/Uri;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
