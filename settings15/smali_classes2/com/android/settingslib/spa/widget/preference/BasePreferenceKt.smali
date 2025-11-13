.class public abstract Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 34

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p13

    move/from16 v12, p15

    const/16 v2, 0x80

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x20

    const-string v6, "title"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "summary"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p12

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x71d45798

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v12, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz v6, :cond_0

    or-int/lit8 v6, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v15, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    or-int/2addr v6, v15

    goto :goto_1

    :cond_2
    move v6, v15

    :goto_1
    and-int/lit8 v9, v12, 0x2

    if-eqz v9, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x70

    if-nez v9, :cond_5

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    or-int/2addr v6, v9

    :cond_5
    :goto_3
    and-int/lit8 v9, v12, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v15, 0x380

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v3

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    :goto_4
    or-int v6, v6, v16

    :goto_5
    and-int/lit8 v16, v12, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v7, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v6, v6, v17

    :goto_7
    and-int/lit8 v17, v12, 0x10

    const v18, 0xe000

    if-eqz v17, :cond_c

    or-int/lit16 v6, v6, 0x6000

    move-object/from16 v4, p4

    goto :goto_9

    :cond_c
    and-int v19, v15, v18

    move-object/from16 v4, p4

    if-nez v19, :cond_e

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x4000

    goto :goto_8

    :cond_d
    const/16 v20, 0x2000

    :goto_8
    or-int v6, v6, v20

    :cond_e
    :goto_9
    and-int/lit8 v20, v12, 0x20

    const/high16 v21, 0x70000

    if-eqz v20, :cond_f

    const/high16 v22, 0x30000

    or-int v6, v6, v22

    move/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v22, v15, v21

    move/from16 v5, p5

    if-nez v22, :cond_11

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x10000

    :goto_a
    or-int v6, v6, v23

    :cond_11
    :goto_b
    and-int/lit8 v23, v12, 0x40

    const/high16 v24, 0x380000

    if-eqz v23, :cond_12

    const/high16 v25, 0x180000

    or-int v6, v6, v25

    move-object/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v25, v15, v24

    move-object/from16 v8, p6

    if-nez v25, :cond_14

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v6, v6, v26

    :cond_14
    :goto_d
    and-int/2addr v2, v12

    const/high16 v26, 0x1c00000

    if-eqz v2, :cond_15

    const/high16 v27, 0xc00000

    or-int v6, v6, v27

    move-object/from16 v1, p7

    goto :goto_f

    :cond_15
    and-int v27, v15, v26

    move-object/from16 v1, p7

    if-nez v27, :cond_17

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/high16 v28, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v28, 0x400000

    :goto_e
    or-int v6, v6, v28

    :cond_17
    :goto_f
    and-int/2addr v3, v12

    const/high16 v28, 0xe000000

    if-eqz v3, :cond_18

    const/high16 v29, 0x6000000

    or-int v6, v6, v29

    move/from16 v0, p8

    goto :goto_11

    :cond_18
    and-int v29, v15, v28

    move/from16 v0, p8

    if-nez v29, :cond_1a

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v30

    if-eqz v30, :cond_19

    const/high16 v30, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v30, 0x2000000

    :goto_10
    or-int v6, v6, v30

    :cond_1a
    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v30, 0x70000000

    if-eqz v0, :cond_1c

    const/high16 v31, 0x30000000

    :goto_12
    or-int v6, v6, v31

    :cond_1b
    const/16 v1, 0x400

    goto :goto_13

    :cond_1c
    and-int v31, v15, v30

    move/from16 v1, p9

    if-nez v31, :cond_1b

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v31

    if-eqz v31, :cond_1d

    const/high16 v31, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v31, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v1, v12

    if-eqz v1, :cond_1e

    or-int/lit8 v25, p14, 0x6

    :goto_14
    const/16 v4, 0x800

    goto :goto_16

    :cond_1e
    and-int/lit8 v29, p14, 0xe

    move/from16 v4, p10

    if-nez v29, :cond_20

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v25, 0x4

    goto :goto_15

    :cond_1f
    const/16 v25, 0x2

    :goto_15
    or-int v25, p14, v25

    goto :goto_14

    :cond_20
    move/from16 v25, p14

    goto :goto_14

    :goto_16
    and-int/2addr v4, v12

    if-eqz v4, :cond_21

    or-int/lit8 v25, v25, 0x30

    move-object/from16 v5, p11

    goto :goto_18

    :cond_21
    and-int/lit8 v27, p14, 0x70

    move-object/from16 v5, p11

    if-nez v27, :cond_23

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    const/16 v19, 0x20

    goto :goto_17

    :cond_22
    const/16 v19, 0x10

    :goto_17
    or-int v25, v25, v19

    :cond_23
    :goto_18
    const v19, 0x5b6db6db

    and-int v5, v6, v19

    const v7, 0x12492492

    if-ne v5, v7, :cond_25

    and-int/lit8 v5, v25, 0x5b

    const/16 v7, 0x12

    if-ne v5, v7, :cond_25

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_19

    :cond_24
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v12, p11

    move-object v7, v8

    move-object v3, v10

    move-object/from16 v26, v11

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_24

    :cond_25
    :goto_19
    if-eqz v9, :cond_26

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v19, v5

    goto :goto_1a

    :cond_26
    move-object/from16 v19, v10

    :goto_1a
    const/4 v5, 0x0

    if-eqz v16, :cond_27

    move-object/from16 v16, v5

    goto :goto_1b

    :cond_27
    move-object/from16 v16, p3

    :goto_1b
    if-eqz v17, :cond_28

    sget-object v7, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$1;

    move-object v10, v7

    goto :goto_1c

    :cond_28
    move-object/from16 v10, p4

    :goto_1c
    if-eqz v20, :cond_29

    const/4 v7, 0x0

    move v9, v7

    goto :goto_1d

    :cond_29
    move/from16 v9, p5

    :goto_1d
    if-eqz v23, :cond_2a

    move-object/from16 v17, v5

    goto :goto_1e

    :cond_2a
    move-object/from16 v17, v8

    :goto_1e
    if-eqz v2, :cond_2b

    sget-object v2, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$2;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$2;

    move-object/from16 v20, v2

    goto :goto_1f

    :cond_2b
    move-object/from16 v20, p7

    :goto_1f
    if-eqz v3, :cond_2c

    sget v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    move/from16 v22, v2

    goto :goto_20

    :cond_2c
    move/from16 v22, p8

    :goto_20
    if-eqz v0, :cond_2d

    sget v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    move/from16 v23, v0

    goto :goto_21

    :cond_2d
    move/from16 v23, p9

    :goto_21
    if-eqz v1, :cond_2e

    sget v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    move/from16 v27, v0

    goto :goto_22

    :cond_2e
    move/from16 v27, p10

    :goto_22
    if-eqz v4, :cond_2f

    sget-object v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v29, v0

    goto :goto_23

    :cond_2f
    move-object/from16 v29, p11

    :goto_23
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;

    invoke-direct {v0, v14, v10, v9}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    const v1, -0x5d12bd21

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    and-int/lit8 v0, v6, 0xe

    or-int/lit8 v0, v0, 0x30

    and-int/lit16 v2, v6, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v6, 0x1c00

    or-int/2addr v0, v2

    shr-int/lit8 v2, v6, 0x6

    and-int v3, v2, v18

    or-int/2addr v0, v3

    and-int v3, v2, v21

    or-int/2addr v0, v3

    and-int v3, v2, v24

    or-int/2addr v0, v3

    and-int v2, v2, v26

    or-int/2addr v0, v2

    shl-int/lit8 v2, v25, 0x18

    and-int v3, v2, v28

    or-int/2addr v0, v3

    and-int v2, v2, v30

    or-int v18, v0, v2

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v27

    move/from16 v24, v9

    move-object/from16 v9, v29

    move-object/from16 v25, v10

    move-object v10, v11

    move-object/from16 v26, v11

    move/from16 v11, v18

    move/from16 v12, v21

    invoke-static/range {v0 .. v12}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->BaseLayout-IBxwOmc(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v16

    move-object/from16 v7, v17

    move-object/from16 v3, v19

    move-object/from16 v8, v20

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v6, v24

    move-object/from16 v5, v25

    move/from16 v11, v27

    move-object/from16 v12, v29

    :goto_24
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_30

    new-instance v1, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;

    move-object v0, v1

    move-object/from16 v32, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, p1

    move-object v14, v13

    move/from16 v13, p13

    move-object v15, v14

    move/from16 v14, p14

    move-object/from16 v33, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v32

    move-object/from16 v0, v33

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_30
    return-void
.end method
