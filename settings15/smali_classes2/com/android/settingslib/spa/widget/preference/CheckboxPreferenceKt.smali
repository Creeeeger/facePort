.class public abstract Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final CheckboxPreference(Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4fa38d1a

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$1;-><init>(Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;)V

    const v1, -0x3f169a29

    invoke-static {v1, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$CheckboxPreference$2;-><init>(Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final InternalCheckboxPreference-0HqY7hA(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Ljava/lang/Boolean;ZFFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p8

    move/from16 v12, p10

    move/from16 v11, p11

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    const-string v6, "title"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p9

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x746affdc

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, v11, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v12, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    or-int/2addr v7, v12

    goto :goto_1

    :cond_2
    move v7, v12

    :goto_1
    and-int/2addr v4, v11

    if-eqz v4, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move-object/from16 v8, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v12, 0x70

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v3

    goto :goto_2

    :cond_5
    move v9, v2

    :goto_2
    or-int/2addr v7, v9

    :goto_3
    and-int/2addr v5, v11

    if-eqz v5, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v12, 0x380

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v7, v7, v16

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v7, v7, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v12, 0x1c00

    if-nez v6, :cond_b

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v7, v6

    :cond_b
    :goto_7
    and-int/2addr v2, v11

    const v6, 0xe000

    if-eqz v2, :cond_c

    or-int/lit16 v7, v7, 0x6000

    move/from16 v1, p4

    goto :goto_9

    :cond_c
    and-int v18, v12, v6

    move/from16 v1, p4

    if-nez v18, :cond_e

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_8

    :cond_d
    const/16 v19, 0x2000

    :goto_8
    or-int v7, v7, v19

    :cond_e
    :goto_9
    and-int/2addr v3, v11

    if-eqz v3, :cond_f

    const/high16 v19, 0x30000

    or-int v7, v7, v19

    move/from16 v6, p5

    goto :goto_b

    :cond_f
    const/high16 v19, 0x70000

    and-int v19, v12, v19

    move/from16 v6, p5

    if-nez v19, :cond_11

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v7, v7, v20

    :cond_11
    :goto_b
    and-int/lit8 v20, v11, 0x40

    const/high16 v21, 0x380000

    if-eqz v20, :cond_13

    const/high16 v22, 0x180000

    or-int v7, v7, v22

    :cond_12
    :goto_c
    const/16 v0, 0x80

    goto :goto_e

    :cond_13
    and-int v22, v12, v21

    move/from16 v0, p6

    if-nez v22, :cond_12

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v23, 0x80000

    :goto_d
    or-int v7, v7, v23

    goto :goto_c

    :goto_e
    and-int/2addr v0, v11

    if-eqz v0, :cond_16

    const/high16 v22, 0xc00000

    :goto_f
    or-int v7, v7, v22

    :cond_15
    const/16 v1, 0x100

    goto :goto_10

    :cond_16
    const/high16 v22, 0x1c00000

    and-int v22, v12, v22

    move/from16 v1, p7

    if-nez v22, :cond_15

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_17

    const/high16 v22, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v22, 0x400000

    goto :goto_f

    :goto_10
    and-int/2addr v1, v11

    const/high16 v17, 0xe000000

    if-eqz v1, :cond_18

    const/high16 v1, 0x6000000

    :goto_11
    or-int/2addr v7, v1

    goto :goto_12

    :cond_18
    and-int v1, v12, v17

    if-nez v1, :cond_1a

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v1, 0x2000000

    goto :goto_11

    :cond_1a
    :goto_12
    const v1, 0xb6db6db

    and-int/2addr v1, v7

    const v6, 0x2492492

    if-ne v1, v6, :cond_1c

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v24, v10

    move/from16 v8, p7

    goto/16 :goto_20

    :cond_1c
    :goto_13
    if-eqz v4, :cond_1d

    sget-object v1, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$1;

    move-object/from16 v22, v1

    goto :goto_14

    :cond_1d
    move-object/from16 v22, v8

    :goto_14
    if-eqz v5, :cond_1e

    const/4 v1, 0x0

    move-object/from16 v23, v1

    goto :goto_15

    :cond_1e
    move-object/from16 v23, v9

    :goto_15
    if-eqz v2, :cond_1f

    const/4 v9, 0x1

    goto :goto_16

    :cond_1f
    move/from16 v9, p4

    :goto_16
    if-eqz v3, :cond_20

    sget v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    move/from16 v31, v1

    goto :goto_17

    :cond_20
    move/from16 v31, p5

    :goto_17
    if-eqz v20, :cond_21

    sget v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    move/from16 v20, v1

    goto :goto_18

    :cond_21
    move/from16 v20, p6

    :goto_18
    if-eqz v0, :cond_22

    sget v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    move/from16 v32, v0

    goto :goto_19

    :cond_22
    move/from16 v32, p7

    :goto_19
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroidx/compose/foundation/Indication;

    shr-int/lit8 v0, v7, 0x18

    and-int/lit8 v0, v0, 0xe

    invoke-static {v13, v10, v0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;->wrapOnSwitchWithLog(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function1;

    move-result-object v30

    const v0, -0x4fa3a3d2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_23

    new-instance v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, -0x4fa3a397

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v3, v7, 0x1c00

    const/16 v4, 0x800

    if-ne v3, v4, :cond_24

    const v3, 0xe000

    const/4 v4, 0x1

    goto :goto_1a

    :cond_24
    move v4, v2

    const v3, 0xe000

    :goto_1a
    and-int/2addr v3, v7

    const/16 v5, 0x4000

    if-ne v3, v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1b

    :cond_25
    move v5, v2

    :goto_1b
    or-int/2addr v4, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_27

    if-ne v5, v1, :cond_26

    goto :goto_1c

    :cond_26
    move-object v4, v5

    const/4 v5, 0x1

    goto :goto_1e

    :cond_27
    :goto_1c
    sget-object v24, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v14, :cond_28

    if-eqz v30, :cond_28

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    new-instance v4, Landroidx/compose/ui/semantics/Role;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    move-object/from16 v26, v0

    move/from16 v28, v9

    move-object/from16 v29, v4

    invoke-static/range {v24 .. v30}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    goto :goto_1d

    :cond_28
    const/4 v5, 0x1

    move-object/from16 v4, v24

    :goto_1d
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_1e
    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0x4fa3a17d

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v6, 0x4000

    if-ne v3, v6, :cond_29

    move v6, v5

    goto :goto_1f

    :cond_29
    move v6, v2

    :goto_1f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v6, :cond_2a

    if-ne v3, v1, :cond_2b

    :cond_2a
    new-instance v3, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$2$1;

    invoke-direct {v3, v9}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$2$1;-><init>(Z)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;

    invoke-direct {v1, v14, v9, v0}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$3;-><init>(Ljava/lang/Boolean;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    const v0, -0x352d65b5    # -6901029.5f

    invoke-static {v0, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    and-int/lit8 v0, v7, 0x7e

    shl-int/lit8 v1, v7, 0xc

    and-int v1, v1, v21

    or-int/2addr v0, v1

    shl-int/lit8 v1, v7, 0x9

    and-int v2, v1, v17

    or-int/2addr v0, v2

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v17, v0, v1

    shr-int/lit8 v0, v7, 0x15

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v18, v0, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x38

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, v23

    move-object v7, v8

    move/from16 v8, v31

    move/from16 v21, v9

    move/from16 v9, v20

    move-object/from16 v24, v10

    move/from16 v10, v32

    move-object/from16 v11, v16

    move-object/from16 v12, v24

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    invoke-static/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;->BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move/from16 v7, v20

    move/from16 v5, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v6, v31

    move/from16 v8, v32

    :goto_20
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v13, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt$InternalCheckboxPreference$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Ljava/lang/Boolean;ZFFFLkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method
