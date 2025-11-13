.class public abstract Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$LocalOneUiOpenTheme$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$LocalOneUiOpenTheme$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final SeslTheme(ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 46

    move/from16 v4, p4

    const/4 v0, 0x4

    const/4 v1, 0x2

    move-object/from16 v2, p3

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x7b5a1014

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v3, 0xe

    and-int/lit8 v5, v4, 0xe

    if-nez v5, :cond_2

    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_0

    move/from16 v5, p0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v0

    goto :goto_0

    :cond_0
    move/from16 v5, p0

    :cond_1
    move v6, v1

    :goto_0
    or-int/2addr v6, v4

    goto :goto_1

    :cond_2
    move/from16 v5, p0

    move v6, v4

    :goto_1
    and-int/lit8 v7, v4, 0x70

    if-nez v7, :cond_5

    and-int/lit8 v7, p5, 0x2

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v7, p1

    :cond_4
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    :goto_3
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_6

    or-int/lit16 v6, v6, 0x180

    move-object/from16 v13, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v4, 0x380

    move-object/from16 v13, p2

    if-nez v0, :cond_8

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v6, v0

    :cond_8
    :goto_5
    and-int/lit16 v0, v6, 0x2db

    const/16 v6, 0x92

    if-ne v0, v6, :cond_a

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v1, v5

    goto/16 :goto_c

    :cond_a
    :goto_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v0, v5

    :cond_c
    move-object v1, v7

    goto/16 :goto_9

    :cond_d
    :goto_7
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_e

    invoke-static {v2}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    goto :goto_8

    :cond_e
    move v0, v5

    :goto_8
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    const-string v5, ""

    :cond_f
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const v6, 0x3f4ccccd    # 0.8f

    if-eqz v5, :cond_10

    sget-object v5, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;->LocalSeslColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v5, 0x7f0607a9

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v15

    const v5, 0x7f0607ad

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v17

    const v5, 0x7f0607d8

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v19

    const v5, 0x7f0607ab

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v21

    const v5, 0x7f0606d1

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v23

    const v5, 0x7f0607bc

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v25

    const v5, 0x7f0607ba

    invoke-static {v5, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v27

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    invoke-static {v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v29

    new-instance v1, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-object v14, v1

    const/16 v31, 0x0

    invoke-direct/range {v14 .. v31}, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :cond_10
    if-eqz v0, :cond_11

    sget-object v1, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;->LocalSeslColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v15, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    sget-wide v17, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Dark:J

    sget-wide v19, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D7:J

    sget-wide v21, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Dark:J

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v23, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->WINDOW_BACKGROUND:J

    sget-wide v25, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->ROUNDED_CORNER_COLOR:J

    sget-wide v27, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->RIPPLE_COLOR:J

    sget-wide v7, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    invoke-static {v6, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v29

    new-instance v1, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-object v14, v1

    const/16 v31, 0x0

    invoke-direct/range {v14 .. v31}, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :cond_11
    invoke-static {}, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;->seslLightColorScheme-FD3wquc$default()Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v1

    :goto_9
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/Context;

    sget-object v5, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const v6, -0x6af4ef0b

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_12

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v6, :cond_15

    :cond_12
    if-eqz v5, :cond_14

    sget-object v5, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;->LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v8}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;

    goto :goto_a

    :cond_13
    sget-object v5, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    :goto_a
    move-object v7, v5

    goto :goto_b

    :cond_14
    new-instance v5, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    invoke-direct {v5, v8}, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;-><init>(Landroid/content/Context;)V

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object v10, v7

    check-cast v10, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v5, Landroidx/compose/ui/text/TextStyle;

    const-string v6, "sec"

    invoke-static {v6}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->constructor-impl(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;->Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    move-result-object v3

    filled-new-array {v3}, [Landroidx/compose/ui/text/font/Font;

    move-result-object v3

    new-instance v6, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v44, 0xffffdf

    const/16 v45, 0x0

    move-object v14, v5

    move-object/from16 v22, v6

    invoke-direct/range {v14 .. v45}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;

    move-object v7, v3

    move-object v9, v1

    move v11, v0

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;-><init>(Landroid/content/Context;Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;ZLkotlin/jvm/functions/Function2;)V

    const v6, 0x2b7ca85b

    invoke-static {v6, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v6, 0x30

    invoke-static {v5, v3, v2, v6}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v1

    move v1, v0

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v8, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$3;

    move-object v0, v8

    move-object v2, v7

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$3;-><init>(ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;II)V

    iput-object v8, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
