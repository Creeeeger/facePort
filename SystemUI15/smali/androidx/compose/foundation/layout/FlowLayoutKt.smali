.class public abstract Landroidx/compose/foundation/layout/FlowLayoutKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v1, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v7, p6

    move/from16 v8, p8

    const/16 v0, 0x10

    const/16 v1, 0x20

    move-object/from16 v2, p7

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x1a191c2e

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p9, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v4, :cond_0

    or-int/lit8 v9, v8, 0x6

    move v10, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v8, 0x6

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v5

    :goto_0
    or-int/2addr v10, v8

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v10, v8

    :goto_1
    and-int/lit8 v11, p9, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v8, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v1

    goto :goto_2

    :cond_5
    move v13, v0

    :goto_2
    or-int/2addr v10, v13

    :goto_3
    and-int/lit8 v13, p9, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v15, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v15, v8, 0x180

    if-nez v15, :cond_6

    move-object/from16 v15, p2

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v10, v10, v16

    :goto_5
    and-int/lit8 v16, p9, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move/from16 v3, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v8, 0xc00

    if-nez v3, :cond_9

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v10, v10, v17

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move/from16 v5, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v5, v8, 0x6000

    if-nez v5, :cond_c

    move/from16 v5, p4

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x4000

    goto :goto_8

    :cond_e
    const/16 v18, 0x2000

    :goto_8
    or-int v10, v10, v18

    :goto_9
    and-int/lit8 v18, p9, 0x20

    const/high16 v19, 0x30000

    if-eqz v18, :cond_f

    or-int v10, v10, v19

    move-object/from16 v1, p5

    goto :goto_b

    :cond_f
    and-int v19, v8, v19

    move-object/from16 v1, p5

    if-nez v19, :cond_11

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v10, v10, v20

    :cond_11
    :goto_b
    and-int/lit8 v20, p9, 0x40

    const/high16 v21, 0x180000

    if-eqz v20, :cond_12

    or-int v10, v10, v21

    goto :goto_d

    :cond_12
    and-int v20, v8, v21

    if-nez v20, :cond_14

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v20, 0x80000

    :goto_c
    or-int v10, v10, v20

    :cond_14
    :goto_d
    const v20, 0x92493

    and-int v6, v10, v20

    const v14, 0x92492

    if-ne v6, v14, :cond_16

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v1

    move v4, v3

    move-object v1, v9

    :goto_e
    move-object v3, v15

    goto/16 :goto_1d

    :cond_16
    :goto_f
    if-eqz v4, :cond_17

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v4

    :cond_17
    if-eqz v11, :cond_18

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    move-object v12, v4

    :cond_18
    if-eqz v13, :cond_19

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    move-object v15, v4

    :cond_19
    const v4, 0x7fffffff

    if-eqz v16, :cond_1a

    move v3, v4

    :cond_1a
    if-eqz v0, :cond_1b

    goto :goto_10

    :cond_1b
    move v4, v5

    :goto_10
    if-eqz v18, :cond_1c

    sget-object v0, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/foundation/layout/FlowRowOverflow;->Clip:Landroidx/compose/foundation/layout/FlowRowOverflow;

    goto :goto_11

    :cond_1c
    move-object v0, v1

    :goto_11
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v1, 0x70000

    and-int/2addr v1, v10

    const/high16 v6, 0x20000

    if-ne v1, v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_12

    :cond_1d
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v6, :cond_1e

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v6, :cond_1f

    :cond_1e
    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget v6, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->minLinesToShowCollapse:I

    iget v14, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->minCrossAxisSizeToShowCollapse:I

    iget-object v5, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-direct {v11, v5, v6, v14}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;II)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    check-cast v11, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    shr-int/lit8 v5, v10, 0x3

    and-int/lit8 v6, v5, 0xe

    xor-int/lit8 v6, v6, 0x6

    const/4 v14, 0x4

    if-le v6, v14, :cond_20

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    :cond_20
    and-int/lit8 v6, v5, 0x6

    if-ne v6, v14, :cond_22

    :cond_21
    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    and-int/lit8 v14, v5, 0x70

    xor-int/lit8 v14, v14, 0x30

    const/16 v8, 0x20

    if-le v14, v8, :cond_23

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    :cond_23
    and-int/lit8 v14, v5, 0x30

    if-ne v14, v8, :cond_25

    :cond_24
    const/4 v8, 0x1

    goto :goto_14

    :cond_25
    const/4 v8, 0x0

    :goto_14
    or-int/2addr v6, v8

    and-int/lit16 v8, v5, 0x380

    xor-int/lit16 v8, v8, 0x180

    const/16 v14, 0x100

    if-le v8, v14, :cond_26

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    if-nez v8, :cond_27

    :cond_26
    and-int/lit16 v8, v5, 0x180

    if-ne v8, v14, :cond_28

    :cond_27
    const/4 v8, 0x1

    goto :goto_15

    :cond_28
    const/4 v8, 0x0

    :goto_15
    or-int/2addr v6, v8

    and-int/lit16 v8, v5, 0x1c00

    xor-int/lit16 v8, v8, 0xc00

    const/16 v14, 0x800

    if-le v8, v14, :cond_29

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v8

    if-nez v8, :cond_2a

    :cond_29
    and-int/lit16 v5, v5, 0xc00

    if-ne v5, v14, :cond_2b

    :cond_2a
    const/4 v5, 0x1

    goto :goto_16

    :cond_2b
    const/4 v5, 0x0

    :goto_16
    or-int/2addr v5, v6

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2c

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v5, :cond_2d

    :cond_2c
    invoke-interface {v12}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v26

    invoke-interface {v15}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v28

    new-instance v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/16 v23, 0x1

    const/16 v32, 0x0

    sget-object v27, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    move-object/from16 v22, v6

    move-object/from16 v24, v12

    move-object/from16 v25, v15

    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v11

    invoke-direct/range {v22 .. v32}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/high16 v5, 0x20000

    if-ne v1, v5, :cond_2e

    const/4 v1, 0x1

    goto :goto_17

    :cond_2e
    const/4 v1, 0x0

    :goto_17
    const/high16 v5, 0x380000

    and-int/2addr v5, v10

    const/high16 v8, 0x100000

    if-ne v5, v8, :cond_2f

    const/4 v5, 0x1

    goto :goto_18

    :cond_2f
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v1, v5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_30

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v1, :cond_37

    :cond_30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$list$1$1;

    invoke-direct {v1, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$list$1$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v14, -0x8511341

    const/4 v8, 0x1

    invoke-direct {v10, v14, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->seeMoreGetter:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_31

    invoke-interface {v1, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    goto :goto_19

    :cond_31
    const/4 v1, 0x0

    :goto_19
    iget-object v8, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->collapseGetter:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_32

    invoke-interface {v8, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/jvm/functions/Function2;

    goto :goto_1a

    :cond_32
    const/4 v8, 0x0

    :goto_1a
    sget-object v10, Landroidx/compose/foundation/layout/FlowLayoutOverflow$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object v11, v0, Landroidx/compose/foundation/layout/FlowLayoutOverflow;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x1

    if-eq v10, v11, :cond_35

    const/4 v11, 0x2

    if-eq v10, v11, :cond_33

    goto :goto_1b

    :cond_33
    if-eqz v1, :cond_34

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    if-eqz v8, :cond_36

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_35
    if-eqz v1, :cond_36

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_1b
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_37
    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_38

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v5, :cond_39

    :cond_38
    new-instance v8, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    invoke-direct {v8, v6}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_39
    check-cast v8, Landroidx/compose/ui/layout/MeasurePolicy;

    iget v5, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v2, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v13, v2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_3e

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_3a

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_3a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1c
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v8, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_3b

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    :cond_3b
    invoke-static {v5, v2, v5, v6}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3c
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v6, v0

    move v5, v4

    move-object v1, v9

    move v4, v3

    goto/16 :goto_e

    :goto_1d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_3d

    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$1;

    move-object v0, v11

    move-object v2, v12

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$FlowRow$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void

    :cond_3e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v4, :cond_0

    invoke-static {v13, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const v15, 0x7fffffff

    invoke-static {v13, v3, v13, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v7

    new-instance v27, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    const/4 v12, 0x0

    move-object/from16 v4, v27

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v9, p7

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v4, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v14, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    if-eqz v4, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v14, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v13

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    move/from16 v17, v8

    goto :goto_2

    :cond_3
    move/from16 v17, v13

    :goto_2
    invoke-static {v3, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v19

    if-nez v4, :cond_4

    const/16 v21, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v6, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v9

    move-object/from16 v21, v9

    :goto_3
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v27

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    invoke-virtual/range {v16 .. v26}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v12

    const-wide v28, 0xffffffffL

    iget-boolean v12, v12, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p8

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v8, v13

    :goto_4
    invoke-virtual {v0, v13, v13, v8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout_release(IIZ)Landroidx/collection/IntIntPair;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-wide v0, v0, Landroidx/collection/IntIntPair;->packedValue:J

    and-long v0, v0, v28

    long-to-int v0, v0

    goto :goto_5

    :cond_6
    move v0, v13

    :goto_5
    invoke-static {v0, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0

    :cond_7
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    move v14, v3

    move v12, v13

    move/from16 v16, v12

    move/from16 v30, v16

    :goto_6
    if-ge v12, v4, :cond_10

    sub-int v6, v14, v6

    add-int/lit8 v14, v12, 0x1

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v14, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v11, :cond_8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v11, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_7

    :cond_8
    move v7, v13

    :goto_7
    if-eqz v11, :cond_9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v11, v8, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int v8, v8, p4

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v12, v12, 0x2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    const/16 v17, 0x1

    goto :goto_9

    :cond_a
    const/16 v17, 0x0

    :goto_9
    sub-int v12, v14, v30

    invoke-static {v6, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v19

    if-nez v11, :cond_b

    const/16 v21, 0x0

    goto :goto_a

    :cond_b
    invoke-static {v8, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_a
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v16, v27

    move/from16 v18, v12

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v5

    invoke-virtual/range {v16 .. v26}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v13

    iget-boolean v15, v13, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    if-eqz v15, :cond_f

    add-int v5, v5, p5

    add-int/2addr v5, v10

    if-eqz v11, :cond_c

    const/16 v18, 0x1

    goto :goto_b

    :cond_c
    const/16 v18, 0x0

    :goto_b
    move-object/from16 v16, v27

    move-object/from16 v17, v13

    move/from16 v19, v9

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v6

    sub-int v8, v8, p4

    add-int/lit8 v9, v9, 0x1

    iget-boolean v10, v13, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    if-eqz v10, :cond_e

    if-eqz v6, :cond_d

    iget-boolean v0, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    if-nez v0, :cond_d

    iget-wide v0, v6, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    and-long v0, v0, v28

    long-to-int v0, v0

    add-int v0, v0, p5

    add-int/2addr v5, v0

    :cond_d
    move v10, v5

    goto :goto_d

    :cond_e
    move v10, v5

    move v6, v8

    move/from16 v30, v14

    const/4 v11, 0x0

    move v5, v3

    goto :goto_c

    :cond_f
    move v11, v5

    move v5, v6

    move v6, v8

    :goto_c
    move v12, v14

    move/from16 v16, v12

    const/4 v8, 0x1

    const/4 v13, 0x0

    const v15, 0x7fffffff

    move v14, v5

    move v5, v7

    goto/16 :goto_6

    :cond_10
    move/from16 v14, v16

    :goto_d
    sub-int v10, v10, p5

    invoke-static {v10, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J
    .locals 2

    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/foundation/layout/RowColumnParentData;->flowLayoutData:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p2

    invoke-interface {p1, p0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p0

    invoke-static {p2, p0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide p0

    goto :goto_3

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-boolean p2, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    const p3, 0x7fffffff

    if-eqz p2, :cond_2

    invoke-interface {p0, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-interface {p0, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p2

    :goto_1
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->isHorizontal:Z

    if-eqz p1, :cond_3

    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    :goto_2
    invoke-static {p2, p0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide p0

    :goto_3
    return-wide p0
.end method

.method public static final safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;
    .locals 1

    :try_start_0
    instance-of v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getNext$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
