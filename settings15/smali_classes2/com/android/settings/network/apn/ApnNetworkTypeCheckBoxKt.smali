.class public abstract Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ApnNetworkTypeCheckBox(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "apnData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNetworkTypeChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x73d1df62

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x4166d3a3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/settings/network/apn/ApnNetworkTypes;->Types:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/network/apn/ApnData;->networkType:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    new-instance v5, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "getNetworkTypeName(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;-><init>(Ljava/lang/String;Landroidx/compose/runtime/ParcelableSnapshotMutableState;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x7f141968

    invoke-static {p2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f141969

    invoke-static {p2, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "network_type_bitmask"

    const-string v4, "bearer"

    const-string v5, "bearer_bitmask"

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/network/apn/ApnData;->isFieldEnabled([Ljava/lang/String;)Z

    move-result v4

    new-instance v6, Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt$ApnNetworkTypeCheckBox$1;

    invoke-direct {v6, v0, p1}, Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt$ApnNetworkTypeCheckBox$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const/16 v9, 0x10

    const/4 v5, 0x0

    const/16 v8, 0x40

    move-object v2, v0

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt;->SettingsDropdownCheckBox(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt$ApnNetworkTypeCheckBox$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/network/apn/ApnNetworkTypeCheckBoxKt$ApnNetworkTypeCheckBox$2;-><init>(Lcom/android/settings/network/apn/ApnData;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
