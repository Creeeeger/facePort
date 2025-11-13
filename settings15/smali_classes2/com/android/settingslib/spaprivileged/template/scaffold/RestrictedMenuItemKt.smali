.class public abstract Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final RestrictedMenuItem(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move/from16 v6, p6

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x3e6bc43c

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItem$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItem$1;

    and-int/lit8 v7, v6, 0xe

    const/16 v8, 0x1000

    or-int/2addr v7, v8

    and-int/lit8 v8, v6, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v6, 0x380

    or-int/2addr v7, v8

    const v8, 0xe000

    and-int/2addr v8, v6

    or-int v14, v7, v8

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v13, v0

    invoke-static/range {v7 .. v15}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt;->RestrictedMenuItemImpl(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItem$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItem$2;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final RestrictedMenuItemImpl(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictionsProviderFactory"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x69a355f6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p8, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6, v4, v0}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderKt;->rememberRestrictedMode(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    if-eqz v3, :cond_1

    sget-object v9, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    if-eq v8, v9, :cond_1

    :goto_1
    move v9, v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :goto_2
    new-instance v10, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;

    invoke-direct {v10, v8, v5}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$1;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Lkotlin/jvm/functions/Function0;)V

    shr-int/lit8 v7, p7, 0x3

    and-int/lit8 v7, v7, 0xe

    shl-int/lit8 v8, p7, 0x9

    and-int/lit16 v8, v8, 0x1c00

    or-int v12, v7, v8

    const/4 v13, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object v11, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;->MenuItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/spaprivileged/template/scaffold/RestrictedMenuItemKt$RestrictedMenuItemImpl$2;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
