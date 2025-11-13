.class public final Landroidx/compose/material3/OutlinedTextFieldDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FocusedBorderThickness:F

.field public static final INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

.field public static final MinHeight:F

.field public static final MinWidth:F

.field public static final UnfocusedBorderThickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    const/16 v0, 0x38

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinHeight:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->MinWidth:F

    const/4 v0, 0x1

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->UnfocusedBorderThickness:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/OutlinedTextFieldDefaults;->FocusedBorderThickness:F

    return-void
.end method

.method public static colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;
    .locals 91

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/ColorScheme;

    iget-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    const v3, 0x5bcf9ba9

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_0

    new-instance v2, Landroidx/compose/material3/TextFieldColors;

    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v9

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    sget-wide v19, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget-object v13, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v21

    sget-object v14, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Error:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v23

    sget-object v15, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v25, v15

    check-cast v25, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v26

    sget-object v15, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Outline:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v15}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v28

    move-wide v15, v5

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v4

    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v30

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v32

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v34

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v36

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    move-object/from16 v90, v1

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v38

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v40

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v42

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v44

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v46

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v48

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v50

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v52

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v54

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v56

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v58

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v60

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v62

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v64

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v66

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v68

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v70

    invoke-static {v0, v14}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v72

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v74

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v76

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v78

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v80

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v82

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v84

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v86

    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v88

    move-object v4, v2

    move-wide v5, v15

    move-wide/from16 v13, v19

    move-wide/from16 v15, v19

    move-wide/from16 v17, v19

    invoke-direct/range {v4 .. v89}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    iput-object v2, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    goto :goto_0

    :cond_0
    move-object/from16 v90, v1

    :goto_0
    const/4 v0, 0x0

    move-object/from16 v1, v90

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v2
.end method


# virtual methods
.method public final Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 24

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p10

    move/from16 v12, p11

    const/16 v0, 0x100

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x80

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/4 v13, 0x6

    move-object/from16 v14, p9

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x3db82288

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v12, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v11, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    or-int/2addr v6, v11

    goto :goto_1

    :cond_2
    move v6, v11

    :goto_1
    and-int/2addr v1, v12

    if-eqz v1, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v11, 0x30

    if-nez v1, :cond_5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    or-int/2addr v6, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v11, 0x180

    if-nez v1, :cond_8

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    or-int/2addr v6, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v2, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v11, 0xc00

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v6, v7

    :goto_7
    and-int/lit16 v7, v11, 0x6000

    if-nez v7, :cond_e

    and-int/lit8 v7, v12, 0x10

    if-nez v7, :cond_c

    move-object/from16 v7, p5

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v7, p5

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v6, v15

    goto :goto_9

    :cond_e
    move-object/from16 v7, p5

    :goto_9
    const/high16 v15, 0x30000

    and-int/2addr v15, v11

    if-nez v15, :cond_11

    and-int/lit8 v15, v12, 0x20

    if-nez v15, :cond_f

    move-object/from16 v15, p6

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v15, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v6, v6, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v11, v16

    if-nez v16, :cond_13

    and-int/lit8 v16, v12, 0x40

    move/from16 v13, p7

    if-nez v16, :cond_12

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v6, v6, v17

    goto :goto_d

    :cond_13
    move/from16 v13, p7

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v11, v17

    if-nez v17, :cond_16

    and-int/lit16 v5, v12, 0x80

    if-nez v5, :cond_14

    move/from16 v5, p8

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_15

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_14
    move/from16 v5, p8

    :cond_15
    const/high16 v18, 0x400000

    :goto_e
    or-int v6, v6, v18

    goto :goto_f

    :cond_16
    move/from16 v5, p8

    :goto_f
    and-int/2addr v0, v12

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v6, v6, v18

    :cond_17
    move-object/from16 v0, p0

    goto :goto_11

    :cond_18
    and-int v0, v11, v18

    if-nez v0, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v6, v6, v18

    :goto_11
    const v18, 0x2492493

    and-int v3, v6, v18

    const v4, 0x2492492

    if-ne v3, v4, :cond_1b

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v22, v5

    move-object v6, v7

    move/from16 v21, v13

    move-object v3, v14

    move-object v7, v15

    move-object v5, v2

    goto/16 :goto_1a

    :cond_1b
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v11, 0x1

    const v4, -0x1c00001

    const v20, -0x380001

    const v21, -0x70001

    const v22, -0xe001

    if-eqz v3, :cond_21

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v1, 0x10

    and-int/2addr v1, v12

    if-eqz v1, :cond_1d

    and-int v6, v6, v22

    :cond_1d
    const/16 v1, 0x20

    and-int/2addr v1, v12

    if-eqz v1, :cond_1e

    and-int v6, v6, v21

    :cond_1e
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_1f

    and-int v6, v6, v20

    :cond_1f
    const/16 v1, 0x80

    and-int/2addr v1, v12

    if-eqz v1, :cond_20

    and-int/2addr v6, v4

    :cond_20
    move/from16 v22, v5

    move/from16 v21, v13

    move-object v13, v2

    :goto_13
    move-object/from16 v23, v15

    move-object v15, v7

    move-object/from16 v7, v23

    goto :goto_18

    :cond_21
    :goto_14
    if-eqz v1, :cond_22

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_15
    const/16 v2, 0x10

    goto :goto_16

    :cond_22
    move-object v1, v2

    goto :goto_15

    :goto_16
    and-int/2addr v2, v12

    if-eqz v2, :cond_23

    invoke-static {v14}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    and-int v6, v6, v22

    move-object v7, v2

    :cond_23
    const/16 v2, 0x20

    and-int/2addr v2, v12

    if-eqz v2, :cond_24

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v14}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v6, v6, v21

    move-object v15, v2

    :cond_24
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_25

    and-int v2, v6, v20

    sget v3, Landroidx/compose/material3/OutlinedTextFieldDefaults;->FocusedBorderThickness:F

    move v6, v2

    move v13, v3

    :cond_25
    const/16 v2, 0x80

    and-int/2addr v2, v12

    if-eqz v2, :cond_26

    and-int/2addr v6, v4

    sget v2, Landroidx/compose/material3/OutlinedTextFieldDefaults;->UnfocusedBorderThickness:F

    move/from16 v22, v2

    :goto_17
    move/from16 v21, v13

    move-object v13, v1

    goto :goto_13

    :cond_26
    move/from16 v22, v5

    goto :goto_17

    :goto_18
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x6

    shr-int/lit8 v2, v6, 0x6

    and-int/lit8 v1, v2, 0xe

    invoke-static {v10, v14, v1}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    and-int/lit8 v1, v6, 0x7e

    shr-int/lit8 v3, v6, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v18, v1, v2

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    move-object v3, v15

    move/from16 v4, v21

    move/from16 v5, v22

    move-object v6, v14

    move-object v10, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/internal/TextFieldImplKt;->animateBorderStrokeAsState-NuRrP5Q(ZZZLandroidx/compose/material3/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    if-nez v8, :cond_27

    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    goto :goto_19

    :cond_27
    if-eqz v9, :cond_28

    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    goto :goto_19

    :cond_28
    if-eqz v17, :cond_29

    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    goto :goto_19

    :cond_29
    iget-wide v1, v15, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    :goto_19
    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v3, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v16

    const/16 v20, 0xc

    const/16 v17, 0x0

    const/16 v19, 0x30

    move-object v3, v14

    move-object v7, v15

    move-wide v14, v1

    move-object/from16 v18, v3

    invoke-static/range {v14 .. v20}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    iget v2, v0, Landroidx/compose/foundation/BorderStroke;->width:F

    new-instance v4, Landroidx/compose/foundation/BorderModifierNodeElement;

    iget-object v0, v0, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-direct {v4, v2, v0, v10}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    invoke-interface {v13, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v2, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$1;

    const-class v4, Landroidx/compose/runtime/State;

    const-string/jumbo v6, "value"

    const-string v14, "getValue()Ljava/lang/Object;"

    const/4 v15, 0x0

    move-object/from16 p4, v2

    move-object/from16 p5, v1

    move-object/from16 p6, v4

    move-object/from16 p7, v6

    move-object/from16 p8, v14

    move/from16 p9, v15

    invoke-direct/range {p4 .. p9}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v1, v2}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/internal/PropertyReference0Impl;)V

    invoke-static {v0, v1, v10}, Landroidx/compose/material3/internal/TextFieldImplKt;->textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v7

    move-object v7, v10

    move-object v5, v13

    :goto_1a
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2a

    new-instance v14, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/OutlinedTextFieldDefaults$Container$2;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public final DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 41

    move/from16 v15, p3

    move-object/from16 v14, p6

    move/from16 v13, p19

    move/from16 v12, p20

    move/from16 v11, p21

    const/high16 v3, 0x6000000

    const/16 v7, 0x80

    const/16 v8, 0x100

    const/16 v9, 0x10

    const/16 v10, 0x20

    move-object/from16 v1, p18

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x14e35297

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v11, 0x1

    const/16 v19, 0x2

    const/16 v20, 0x4

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    move/from16 v21, v0

    move-object/from16 v0, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0x6

    if-nez v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    move/from16 v21, v20

    goto :goto_0

    :cond_1
    move/from16 v21, v19

    :goto_0
    or-int v21, v13, v21

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    move/from16 v21, v13

    :goto_1
    and-int/lit8 v22, v11, 0x2

    if-eqz v22, :cond_4

    or-int/lit8 v21, v21, 0x30

    move-object/from16 v4, p2

    :cond_3
    :goto_2
    move/from16 v6, v21

    goto :goto_4

    :cond_4
    and-int/lit8 v22, v13, 0x30

    move-object/from16 v4, p2

    if-nez v22, :cond_3

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v23, v10

    goto :goto_3

    :cond_5
    move/from16 v23, v9

    :goto_3
    or-int v21, v21, v23

    goto :goto_2

    :goto_4
    and-int/lit8 v21, v11, 0x4

    if-eqz v21, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v5, v13, 0x180

    if-nez v5, :cond_8

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    goto :goto_5

    :cond_7
    move v5, v7

    :goto_5
    or-int/2addr v6, v5

    :cond_8
    :goto_6
    and-int/lit8 v5, v11, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move/from16 v5, p4

    goto :goto_8

    :cond_a
    and-int/lit16 v5, v13, 0xc00

    if-nez v5, :cond_9

    move/from16 v5, p4

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x800

    goto :goto_7

    :cond_b
    const/16 v24, 0x400

    :goto_7
    or-int v6, v6, v24

    :goto_8
    and-int/lit8 v24, v11, 0x10

    if-eqz v24, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v9, p5

    goto :goto_a

    :cond_d
    and-int/lit16 v9, v13, 0x6000

    if-nez v9, :cond_c

    move-object/from16 v9, p5

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/16 v25, 0x4000

    goto :goto_9

    :cond_e
    const/16 v25, 0x2000

    :goto_9
    or-int v6, v6, v25

    :goto_a
    and-int/lit8 v25, v11, 0x20

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    const/high16 v28, 0x30000

    if-eqz v25, :cond_f

    or-int v6, v6, v28

    goto :goto_c

    :cond_f
    and-int v25, v13, v28

    if-nez v25, :cond_11

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move/from16 v25, v27

    goto :goto_b

    :cond_10
    move/from16 v25, v26

    :goto_b
    or-int v6, v6, v25

    :cond_11
    :goto_c
    and-int/lit8 v25, v11, 0x40

    const/high16 v29, 0x80000

    const/high16 v30, 0x100000

    const/high16 v31, 0x180000

    if-eqz v25, :cond_12

    or-int v6, v6, v31

    move/from16 v10, p7

    goto :goto_e

    :cond_12
    and-int v32, v13, v31

    move/from16 v10, p7

    if-nez v32, :cond_14

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v33

    if-eqz v33, :cond_13

    move/from16 v33, v30

    goto :goto_d

    :cond_13
    move/from16 v33, v29

    :goto_d
    or-int v6, v6, v33

    :cond_14
    :goto_e
    and-int/lit16 v2, v11, 0x80

    const/high16 v34, 0x400000

    const/high16 v35, 0x800000

    const/high16 v36, 0xc00000

    if-eqz v2, :cond_15

    or-int v6, v6, v36

    move-object/from16 v7, p8

    goto :goto_10

    :cond_15
    and-int v37, v13, v36

    move-object/from16 v7, p8

    if-nez v37, :cond_17

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    move/from16 v38, v35

    goto :goto_f

    :cond_16
    move/from16 v38, v34

    :goto_f
    or-int v6, v6, v38

    :cond_17
    :goto_10
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_19

    or-int/2addr v6, v3

    :cond_18
    move-object/from16 v3, p9

    goto :goto_12

    :cond_19
    and-int/2addr v3, v13

    if-nez v3, :cond_18

    move-object/from16 v3, p9

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    const/high16 v38, 0x4000000

    goto :goto_11

    :cond_1a
    const/high16 v38, 0x2000000

    :goto_11
    or-int v6, v6, v38

    :goto_12
    and-int/lit16 v8, v11, 0x200

    const/high16 v33, 0x30000000

    if-eqz v8, :cond_1c

    :goto_13
    or-int v6, v6, v33

    :cond_1b
    const/16 v3, 0x400

    goto :goto_14

    :cond_1c
    and-int v33, v13, v33

    move-object/from16 v3, p10

    if-nez v33, :cond_1b

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1d

    const/high16 v33, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v33, 0x10000000

    goto :goto_13

    :goto_14
    and-int/lit16 v4, v11, 0x400

    if-eqz v4, :cond_1e

    or-int/lit8 v19, v12, 0x6

    :goto_15
    const/16 v3, 0x800

    goto :goto_16

    :cond_1e
    and-int/lit8 v21, v12, 0x6

    move-object/from16 v3, p11

    if-nez v21, :cond_20

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f

    move/from16 v19, v20

    :cond_1f
    or-int v19, v12, v19

    goto :goto_15

    :cond_20
    move/from16 v19, v12

    goto :goto_15

    :goto_16
    and-int/lit16 v5, v11, 0x800

    if-eqz v5, :cond_22

    or-int/lit8 v19, v19, 0x30

    :cond_21
    :goto_17
    move/from16 v3, v19

    goto :goto_19

    :cond_22
    and-int/lit8 v20, v12, 0x30

    move-object/from16 v3, p12

    if-nez v20, :cond_21

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23

    const/16 v32, 0x20

    goto :goto_18

    :cond_23
    const/16 v32, 0x10

    :goto_18
    or-int v19, v19, v32

    goto :goto_17

    :goto_19
    and-int/lit16 v7, v11, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v3, v3, 0x180

    :goto_1a
    const/16 v9, 0x2000

    goto :goto_1c

    :cond_24
    and-int/lit16 v9, v12, 0x180

    if-nez v9, :cond_26

    move-object/from16 v9, p13

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v37, 0x100

    goto :goto_1b

    :cond_25
    const/16 v37, 0x80

    :goto_1b
    or-int v3, v3, v37

    goto :goto_1a

    :cond_26
    move-object/from16 v9, p13

    goto :goto_1a

    :goto_1c
    and-int/lit16 v10, v11, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_29

    move-object/from16 v9, p14

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    const/16 v21, 0x800

    goto :goto_1d

    :cond_28
    const/16 v21, 0x400

    :goto_1d
    or-int v3, v3, v21

    goto :goto_1e

    :cond_29
    move-object/from16 v9, p14

    :goto_1e
    and-int/lit16 v9, v12, 0x6000

    if-nez v9, :cond_2b

    const/16 v9, 0x4000

    and-int/lit16 v14, v11, 0x4000

    move-object/from16 v9, p15

    if-nez v14, :cond_2a

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    const/16 v22, 0x4000

    goto :goto_1f

    :cond_2a
    const/16 v22, 0x2000

    :goto_1f
    or-int v3, v3, v22

    goto :goto_20

    :cond_2b
    move-object/from16 v9, p15

    :goto_20
    and-int v14, v12, v28

    const v19, 0x8000

    if-nez v14, :cond_2e

    and-int v14, v11, v19

    if-nez v14, :cond_2c

    move-object/from16 v14, p16

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2d

    move/from16 v20, v27

    goto :goto_21

    :cond_2c
    move-object/from16 v14, p16

    :cond_2d
    move/from16 v20, v26

    :goto_21
    or-int v3, v3, v20

    goto :goto_22

    :cond_2e
    move-object/from16 v14, p16

    :goto_22
    and-int v20, v11, v26

    if-eqz v20, :cond_2f

    or-int v3, v3, v31

    move-object/from16 v9, p17

    goto :goto_23

    :cond_2f
    and-int v21, v12, v31

    move-object/from16 v9, p17

    if-nez v21, :cond_31

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_30

    move/from16 v29, v30

    :cond_30
    or-int v3, v3, v29

    :cond_31
    :goto_23
    and-int v21, v11, v27

    if-eqz v21, :cond_32

    or-int v3, v3, v36

    move-object/from16 v14, p0

    goto :goto_24

    :cond_32
    and-int v21, v12, v36

    move-object/from16 v14, p0

    if-nez v21, :cond_34

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_33

    move/from16 v34, v35

    :cond_33
    or-int v3, v3, v34

    :cond_34
    :goto_24
    const v21, 0x12492493

    and-int v9, v6, v21

    const v12, 0x12492492

    if-ne v9, v12, :cond_36

    const v9, 0x492493

    and-int/2addr v9, v3

    const v12, 0x492492

    if-ne v9, v12, :cond_36

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_35

    goto :goto_25

    :cond_35
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v33, v1

    goto/16 :goto_34

    :cond_36
    :goto_25
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v13, 0x1

    if-eqz v9, :cond_3a

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_37

    goto :goto_26

    :cond_37
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x4000

    and-int/2addr v0, v11

    if-eqz v0, :cond_38

    const v0, -0xe001

    and-int/2addr v3, v0

    :cond_38
    and-int v0, v11, v19

    if-eqz v0, :cond_39

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_39
    move-object/from16 v14, p6

    move/from16 v22, p7

    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move-object/from16 v27, p12

    move-object/from16 v28, p13

    move-object/from16 v29, p14

    move-object/from16 v30, p15

    move-object/from16 v31, p16

    move-object/from16 v32, p17

    goto/16 :goto_33

    :cond_3a
    :goto_26
    if-eqz v25, :cond_3b

    const/4 v9, 0x0

    goto :goto_27

    :cond_3b
    move/from16 v9, p7

    :goto_27
    const/4 v12, 0x0

    if-eqz v2, :cond_3c

    move-object v2, v12

    goto :goto_28

    :cond_3c
    move-object/from16 v2, p8

    :goto_28
    if-eqz v0, :cond_3d

    move-object v0, v12

    goto :goto_29

    :cond_3d
    move-object/from16 v0, p9

    :goto_29
    if-eqz v8, :cond_3e

    move-object v8, v12

    goto :goto_2a

    :cond_3e
    move-object/from16 v8, p10

    :goto_2a
    if-eqz v4, :cond_3f

    move-object v4, v12

    goto :goto_2b

    :cond_3f
    move-object/from16 v4, p11

    :goto_2b
    if-eqz v5, :cond_40

    move-object v5, v12

    goto :goto_2c

    :cond_40
    move-object/from16 v5, p12

    :goto_2c
    if-eqz v7, :cond_41

    move-object v7, v12

    goto :goto_2d

    :cond_41
    move-object/from16 v7, p13

    :goto_2d
    if-eqz v10, :cond_42

    :goto_2e
    const/16 v10, 0x4000

    goto :goto_2f

    :cond_42
    move-object/from16 v12, p14

    goto :goto_2e

    :goto_2f
    and-int/2addr v10, v11

    if-eqz v10, :cond_43

    invoke-static {v1}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v10

    const v17, -0xe001

    and-int v3, v3, v17

    goto :goto_30

    :cond_43
    move-object/from16 v10, p15

    :goto_30
    and-int v17, v11, v19

    move-object/from16 p7, v0

    if-eqz v17, :cond_44

    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    move-object/from16 p8, v2

    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v2, v0, v0, v0, v0}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    const v0, -0x70001

    and-int/2addr v0, v3

    move v3, v0

    goto :goto_31

    :cond_44
    move-object/from16 p8, v2

    move-object/from16 v2, p16

    :goto_31
    if-eqz v20, :cond_45

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;

    move-object/from16 v14, p6

    invoke-direct {v0, v15, v9, v14, v10}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;)V

    move-object/from16 p9, v2

    const v2, -0x56576ca2

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v24, p7

    move-object/from16 v23, p8

    move-object/from16 v31, p9

    move-object/from16 v32, v0

    :goto_32
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move/from16 v22, v9

    move-object/from16 v30, v10

    move-object/from16 v29, v12

    goto :goto_33

    :cond_45
    move-object/from16 v14, p6

    move-object/from16 p9, v2

    move-object/from16 v24, p7

    move-object/from16 v23, p8

    move-object/from16 v31, p9

    move-object/from16 v32, p17

    goto :goto_32

    :goto_33
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/internal/TextFieldType;->Outlined:Landroidx/compose/material3/internal/TextFieldType;

    shl-int/lit8 v2, v6, 0x3

    and-int/lit8 v4, v2, 0x70

    or-int/lit8 v4, v4, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v2, v4

    shr-int/lit8 v4, v6, 0x3

    and-int/lit16 v5, v4, 0x1c00

    or-int/2addr v2, v5

    shr-int/lit8 v5, v6, 0x9

    const v7, 0xe000

    and-int/2addr v7, v5

    or-int/2addr v2, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v5

    or-int/2addr v2, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v5

    or-int/2addr v2, v7

    shl-int/lit8 v7, v3, 0x15

    const/high16 v8, 0x1c00000

    and-int/2addr v8, v7

    or-int/2addr v2, v8

    const/high16 v8, 0xe000000

    and-int/2addr v8, v7

    or-int/2addr v2, v8

    const/high16 v8, 0x70000000

    and-int/2addr v7, v8

    or-int v19, v2, v7

    shr-int/lit8 v2, v3, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v2, v7

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v2, v6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v2, v5

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x6

    const/high16 v5, 0x380000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v20, v2, v3

    const/16 v21, 0x0

    move-object/from16 v33, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    move/from16 v11, p4

    move/from16 v12, p3

    move/from16 v13, v22

    move-object/from16 v14, p6

    move-object/from16 v15, v31

    move-object/from16 v16, v30

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    :goto_34
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_46

    new-instance v6, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v39, v6

    move-object/from16 v6, p5

    move-object/from16 v40, v7

    move-object/from16 v7, p6

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Landroidx/compose/material3/OutlinedTextFieldDefaults$DecorationBox$2;-><init>(Landroidx/compose/material3/OutlinedTextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v39

    move-object/from16 v0, v40

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_46
    return-void
.end method
