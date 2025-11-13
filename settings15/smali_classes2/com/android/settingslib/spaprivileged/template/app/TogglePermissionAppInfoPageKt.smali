.class public abstract Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final TogglePermissionAppInfoPage(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;ILcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
            ">(",
            "Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p6

    const/4 v0, 0x2

    const/4 v2, 0x4

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "packageName"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p5

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x7bc43e46

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/high16 v3, -0x80000000

    and-int v3, p7, v3

    if-eqz v3, :cond_0

    or-int/lit8 v3, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0xe

    if-nez v3, :cond_2

    invoke-virtual {v13, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/lit8 v4, p7, 0x1

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_5
    :goto_3
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v12, 0x380

    if-nez v0, :cond_8

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v3, v0

    :cond_8
    :goto_5
    and-int/lit16 v0, v12, 0x1c00

    if-nez v0, :cond_b

    and-int/lit8 v0, p7, 0x4

    if-nez v0, :cond_9

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v0, p3

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v3, v4

    goto :goto_7

    :cond_b
    move-object/from16 v0, p3

    :goto_7
    const v4, 0xe000

    and-int v5, v12, v4

    if-nez v5, :cond_e

    and-int/lit8 v5, p7, 0x8

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v5, p4

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v3, v6

    goto :goto_9

    :cond_e
    move-object/from16 v5, p4

    :goto_9
    const v6, 0xb6db

    and-int/2addr v6, v3

    const/16 v7, 0x2492

    if-ne v6, v7, :cond_10

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v0

    goto/16 :goto_d

    :cond_10
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v6, v12, 0x1

    const v7, -0xe001

    if-eqz v6, :cond_14

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_12

    and-int/lit16 v3, v3, -0x1c01

    :cond_12
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_13

    and-int/2addr v3, v7

    :cond_13
    move-object v14, v5

    goto :goto_c

    :cond_14
    :goto_b
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_15

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    and-int/lit16 v3, v3, -0x1c01

    :cond_15
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$1;

    and-int/2addr v3, v7

    move-object v14, v2

    :goto_c
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getPageTitleResId()I

    move-result v2

    invoke-static {v13, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$2;

    invoke-direct {v5, p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;)V

    const v6, -0x3c7d468a

    invoke-static {v6, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;

    invoke-direct {v6, p0, v11, v14, v10}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$3;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;ILkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    const v7, -0x1bc4a382

    invoke-static {v7, v6, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const v6, 0x30c00

    and-int/lit8 v8, v3, 0x70

    or-int/2addr v6, v8

    and-int/lit16 v8, v3, 0x380

    or-int/2addr v6, v8

    shl-int/lit8 v3, v3, 0x3

    and-int/2addr v3, v4

    or-int v9, v6, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v6, v0

    move-object v8, v13

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt;->AppInfoPage(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v0

    move-object v5, v14

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v9, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$4;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPage$4;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;ILcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function2;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final TogglePermissionAppInfoPageEntryItem(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1b1090b

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x5f5a2f6

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v5, v0

    check-cast v5, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, -0x5f5a2cd

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    const-string v2, "record"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListKt;->isSystemOrRootUid(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v5}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, -0x5f5a24e

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    new-instance v3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$internalListModel$1$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$internalListModel$1$1;

    invoke-direct {v3, v2, p1, p0, v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v4, v3

    check-cast v4, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v9, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$3;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x2

    invoke-static {v9, v0, p3, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$4;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$TogglePermissionAppInfoPageEntryItem$4;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
