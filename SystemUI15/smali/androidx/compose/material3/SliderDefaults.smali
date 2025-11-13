.class public final Landroidx/compose/material3/SliderDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SliderDefaults;

.field public static final TickSize:F

.field public static final TrackStopIndicatorSize:F

.field public static final trackPath:Landroidx/compose/ui/graphics/AndroidPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/SliderDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SliderDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/tokens/SliderTokens;->StopIndicatorSize:F

    sput v0, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    sput v0, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/AndroidPath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;
    .locals 30

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/material3/SliderColors;

    sget-object v2, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/tokens/SliderTokens;->HandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    sget-object v2, Landroidx/compose/material3/tokens/SliderTokens;->ActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    sget-object v7, Landroidx/compose/material3/tokens/SliderTokens;->InactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget-object v2, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    sget v2, Landroidx/compose/material3/tokens/SliderTokens;->DisabledHandleOpacity:F

    invoke-static {v2, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v14

    move-wide/from16 v16, v12

    iget-wide v12, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v14, v15, v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v13

    sget-object v2, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v18, v13

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget v7, Landroidx/compose/material3/tokens/SliderTokens;->DisabledActiveTrackOpacity:F

    invoke-static {v7, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v24

    sget-object v12, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/SliderTokens;->DisabledInactiveTrackOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v26

    invoke-static {v0, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    invoke-static {v15, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v28

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    invoke-static {v7, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object v2, v1

    move-wide v7, v8

    move-wide v9, v10

    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    move-wide/from16 v15, v24

    move-wide/from16 v17, v26

    move-wide/from16 v19, v28

    invoke-direct/range {v2 .. v23}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultSliderColorsCached:Landroidx/compose/material3/SliderColors;

    :cond_0
    return-object v1
.end method

.method public static drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V
    .locals 21

    move/from16 v0, p7

    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v11

    move/from16 v0, p8

    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v9

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    const/4 v13, 0x0

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    move-object v0, v14

    move-wide v5, v11

    move-wide v7, v9

    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/AndroidPath;

    invoke-static {v0, v14}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    const/16 v20, 0x3c

    const/16 v19, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v0

    move-wide/from16 v17, p5

    invoke-static/range {v15 .. v20}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    return-void
.end method


# virtual methods
.method public final Thumb-9LiSoMs(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v2, p1

    move/from16 v8, p8

    const/16 v0, 0x10

    const/16 v1, 0x20

    move-object/from16 v3, p7

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x114d4821

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p9, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v5, :cond_0

    or-int/lit8 v5, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v8, 0x6

    if-nez v5, :cond_2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    or-int/2addr v5, v8

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    and-int/lit8 v9, p9, 0x2

    if-eqz v9, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v10, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v8, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p2

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v1

    goto :goto_2

    :cond_5
    move v11, v0

    :goto_2
    or-int/2addr v5, v11

    :goto_3
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_8

    and-int/lit8 v11, p9, 0x4

    if-nez v11, :cond_6

    move-object/from16 v11, p3

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v11, p3

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v5, v12

    goto :goto_5

    :cond_8
    move-object/from16 v11, p3

    :goto_5
    and-int/lit8 v12, p9, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v13, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v8, 0xc00

    if-nez v13, :cond_9

    move/from16 v13, p4

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v5, v14

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-wide/from16 v14, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v8, 0x6000

    if-nez v14, :cond_c

    move-wide/from16 v14, p5

    invoke-virtual {v3, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v5, v5, v16

    :goto_9
    and-int/lit8 v16, p9, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v5, v5, v17

    move-object/from16 v1, p0

    goto :goto_b

    :cond_f
    and-int v16, v8, v17

    move-object/from16 v1, p0

    if-nez v16, :cond_11

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v5, v5, v17

    :cond_11
    :goto_b
    const v17, 0x12493

    and-int v6, v5, v17

    const v7, 0x12492

    if-ne v6, v7, :cond_13

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v7, v10

    move-object v4, v11

    :goto_c
    move v5, v13

    goto/16 :goto_15

    :cond_13
    :goto_d
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_14

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_14
    const/4 v6, 0x4

    goto :goto_e

    :cond_15
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v6, 0x4

    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_16

    and-int/lit16 v5, v5, -0x381

    :cond_16
    move-object v7, v10

    move-object v6, v11

    goto :goto_11

    :goto_e
    if-eqz v9, :cond_17

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_f

    :cond_17
    move-object v7, v10

    :goto_f
    and-int/lit8 v9, p9, 0x4

    if-eqz v9, :cond_18

    invoke-static {v3}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v6

    and-int/lit16 v5, v5, -0x381

    goto :goto_10

    :cond_18
    move-object v6, v11

    :goto_10
    if-eqz v12, :cond_19

    move v13, v4

    :cond_19
    if-eqz v0, :cond_1a

    sget-wide v9, Landroidx/compose/material3/SliderKt;->ThumbSize:J

    move-wide v14, v9

    :cond_1a
    :goto_11
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v9, :cond_1b

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit8 v5, v5, 0xe

    const/4 v10, 0x4

    if-ne v5, v10, :cond_1c

    move v5, v4

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_1d

    if-ne v10, v9, :cond_1e

    :cond_1d
    new-instance v10, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;

    const/4 v5, 0x0

    invoke-direct {v10, v2, v0, v5}, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1f

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v0, v4

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v14, v15}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v9, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v4, v11

    or-long/2addr v4, v9

    goto :goto_13

    :cond_1f
    move-wide v4, v14

    :goto_13
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v4

    invoke-static {v7, v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v13, :cond_20

    iget-wide v4, v6, Landroidx/compose/material3/SliderColors;->thumbColor:J

    goto :goto_14

    :cond_20
    iget-wide v4, v6, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    :goto_14
    sget-object v9, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/material3/tokens/SliderTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v9, v3}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v9

    invoke-static {v0, v4, v5, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    move-object v4, v6

    goto/16 :goto_c

    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v11, Landroidx/compose/material3/SliderDefaults$Thumb$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide v6, v14

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults$Thumb$2;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public final Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 26

    move-object/from16 v14, p1

    move/from16 v15, p10

    move/from16 v13, p11

    const/16 v0, 0x80

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x10

    move-object/from16 v12, p9

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x2fab503

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, v13, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v15, 0x6

    if-nez v7, :cond_2

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    or-int/2addr v7, v15

    goto :goto_1

    :cond_2
    move v7, v15

    :goto_1
    and-int/2addr v3, v13

    if-eqz v3, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move-object/from16 v8, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v15, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p2

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v2

    goto :goto_2

    :cond_5
    move v9, v5

    :goto_2
    or-int/2addr v7, v9

    :goto_3
    and-int/2addr v4, v13

    if-eqz v4, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move/from16 v9, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v15, 0x180

    if-nez v9, :cond_6

    move/from16 v9, p3

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    move v10, v0

    :goto_4
    or-int/2addr v7, v10

    :goto_5
    and-int/lit16 v10, v15, 0xc00

    if-nez v10, :cond_b

    and-int/lit8 v10, v13, 0x8

    if-nez v10, :cond_9

    move-object/from16 v10, p4

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v10, p4

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v7, v7, v16

    goto :goto_7

    :cond_b
    move-object/from16 v10, p4

    :goto_7
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_e

    and-int/lit8 v11, v13, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v11, p5

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v7, v7, v17

    goto :goto_9

    :cond_e
    move-object/from16 v11, p5

    :goto_9
    and-int/2addr v2, v13

    const/high16 v18, 0x30000

    if-eqz v2, :cond_f

    or-int v7, v7, v18

    move-object/from16 v6, p6

    goto :goto_b

    :cond_f
    and-int v18, v15, v18

    move-object/from16 v6, p6

    if-nez v18, :cond_11

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v19, 0x10000

    :goto_a
    or-int v7, v7, v19

    :cond_11
    :goto_b
    and-int/lit8 v19, v13, 0x40

    const/high16 v21, 0x180000

    if-eqz v19, :cond_12

    or-int v7, v7, v21

    move/from16 v5, p7

    goto :goto_d

    :cond_12
    and-int v21, v15, v21

    move/from16 v5, p7

    if-nez v21, :cond_14

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x80000

    :goto_c
    or-int v7, v7, v22

    :cond_14
    :goto_d
    and-int/2addr v0, v13

    const/high16 v23, 0xc00000

    if-eqz v0, :cond_16

    or-int v7, v7, v23

    :cond_15
    :goto_e
    const/16 v1, 0x100

    goto :goto_10

    :cond_16
    and-int v23, v15, v23

    move/from16 v1, p8

    if-nez v23, :cond_15

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_17

    const/high16 v24, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v24, 0x400000

    :goto_f
    or-int v7, v7, v24

    goto :goto_e

    :goto_10
    and-int/lit16 v5, v13, 0x100

    const/high16 v1, 0x6000000

    if-eqz v5, :cond_18

    or-int/2addr v7, v1

    move-object/from16 v5, p0

    goto :goto_12

    :cond_18
    and-int/2addr v1, v15

    move-object/from16 v5, p0

    if-nez v1, :cond_1a

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v1, 0x2000000

    :goto_11
    or-int/2addr v7, v1

    :cond_1a
    :goto_12
    const v1, 0x2492493

    and-int/2addr v1, v7

    const v5, 0x2492492

    if-ne v1, v5, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v7, v6

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v15, v12

    move/from16 v8, p7

    move/from16 v9, p8

    goto/16 :goto_24

    :cond_1c
    :goto_13
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v5, v15, 0x1

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const v24, -0xe001

    const/4 v15, 0x0

    if-eqz v5, :cond_20

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_1e

    and-int/lit16 v7, v7, -0x1c01

    :cond_1e
    const/16 v0, 0x10

    and-int/2addr v0, v13

    if-eqz v0, :cond_1f

    and-int v7, v7, v24

    :cond_1f
    move/from16 v20, p7

    move/from16 v22, p8

    :goto_14
    move-object/from16 v19, v6

    move-object/from16 v25, v11

    move-object v11, v8

    move-object v8, v10

    move v10, v9

    move-object/from16 v9, v25

    goto/16 :goto_1a

    :cond_20
    :goto_15
    if-eqz v3, :cond_21

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v3

    :cond_21
    if-eqz v4, :cond_22

    const/4 v9, 0x1

    :cond_22
    and-int/lit8 v3, v13, 0x8

    if-eqz v3, :cond_23

    invoke-static {v12}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v3

    and-int/lit16 v7, v7, -0x1c01

    move-object v10, v3

    :cond_23
    const/16 v3, 0x10

    and-int/2addr v3, v13

    if-eqz v3, :cond_2a

    and-int/lit16 v3, v7, 0x1c00

    xor-int/lit16 v3, v3, 0xc00

    const/16 v4, 0x800

    if-le v3, v4, :cond_24

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    and-int/lit16 v3, v7, 0xc00

    if-ne v3, v4, :cond_26

    :cond_25
    const/4 v3, 0x1

    goto :goto_16

    :cond_26
    move v3, v15

    :goto_16
    and-int/lit16 v4, v7, 0x380

    const/16 v5, 0x100

    if-ne v4, v5, :cond_27

    const/4 v4, 0x1

    goto :goto_17

    :cond_27
    move v4, v15

    :goto_17
    or-int/2addr v3, v4

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_29

    :cond_28
    new-instance v4, Landroidx/compose/material3/SliderDefaults$Track$4$1;

    invoke-direct {v4, v10, v9}, Landroidx/compose/material3/SliderDefaults$Track$4$1;-><init>(Landroidx/compose/material3/SliderColors;Z)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function2;

    and-int v4, v7, v24

    move-object v11, v3

    move v7, v4

    :cond_2a
    if-eqz v2, :cond_2b

    sget-object v2, Landroidx/compose/material3/SliderDefaults$Track$5;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$5;

    move-object v6, v2

    :cond_2b
    if-eqz v19, :cond_2c

    sget v2, Landroidx/compose/material3/SliderKt;->ThumbTrackGapSize:F

    goto :goto_18

    :cond_2c
    move/from16 v2, p7

    :goto_18
    if-eqz v0, :cond_2d

    sget v0, Landroidx/compose/material3/SliderKt;->TrackInsideCornerSize:F

    move/from16 v22, v0

    :goto_19
    move/from16 v20, v2

    goto :goto_14

    :cond_2d
    move/from16 v22, p8

    goto :goto_19

    :goto_1a
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8, v10, v15}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {v8, v10, v0}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v4

    if-eqz v10, :cond_2e

    move-object/from16 p9, v1

    iget-wide v0, v8, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    goto :goto_1b

    :cond_2e
    move-object/from16 p9, v1

    iget-wide v0, v8, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    :goto_1b
    if-eqz v10, :cond_2f

    move-object/from16 p2, v9

    move/from16 v24, v10

    iget-wide v9, v8, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    goto :goto_1c

    :cond_2f
    move-object/from16 p2, v9

    move/from16 v24, v10

    iget-wide v9, v8, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    :goto_1c
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v11, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget v15, Landroidx/compose/material3/SliderKt;->TrackHeight:F

    invoke-static {v6, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p3, v8

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v15, v8, :cond_30

    const/high16 v8, 0x43340000    # 180.0f

    goto :goto_1d

    :cond_30
    const/4 v8, 0x0

    :goto_1d
    invoke-static {v6, v8}, Landroidx/compose/ui/draw/RotateKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v12, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v12, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v12, v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    or-int/2addr v6, v8

    const/high16 v8, 0x380000

    and-int/2addr v8, v7

    move-wide/from16 p4, v0

    const/high16 v0, 0x100000

    if-ne v8, v0, :cond_31

    const/4 v1, 0x1

    goto :goto_1e

    :cond_31
    const/4 v1, 0x0

    :goto_1e
    or-int v0, v6, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v7

    const/high16 v6, 0x800000

    if-ne v1, v6, :cond_32

    const/4 v1, 0x1

    goto :goto_1f

    :cond_32
    const/4 v1, 0x0

    :goto_1f
    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v7

    xor-int/lit16 v1, v1, 0x6000

    const/16 v6, 0x4000

    move-object/from16 v8, p2

    if-le v1, v6, :cond_33

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_33
    and-int/lit16 v1, v7, 0x6000

    if-ne v1, v6, :cond_35

    :cond_34
    const/4 v1, 0x1

    goto :goto_20

    :cond_35
    const/4 v1, 0x0

    :goto_20
    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v7

    const/high16 v6, 0x20000

    if-ne v1, v6, :cond_36

    const/4 v6, 0x1

    goto :goto_21

    :cond_36
    const/4 v6, 0x0

    :goto_21
    or-int/2addr v0, v6

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_38

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_37

    goto :goto_22

    :cond_37
    move-object/from16 v16, p3

    move-object/from16 v17, v8

    move-object/from16 v21, v11

    move-object/from16 p2, v15

    move/from16 v18, v24

    move-object v15, v12

    goto :goto_23

    :cond_38
    :goto_22
    new-instance v6, Landroidx/compose/material3/SliderDefaults$Track$6$1;

    move-wide/from16 v16, p4

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v14, v6

    move-wide/from16 v6, v16

    move-object/from16 v16, p3

    move-object/from16 v17, v8

    move-wide v8, v9

    move/from16 v18, v24

    move/from16 v10, v20

    move-object/from16 v21, v11

    move/from16 v11, v22

    move-object/from16 p2, v15

    move-object v15, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v19

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/SliderDefaults$Track$6$1;-><init>(Landroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v14

    :goto_23
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v2, p2

    const/4 v0, 0x0

    invoke-static {v2, v1, v15, v0}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v4, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v3, v21

    move/from16 v9, v22

    :goto_24
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_39

    new-instance v13, Landroidx/compose/material3/SliderDefaults$Track$7;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults$Track$7;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void
.end method
