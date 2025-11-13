.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$drawTrack-Imwu3XQ(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;IFFFFDFFFJZ)V
    .locals 16

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    mul-float v3, v3, p5

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float v4, p9, v4

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v6

    neg-float v5, v4

    iget-object v7, v6, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p14, :cond_0

    float-to-int v7, v0

    float-to-int v8, v1

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt___RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v7

    goto :goto_0

    :cond_0
    new-instance v7, Lkotlin/ranges/IntRange;

    float-to-int v8, v0

    float-to-int v9, v1

    invoke-direct {v7, v8, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    :goto_0
    iget v8, v7, Lkotlin/ranges/IntProgression;->first:I

    iget v9, v7, Lkotlin/ranges/IntProgression;->last:I

    iget v10, v7, Lkotlin/ranges/IntProgression;->step:I

    if-gtz v10, :cond_1

    const/4 v2, -0x1

    :cond_1
    invoke-static {v8, v9, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-lez v2, :cond_2

    if-le v8, v9, :cond_3

    :cond_2
    if-gez v2, :cond_4

    if-gt v9, v8, :cond_4

    :cond_3
    :goto_1
    int-to-float v10, v8

    mul-float v11, p6, v10

    add-float/2addr v11, v3

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, p10

    sub-float v11, v11, p11

    iget v12, v7, Lkotlin/ranges/IntProgression;->first:I

    sub-int v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    mul-double v12, v12, p7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float/2addr v11, v4

    iget-object v12, v6, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-eq v8, v9, :cond_4

    add-int/2addr v8, v2

    goto :goto_1

    :cond_4
    iget-object v2, v6, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v6, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    move-object/from16 v5, p1

    move-wide/from16 v7, p12

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v8

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v10

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    const/4 v14, 0x0

    const/16 v15, 0x1e0

    move-object/from16 v5, p1

    move-wide/from16 v6, p12

    move/from16 v12, p9

    invoke-static/range {v5 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFIFI)V

    return-void
.end method

.method public static animationOptions(ZLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;
    .locals 7

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6c567d45

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    :cond_0
    move v3, p0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;-><init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public static colors-q0g_0yA(JJJJJJJJLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;
    .locals 26

    move/from16 v0, p17

    move-object/from16 v1, p16

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x3d74c229

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->primary:J

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->primary:J

    move-wide v7, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p2

    :goto_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->secondary:J

    move-wide v9, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p4

    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    move-wide v11, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p6

    :goto_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide v13, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p8

    :goto_4
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    and-int/lit8 v15, v0, 0x40

    if-eqz v15, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v15

    move-wide/from16 v16, v3

    iget-wide v3, v15, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 v18, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v16, v3

    move-wide/from16 v18, p10

    :goto_5
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    move-wide/from16 v20, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v20, p12

    :goto_6
    and-int/lit16 v0, v0, 0x100

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    move-wide/from16 p0, v13

    iget-wide v13, v0, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    invoke-static {v3, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v13

    move-wide/from16 v22, v13

    goto :goto_7

    :cond_7
    move-wide/from16 p0, v13

    move-wide/from16 v22, p14

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    iget-wide v13, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    invoke-static {v3, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    move-wide/from16 v15, v16

    move-object v4, v0

    const/16 v25, 0x0

    move-wide/from16 v13, p0

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v2

    invoke-direct/range {v4 .. v25}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method


# virtual methods
.method public final Thumb-FJfuzF0(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZFLandroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v2, p1

    move/from16 v7, p7

    const/16 v0, 0x20

    const/16 v1, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v5, p6

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x30f6a7c1

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v7, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v7, 0xe

    if-nez v8, :cond_2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v7, 0x70

    if-nez v9, :cond_3

    move-object/from16 v9, p2

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v0

    goto :goto_2

    :cond_5
    move v10, v1

    :goto_2
    or-int/2addr v8, v10

    :goto_3
    and-int/lit16 v10, v7, 0x380

    if-nez v10, :cond_8

    and-int/lit8 v10, p8, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v10, p3

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    goto :goto_5

    :cond_8
    move-object/from16 v10, p3

    :goto_5
    and-int/lit8 v26, p8, 0x8

    if-eqz v26, :cond_9

    or-int/lit16 v8, v8, 0xc00

    move/from16 v14, p4

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v7, 0x1c00

    move/from16 v14, p4

    if-nez v11, :cond_b

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v8, v11

    :cond_b
    :goto_7
    and-int/lit8 v27, p8, 0x10

    if-eqz v27, :cond_c

    or-int/lit16 v8, v8, 0x6000

    move/from16 v15, p5

    goto :goto_9

    :cond_c
    const v11, 0xe000

    and-int/2addr v11, v7

    move/from16 v15, p5

    if-nez v11, :cond_e

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_d

    const/16 v11, 0x4000

    goto :goto_8

    :cond_d
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v8, v11

    :cond_e
    :goto_9
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_10

    const/high16 v0, 0x30000

    or-int/2addr v8, v0

    :cond_f
    move-object/from16 v0, p0

    goto :goto_b

    :cond_10
    const/high16 v0, 0x70000

    and-int/2addr v0, v7

    if-nez v0, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/high16 v11, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v11, 0x10000

    :goto_a
    or-int/2addr v8, v11

    :goto_b
    const v11, 0x5b6db

    and-int/2addr v8, v11

    const v11, 0x12492

    if-ne v8, v11, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    move-object v4, v10

    move v6, v15

    goto/16 :goto_13

    :cond_13
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_15

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    move-object v1, v10

    move v4, v14

    goto :goto_11

    :cond_15
    :goto_d
    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_e

    :cond_16
    move-object v3, v9

    :goto_e
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_17

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const-wide/16 v18, 0x0

    const/16 v25, 0x3ff

    move-object/from16 v24, v5

    invoke-static/range {v8 .. v25}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->colors-q0g_0yA(JJJJJJJJLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    move-result-object v4

    move-object v10, v4

    :cond_17
    if-eqz v26, :cond_18

    move v4, v6

    goto :goto_f

    :cond_18
    move/from16 v4, p4

    :goto_f
    if-eqz v27, :cond_19

    int-to-float v1, v1

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v15, v1

    :goto_10
    move-object v1, v10

    goto :goto_11

    :cond_19
    move/from16 v15, p5

    goto :goto_10

    :goto_11
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v8, -0x63c5bbdb

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v9, :cond_1a

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v2

    :cond_1a
    check-cast v8, Landroidx/compose/runtime/State;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget v11, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v5, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v14, v5, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    const/4 v6, 0x0

    if-eqz v14, :cond_1f

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_1b

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1b
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_12
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1c

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    :cond_1c
    invoke-static {v11, v5, v11, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1d
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-static {v6, v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    invoke-static {v6, v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v11

    invoke-static {v6, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v11

    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;

    invoke-direct {v6, v1, v4}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Z)V

    const v9, -0x2142d15d

    invoke-static {v9, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v12, 0x0

    const v6, 0x30d80

    const/16 v16, 0x12

    move-object v14, v5

    move/from16 v17, v15

    move v15, v6

    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move v14, v4

    move/from16 v6, v17

    move-object v4, v1

    :goto_13
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v14

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$2;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZFII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v6
.end method

.method public final Track(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;Landroidx/compose/runtime/Composer;II)V
    .locals 37

    move-object/from16 v3, p2

    move-object/from16 v15, p6

    move-object/from16 v14, p7

    move/from16 v13, p9

    move/from16 v12, p10

    const/16 v0, 0x80

    const/16 v1, 0x20

    const/4 v2, 0x6

    const/16 v4, 0x10

    move-object/from16 v11, p8

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x43f91398

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v34, 0x1

    and-int/lit8 v5, v12, 0x1

    const/4 v10, 0x4

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v5, v13, 0x6

    move-object/from16 v9, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v13, 0xe

    move-object/from16 v9, p1

    if-nez v5, :cond_2

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    or-int/2addr v5, v13

    goto :goto_1

    :cond_2
    move v5, v13

    :goto_1
    and-int/lit8 v7, v12, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v13, 0x70

    if-nez v7, :cond_5

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    or-int/2addr v5, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v12, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v13, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p3

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    :goto_4
    or-int v5, v5, v16

    :goto_5
    and-int/lit8 v16, v12, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v10, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v13, 0x1c00

    if-nez v10, :cond_9

    move/from16 v10, p4

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v5, v5, v17

    :goto_7
    const v17, 0xe000

    and-int v17, v13, v17

    if-nez v17, :cond_d

    and-int/lit8 v17, v12, 0x10

    move-object/from16 v2, p5

    if-nez v17, :cond_c

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    const/16 v17, 0x2000

    :goto_8
    or-int v5, v5, v17

    goto :goto_9

    :cond_d
    move-object/from16 v2, p5

    :goto_9
    and-int/2addr v1, v12

    const/high16 v35, 0x70000

    if-eqz v1, :cond_e

    const/high16 v1, 0x30000

    :goto_a
    or-int/2addr v5, v1

    goto :goto_b

    :cond_e
    and-int v1, v13, v35

    if-nez v1, :cond_10

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v1, 0x10000

    goto :goto_a

    :cond_10
    :goto_b
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_11

    const/high16 v1, 0x180000

    :goto_c
    or-int/2addr v5, v1

    goto :goto_d

    :cond_11
    const/high16 v1, 0x380000

    and-int/2addr v1, v13

    if-nez v1, :cond_13

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v1, 0x80000

    goto :goto_c

    :cond_13
    :goto_d
    and-int/2addr v0, v12

    if-eqz v0, :cond_14

    const/high16 v0, 0xc00000

    or-int/2addr v5, v0

    move-object/from16 v1, p0

    goto :goto_f

    :cond_14
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v13

    move-object/from16 v1, p0

    if-nez v0, :cond_16

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v5, v0

    :cond_16
    :goto_f
    const v0, 0x16db6db

    and-int/2addr v0, v5

    const v10, 0x492492

    if-ne v0, v10, :cond_18

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p4

    move-object v6, v2

    move-object v4, v8

    move-object v1, v11

    goto/16 :goto_18

    :cond_18
    :goto_10
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    const v10, -0xe001

    if-eqz v0, :cond_1b

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_12

    :cond_19
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1a

    and-int/2addr v5, v10

    :cond_1a
    move/from16 v24, p4

    :goto_11
    move-object/from16 v25, v2

    move v0, v5

    move-object v2, v8

    goto :goto_14

    :cond_1b
    :goto_12
    if-eqz v7, :cond_1c

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v0

    :cond_1c
    if-eqz v16, :cond_1d

    move/from16 v0, v34

    goto :goto_13

    :cond_1d
    move/from16 v0, p4

    :goto_13
    and-int/2addr v4, v12

    if-eqz v4, :cond_1e

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v33, 0x3ff

    move-object/from16 v32, v11

    invoke-static/range {v16 .. v33}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->colors-q0g_0yA(JJJJJJJJLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    move-result-object v2

    and-int/2addr v5, v10

    :cond_1e
    move/from16 v24, v0

    goto :goto_11

    :goto_14
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v10, 0x0

    if-ne v4, v5, :cond_1f

    move/from16 v26, v34

    goto :goto_15

    :cond_1f
    move/from16 v26, v10

    :goto_15
    const v4, -0x634208bd

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v8, :cond_20

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_20
    check-cast v4, Landroidx/compose/runtime/State;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    int-to-float v5, v6

    iget v6, v14, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->amplitude:F

    div-float v27, v6, v5

    iget-boolean v5, v15, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->flatLineOnDrag:Z

    const/16 v16, 0x0

    if-eqz v5, :cond_22

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_21

    iget-boolean v4, v15, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->animateWave:Z

    if-nez v4, :cond_22

    :cond_21
    move/from16 v5, v16

    goto :goto_16

    :cond_22
    move/from16 v5, v27

    :goto_16
    const/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v4, v10, v6, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    const-string v7, "Wave amplitude"

    const/4 v4, 0x0

    const/16 v17, 0xc30

    const/16 v18, 0x14

    move-object/from16 v36, v8

    move-object v8, v4

    move-object v9, v11

    const/high16 v4, 0x20000

    move/from16 v10, v17

    move-object v1, v11

    move/from16 v11, v18

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v28

    const v5, -0x634206cb

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v16

    const/high16 v6, 0x3f800000    # 1.0f

    if-gtz v5, :cond_24

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;

    move-object v4, v10

    move/from16 v5, v26

    move-object/from16 v6, p1

    move-object/from16 v7, v25

    move/from16 v8, v24

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;-><init>(ZLandroidx/compose/material3/SliderState;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZLcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;)V

    const/4 v11, 0x0

    invoke-static {v0, v10, v1, v11}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_23

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v9, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object v13, v10

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$2;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;II)V

    iput-object v13, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_23
    return-void

    :cond_24
    move-object v9, v2

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v2, "Wave infinite transition"

    invoke-static {v2, v1, v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v16

    const v2, -0x63420039

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int v0, v0, v35

    if-ne v0, v4, :cond_25

    goto :goto_17

    :cond_25
    move/from16 v34, v11

    :goto_17
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v34, :cond_26

    move-object/from16 v2, v36

    if-ne v0, v2, :cond_27

    :cond_26
    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$phaseShiftFloat$2$1;

    invoke-direct {v0, v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$phaseShiftFloat$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_27
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v0

    sget-object v2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    const-wide/16 v4, 0x0

    const/4 v7, 0x4

    invoke-static {v7, v0, v2, v4, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v19

    const-string v20, "Wave phase shift"

    const/16 v17, 0x0

    iget v0, v14, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->frequency:F

    const/16 v22, 0x7038

    const/16 v23, 0x0

    move/from16 v18, v0

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v2

    invoke-static {v9, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;

    move-object v4, v8

    move/from16 v5, v26

    move-object/from16 v6, p1

    move/from16 v7, v24

    move-object v3, v8

    move-object/from16 v8, p6

    move-object/from16 v16, v9

    move v9, v0

    move-object v0, v10

    move-object/from16 v10, p7

    move v15, v11

    move-object/from16 v11, v25

    move/from16 v12, v27

    move-object v13, v2

    move-object/from16 v14, v28

    invoke-direct/range {v4 .. v14}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;-><init>(ZLandroidx/compose/material3/SliderState;ZLcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;FLcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-static {v0, v3, v1, v15}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v4, v16

    move/from16 v5, v24

    move-object/from16 v6, v25

    :goto_18
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_28

    new-instance v12, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$4;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void
.end method
