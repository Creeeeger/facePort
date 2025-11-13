.class public abstract Lcom/android/settings/network/apn/ApnTypeCheckBoxKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ApnTypeCheckBox(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v4, "apnData"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onTypeChanged"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onMmsSelectedChanged"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x6faa89b7

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v5, -0x1e310800

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/network/apn/ApnData;->customizedConfig:Lcom/android/settings/network/apn/CustomizedConfig;

    iget-object v5, v5, Lcom/android/settings/network/apn/CustomizedConfig;->readOnlyApnTypes:Ljava/util/List;

    const-string v6, "context"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/settings/network/apn/ApnData;->apnType:Ljava/lang/String;

    const-string v8, "apnType"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "readOnlyTypes"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v8}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/settings/network/apn/ApnTypes;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-string v10, "*"

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    new-instance v12, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sget-object v15, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v11, v15}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v18

    new-instance v11, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;

    const-string v14, "*"

    invoke-direct {v11, v4, v14, v9}, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v16, 0x1

    move-object/from16 v17, v14

    move-object v14, v12

    move-object v7, v15

    move-object/from16 v15, v17

    move/from16 v17, v9

    move-object/from16 v19, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;-><init>(Ljava/lang/String;ZZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v8, v12}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0xf

    if-ge v11, v12, :cond_3

    aget-object v15, v9, v11

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v14, 0x1

    :goto_3
    new-instance v3, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v18

    new-instance v14, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;

    invoke-direct {v14, v4, v15, v12}, Lcom/android/settings/network/apn/ApnTypes$createSettingsDropdownCheckOption$1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/16 v16, 0x0

    move-object/from16 v19, v14

    move-object v14, v3

    move/from16 v17, v12

    invoke-direct/range {v14 .. v19}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;-><init>(Ljava/lang/String;ZZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v8, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/2addr v11, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APN Type options: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApnTypes"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v4, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$1;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v2, v6}, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x7f140355

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "type"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v7

    const v3, 0x7f140e5a

    invoke-static {v13, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/settings/network/apn/ApnTypes;->APN_TYPES:[Ljava/lang/String;

    const-string v8, "<this>"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_5

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    iget-object v9, v9, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;->selected:Landroidx/compose/runtime/MutableState;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v8, v6

    goto :goto_5

    :cond_7
    :goto_4
    move-object v8, v3

    :goto_5
    new-instance v9, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$3;

    invoke-direct {v9, v1, v5, v2}, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const/4 v12, 0x4

    const/4 v6, 0x0

    const/16 v11, 0x40

    move-object v10, v13

    invoke-static/range {v4 .. v12}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt;->SettingsDropdownCheckBox(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v4, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$4;

    move/from16 v5, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/settings/network/apn/ApnTypeCheckBoxKt$ApnTypeCheckBox$4;-><init>(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final access$ApnTypeCheckBox$updateMmsSelected(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    iget-object v3, v3, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;->text:Ljava/lang/String;

    const-string v4, "mms"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collection contains more than one matching element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    iget-object p0, v0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;->selected:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
