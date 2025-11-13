.class public abstract Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    move-object v6, p0

    move-object v7, p2

    move v8, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    const-string v2, "title"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, p3

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x4fcab8c

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    invoke-virtual {v9, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v8, 0x70

    if-nez v3, :cond_3

    move-object v3, p1

    invoke-virtual {v9, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :goto_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v8, 0x380

    if-nez v1, :cond_8

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v2, v1

    :cond_8
    :goto_5
    and-int/lit16 v1, v2, 0x2db

    const/16 v4, 0x92

    if-ne v1, v4, :cond_a

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v3

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$RegularScaffoldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v10, v0

    goto :goto_7

    :cond_b
    move-object v10, v3

    :goto_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt$RegularScaffold$1;

    invoke-direct {v0, p2}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt$RegularScaffold$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v1, 0x268131bf

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v0, v2, 0xe

    or-int/lit16 v0, v0, 0x180

    and-int/lit8 v1, v2, 0x70

    or-int v4, v0, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, v3

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/SettingsScaffoldKt;->SettingsScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v10

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_c

    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt$RegularScaffold$2;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt$RegularScaffold$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
