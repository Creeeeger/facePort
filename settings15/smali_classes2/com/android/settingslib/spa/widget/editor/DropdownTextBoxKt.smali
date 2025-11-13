.class public abstract Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x136

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt;->Width:F

    return-void
.end method

.method public static final DropdownTextBox(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    move/from16 v12, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-string v4, "label"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "content"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p6

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x6ab7e189

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v12, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    or-int/2addr v5, v12

    goto :goto_1

    :cond_2
    move v5, v12

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    or-int/2addr v5, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    const/16 v3, 0x100

    if-eqz v2, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v12, 0x380

    if-nez v6, :cond_6

    move/from16 v6, p2

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v3

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    :goto_5
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v5, v13

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move/from16 v13, p4

    goto :goto_9

    :cond_d
    const v13, 0xe000

    and-int/2addr v13, v12

    if-nez v13, :cond_c

    move/from16 v13, p4

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v5, v14

    :goto_9
    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_f

    const/high16 v1, 0x30000

    :goto_a
    or-int/2addr v5, v1

    goto :goto_b

    :cond_f
    const/high16 v1, 0x70000

    and-int/2addr v1, v12

    if-nez v1, :cond_11

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v1, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    const v1, 0x5b6db

    and-int/2addr v1, v5

    const v14, 0x12492

    if-ne v1, v14, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v3, v6

    move-object v4, v8

    move v5, v13

    move-object v1, v15

    goto/16 :goto_11

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    move v14, v4

    goto :goto_d

    :cond_14
    move v14, v6

    :goto_d
    if-eqz v7, :cond_15

    const/4 v1, 0x0

    move-object/from16 v20, v1

    goto :goto_e

    :cond_15
    move-object/from16 v20, v8

    :goto_e
    if-eqz v0, :cond_16

    move/from16 v21, v4

    goto :goto_f

    :cond_16
    move/from16 v21, v13

    :goto_f
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x2743098c

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_17

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    move-object v6, v0

    check-cast v6, Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x274309bf

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_18

    new-instance v2, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;

    invoke-direct {v2, v6}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    move-object v8, v2

    check-cast v8, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const v2, 0x27430aaa

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v2, v5, 0x380

    if-ne v2, v3, :cond_19

    goto :goto_10

    :cond_19
    move v4, v0

    :goto_10
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v4, :cond_1a

    if-ne v2, v1, :cond_1b

    :cond_1a
    new-instance v2, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$1$1;

    invoke-direct {v2, v6, v14}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$1$1;-><init>(Landroidx/compose/runtime/MutableState;Z)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt;->Width:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v17

    new-instance v7, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move v3, v14

    move/from16 v4, v21

    move-object/from16 v5, p0

    move-object v9, v7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;)V

    const v0, 0x4b7b28d

    invoke-static {v0, v9, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v18, 0xd80

    const/16 v19, 0x0

    move v4, v14

    move-object/from16 v14, v16

    move-object v1, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v19}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move v3, v4

    move-object/from16 v4, v20

    move/from16 v5, v21

    :goto_11
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v13, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$3;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLkotlin/jvm/functions/Function3;II)V

    iput-object v13, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
