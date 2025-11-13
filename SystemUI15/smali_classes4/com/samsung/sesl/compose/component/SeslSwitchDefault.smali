.class public final Lcom/samsung/sesl/compose/component/SeslSwitchDefault;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Thumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 17

    move/from16 v7, p7

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v3, p6

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0xfa53ee2

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v7, 0x6

    move v6, v5

    move/from16 v5, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v7, 0xe

    if-nez v5, :cond_2

    move/from16 v5, p1

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    or-int/2addr v6, v7

    goto :goto_1

    :cond_2
    move/from16 v5, p1

    move v6, v7

    :goto_1
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v1, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v1, v7, 0x70

    if-nez v1, :cond_3

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    or-int/2addr v6, v8

    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v2, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_6

    move-object/from16 v2, p3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v6, v8

    :goto_5
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v9, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v7, 0x1c00

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v6, v10

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move/from16 v10, p5

    goto :goto_9

    :cond_d
    const v10, 0xe000

    and-int/2addr v10, v7

    if-nez v10, :cond_c

    move/from16 v10, p5

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x4000

    goto :goto_8

    :cond_e
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v6, v11

    :goto_9
    const v11, 0xb6db

    and-int/2addr v11, v6

    const/16 v12, 0x2492

    if-ne v11, v12, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v6, v10

    goto/16 :goto_e

    :cond_10
    :goto_a
    if-eqz v8, :cond_11

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v8

    goto :goto_b

    :cond_11
    move-object/from16 v16, v9

    :goto_b
    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    move v4, v10

    :goto_c
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v15, 0x0

    const v8, 0xfffe

    if-eqz v0, :cond_13

    const v0, 0x1bc12f58

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int v14, v6, v8

    const/4 v0, 0x0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, v16

    move v12, v4

    move-object v13, v3

    move v6, v15

    move v15, v0

    invoke-static/range {v8 .. v15}, Lcom/samsung/sesl/compose/component/SwitchKt;->access$SeslOpenThemeSwitchThumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_13
    move v0, v15

    const v9, 0x1bc5607a

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int v14, v6, v8

    const/4 v15, 0x0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, v16

    move v12, v4

    move-object v13, v3

    invoke-static/range {v8 .. v15}, Lcom/samsung/sesl/compose/component/SwitchKt;->SeslDefaultSwitchThumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    move v6, v4

    move-object/from16 v9, v16

    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v11, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;-><init>(Lcom/samsung/sesl/compose/component/SeslSwitchDefault;FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZII)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public final Track(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 16

    move/from16 v6, p6

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p5

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x249e0c8

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p7, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v6, 0x6

    move v5, v4

    move/from16 v4, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v6, 0xe

    if-nez v4, :cond_2

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move/from16 v4, p1

    move v5, v6

    :goto_1
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x30

    move-object/from16 v14, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v6, 0x70

    move-object/from16 v14, p2

    if-nez v0, :cond_5

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v5, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v1, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v6, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    :goto_5
    and-int/lit8 v7, p7, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v8, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v6, 0x1c00

    if-nez v8, :cond_9

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_6

    :cond_b
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v5, v9

    :goto_7
    and-int/lit16 v9, v5, 0x16db

    const/16 v10, 0x492

    if-ne v9, v10, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, v1

    goto :goto_c

    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_e
    move-object v0, v1

    :goto_9
    if-eqz v7, :cond_f

    goto :goto_a

    :cond_f
    move v3, v8

    :goto_a
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_10

    const v1, 0xa217bfa

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit16 v12, v5, 0x1ffe

    const/4 v13, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v0

    move v10, v3

    move-object v11, v2

    invoke-static/range {v7 .. v13}, Lcom/samsung/sesl/compose/component/SwitchKt;->access$SeslOpenThemeSwitchTrack(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_b

    :cond_10
    const v1, 0xa24d7fc

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit16 v12, v5, 0x1ffe

    const/4 v13, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v0

    move v10, v3

    move-object v11, v2

    invoke-static/range {v7 .. v13}, Lcom/samsung/sesl/compose/component/SwitchKt;->SeslDefaultSwitchTrack(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_b
    move-object v5, v0

    move v8, v3

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_11

    new-instance v10, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Track$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move v5, v8

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Track$1;-><init>(Lcom/samsung/sesl/compose/component/SeslSwitchDefault;FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
