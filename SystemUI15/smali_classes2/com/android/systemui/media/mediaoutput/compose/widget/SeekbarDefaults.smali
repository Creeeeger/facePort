.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

.field public static final thumbSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    const/16 v0, 0xd

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->thumbSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colors-q0g_0yA(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;
    .locals 26

    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x6f06adf    # 9.0435E-35f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;->ThumbFillColor:Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-static {v1, v0}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v3

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;->ActivateTrackColor:Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-static {v1, v0}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;->ActivateTickColor:Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-static {v1, v0}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v7

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;->InactivateTrackColor:Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-static {v1, v0}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v9

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;->InactiveTickColor:Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-static {v1, v0}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v3, v4, v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v13

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    move-wide v15, v13

    iget-wide v13, v2, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v7, v8, v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v17

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v2

    const v13, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v13

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v19

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    iget-wide v1, v1, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v21

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v1

    mul-float/2addr v1, v13

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Landroidx/compose/material3/SliderColors;

    move-object v2, v1

    const/16 v23, 0x0

    move-wide v13, v15

    move-wide/from16 v15, v19

    move-wide/from16 v19, v24

    invoke-direct/range {v2 .. v23}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method


# virtual methods
.method public final SliderContainer(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p8

    const/16 v0, 0x20

    const/16 v1, 0x10

    const/4 v2, 0x4

    move-object/from16 v7, p7

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x3937cb41

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v3, p9, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    move-object/from16 v5, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    move-object/from16 v5, p1

    if-nez v3, :cond_2

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v11, p9, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v12, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v10, 0x70

    if-nez v12, :cond_3

    move-object/from16 v12, p2

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v0

    goto :goto_2

    :cond_5
    move v13, v1

    :goto_2
    or-int/2addr v3, v13

    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v2, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_6

    move-object/from16 v2, p3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v3, v13

    :goto_5
    and-int/lit8 v13, p9, 0x8

    if-eqz v13, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v13, v10, 0x1c00

    if-nez v13, :cond_b

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v3, v13

    :cond_b
    :goto_7
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_c

    or-int/lit16 v3, v3, 0x2000

    :cond_c
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_d

    const/high16 v0, 0x30000

    :goto_8
    or-int/2addr v3, v0

    goto :goto_9

    :cond_d
    const/high16 v0, 0x70000

    and-int/2addr v0, v10

    if-nez v0, :cond_f

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v0, 0x10000

    goto :goto_8

    :cond_f
    :goto_9
    if-ne v13, v1, :cond_11

    const v0, 0x5b6db

    and-int/2addr v0, v3

    const v1, 0x12492

    if-ne v0, v1, :cond_11

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v12

    move-object v12, v7

    move-object/from16 v7, p5

    goto/16 :goto_15

    :cond_11
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v10, 0x1

    const v14, -0xe001

    const/4 v15, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    if-eqz v13, :cond_13

    and-int/2addr v3, v14

    :cond_13
    move-object/from16 v6, p5

    :goto_b
    move-object v0, v12

    goto/16 :goto_10

    :cond_14
    :goto_c
    if-eqz v11, :cond_15

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v0

    :cond_15
    if-eqz v13, :cond_13

    const v0, 0x58ab7502

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v11

    if-eqz v11, :cond_1a

    instance-of v0, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_16

    move-object v0, v11

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_d
    move-object v13, v0

    goto :goto_e

    :cond_16
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_d

    :goto_e
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    sget v16, Lkotlin/Result;->$r8$clinit:I

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    instance-of v6, v0, Lkotlin/Result$Failure;

    if-eqz v6, :cond_18

    const/4 v0, 0x0

    :cond_18
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_19

    invoke-static {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_19
    const-class v6, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v11, v6, v0, v13}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    and-int/2addr v3, v14

    move-object v6, v0

    goto :goto_b

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_10
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v11, v12, :cond_1b

    const/16 v17, 0x1

    goto :goto_11

    :cond_1b
    move/from16 v17, v15

    :goto_11
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v13, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v1, v7, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-eqz v1, :cond_23

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v1, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1c
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_12
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1d

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    :cond_1d
    invoke-static {v13, v7, v13, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v3, 0x9

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v8, v7, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v6, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isSupportVolumeInteraction:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$2;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    const/4 v13, 0x0

    const/16 v15, 0x38

    move-object v14, v7

    const/4 v3, 0x0

    move/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/material3/SliderState;

    if-eqz v11, :cond_1f

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v11, 0x0

    :goto_13
    const v1, 0x76a9ec24

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v11, :cond_20

    move v11, v3

    move-object/from16 v17, v6

    move-object v12, v7

    goto :goto_14

    :cond_20
    const v1, -0xe65ffe9

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v12, :cond_21

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v12, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v12}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v13, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;

    invoke-direct {v13, v11, v12}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v1, v13}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v13, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v13, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v1, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/FocusableKt;->focusable$default(Landroidx/compose/ui/Modifier;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v15, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v11

    move v11, v3

    move-object/from16 v3, p3

    move/from16 v4, v17

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    move-object v6, v12

    move-object v12, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v14, v15}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v12, v11}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    :goto_14
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v0

    move-object/from16 v7, v17

    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$2;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function3;II)V

    iput-object v11, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void

    :cond_23
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v1, 0x0

    throw v1
.end method

.method public final Thumb-FJfuzF0(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZFLandroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v5, p6

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v8, -0x4f2f85f7

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v15, 0x1

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

    move v10, v1

    goto :goto_2

    :cond_5
    move v10, v0

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
    and-int/lit8 v11, p8, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move/from16 v12, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v7, 0x1c00

    if-nez v12, :cond_9

    move/from16 v12, p4

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v8, v13

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v8, v8, 0x6000

    goto :goto_9

    :cond_c
    const v0, 0xe000

    and-int/2addr v0, v7

    if-nez v0, :cond_e

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_8

    :cond_d
    const/16 v0, 0x2000

    :goto_8
    or-int/2addr v8, v0

    :cond_e
    :goto_9
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_f

    const/high16 v0, 0x30000

    or-int/2addr v8, v0

    move-object/from16 v1, p0

    goto :goto_b

    :cond_f
    const/high16 v0, 0x70000

    and-int/2addr v0, v7

    move-object/from16 v1, p0

    if-nez v0, :cond_11

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v0, 0x10000

    :goto_a
    or-int/2addr v8, v0

    :cond_11
    :goto_b
    const v0, 0x5b6db

    and-int/2addr v0, v8

    const v8, 0x12492

    if-ne v0, v8, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_10

    :cond_13
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_15
    move-object v0, v9

    move-object v3, v10

    move v4, v12

    goto :goto_e

    :cond_16
    :goto_d
    if-eqz v3, :cond_17

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v0

    :cond_17
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_18

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->colors-q0g_0yA(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    move-object v10, v0

    :cond_18
    if-eqz v11, :cond_15

    move-object v0, v9

    move-object v3, v10

    move v4, v15

    :goto_e
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v8, -0x3eb1d260

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v9, :cond_19

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v2

    :cond_19
    check-cast v8, Landroidx/compose/runtime/State;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

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

    const/4 v15, 0x0

    if-eqz v14, :cond_1e

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_1a

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_f
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1b

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    :cond_1b
    invoke-static {v11, v5, v11, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1c
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/16 v16, 0x1

    xor-int/lit8 v8, v8, 0x1

    const/4 v9, 0x3

    invoke-static {v15, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-static {v15, v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v10

    invoke-static {v15, v11, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/TweenSpec;FI)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v11

    invoke-static {v15, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v11

    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Thumb$1$1;

    invoke-direct {v9, v3, v4}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Thumb$1$1;-><init>(Landroidx/compose/material3/SliderColors;Z)V

    const v12, 0x81529e7

    invoke-static {v12, v5, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v12, 0x0

    const v15, 0x30d80

    const/16 v17, 0x12

    move-object v14, v5

    move/from16 v16, v17

    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move v12, v4

    move-object v4, v3

    move-object v3, v0

    :goto_10
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1d

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Thumb$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v12

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Thumb$2;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZFII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void

    :cond_1e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v15
.end method

.method public final Track(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v4, 0x4

    move-object/from16 v5, p5

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x3f6d6156

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x1

    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v6, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v6, 0x70

    if-nez v1, :cond_5

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    or-int/2addr v7, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v4, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v6, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p3

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v7, v8

    :goto_5
    and-int/lit16 v8, v6, 0x1c00

    if-nez v8, :cond_b

    and-int/lit8 v8, p7, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p4

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v8, p4

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v7, v9

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v7, v7, 0x6000

    move-object/from16 v14, p0

    goto :goto_9

    :cond_c
    const v0, 0xe000

    and-int/2addr v0, v6

    move-object/from16 v14, p0

    if-nez v0, :cond_e

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_8

    :cond_d
    const/16 v0, 0x2000

    :goto_8
    or-int/2addr v7, v0

    :cond_e
    :goto_9
    const v0, 0xb6db

    and-int/2addr v0, v7

    const/16 v7, 0x2492

    if-ne v0, v7, :cond_10

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_f

    :cond_10
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v0, v4

    :cond_12
    move-object v1, v8

    goto :goto_d

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_14
    move-object v0, v4

    :goto_c
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_12

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->colors-q0g_0yA(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v1

    :goto_d
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v4, -0x3e2e1f7a

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v15, :cond_15

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v7, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v4, Landroidx/compose/runtime/MutableState;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v8, 0x0

    const-string/jumbo v9, "trackRound"

    const/16 v11, 0x180

    const/16 v16, 0xa

    move-object v10, v5

    move v13, v12

    move/from16 v12, v16

    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    const v7, -0x3e2e1ed8

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_16

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v12, v7

    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    const-string/jumbo v9, "trackHeight"

    const/16 v11, 0x180

    const/16 v17, 0xa

    move-object v10, v5

    move-object/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    const v8, -0x3e2e1e35

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v15, :cond_17

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v3

    :cond_17
    check-cast v8, Landroidx/compose/runtime/State;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    const v10, -0x3e2e1dfa

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    if-ne v10, v15, :cond_18

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$1$1;

    move-object/from16 v12, v18

    invoke-direct {v10, v8, v12, v4, v11}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v9, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    iget v7, v7, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    iget v7, v7, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v7, v8, v5, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v7

    iget v8, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v5, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v12, v5, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_1f

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_19

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_19
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_1a

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    :cond_1a
    invoke-static {v8, v5, v8, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1b
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    iget-object v7, v2, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v7, Lkotlin/ranges/ClosedFloatRange;

    iget v8, v7, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget v9, v7, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr v8, v9

    iget-object v9, v2, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v9

    iget v7, v7, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr v9, v7

    const v7, -0x657e4f9

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v7, 0x0

    cmpl-float v10, v9, v7

    if-lez v10, :cond_1c

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v9, v11}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget-wide v11, v1, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    sget-object v15, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v10, v11, v12, v15}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :cond_1c
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, -0x3e2e1b03

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sub-float/2addr v8, v9

    cmpl-float v7, v8, v7

    if-lez v7, :cond_1d

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    const/4 v9, 0x1

    invoke-virtual {v4, v7, v8, v9}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-wide v7, v1, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v4, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :cond_1d
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v0

    move-object v8, v1

    :goto_f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v8

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;-><init>(Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v11
.end method
