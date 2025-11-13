.class public abstract Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsDropdownBox(Ljava/lang/String;Ljava/util/List;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    const-string v0, "label"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelectedOptionChange"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0xf420992

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, p7, 0x8

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    :goto_0
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-ltz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v3, v7, :cond_1

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    :goto_1
    check-cast v7, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_2

    :goto_2
    move v8, v6

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :goto_3
    new-instance v6, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;

    invoke-direct {v6, v2, v5}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$2;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    const v9, 0x60a94ba6

    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    and-int/lit8 v6, p6, 0xe

    const/high16 v9, 0x30000

    or-int v13, v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v14, 0x18

    move-object v6, p0

    move-object v12, v0

    invoke-static/range {v6 .. v14}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt;->DropdownTextBox(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v9, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$3;

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownBoxKt$SettingsDropdownBox$3;-><init>(Ljava/lang/String;Ljava/util/List;IZLkotlin/jvm/functions/Function1;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
