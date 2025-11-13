.class public abstract Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 154

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x3ac0a221

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v2, 0xe

    and-int/lit8 v3, v1, 0xe

    const/4 v4, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v3, v3, 0xb

    if-ne v3, v4, :cond_3

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    const v6, 0x7633d5e5

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const v7, -0x2507c6d6

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_5

    if-ne v8, v10, :cond_7

    :cond_5
    const v7, 0x106006d

    const v8, 0x106006c

    const v11, 0x1060098

    const v12, 0x1060097

    const v13, 0x1060060

    const v14, 0x106008b

    if-eqz v3, :cond_6

    invoke-static {v6, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v16

    const v3, 0x106008c

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v18

    const v3, 0x1060089

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v20

    const v3, 0x106008a

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v22

    invoke-static {v6, v13}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v24

    const v3, 0x106008f

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v26

    const v3, 0x1060090

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v28

    const v3, 0x106008d

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v30

    const v3, 0x106008e

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v32

    const v3, 0x1060093

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v34

    const v3, 0x1060094

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v36

    const v3, 0x1060091

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v38

    const v3, 0x1060092

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v40

    const v3, 0x1060095

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v42

    const v3, 0x1060096

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v44

    invoke-static {v6, v12}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v46

    invoke-static {v6, v11}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v48

    const v3, 0x10600a0

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v50

    const v3, 0x10600a1

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v52

    invoke-static {v6, v8}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v56

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v58

    const v3, 0x10600a2

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v68

    const v3, 0x10600c1

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v70

    const v3, 0x106009e

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v74

    const v3, 0x106009f

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v76

    const v3, 0x106009b

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v78

    const v3, 0x106009c

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v80

    const v3, 0x106009d

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v82

    const v3, 0x1060099

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v84

    const v3, 0x106009a

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v86

    invoke-static {v6, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v54

    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-wide v60, Landroidx/compose/material3/tokens/ColorDarkTokens;->Error:J

    sget-wide v62, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnError:J

    sget-wide v64, Landroidx/compose/material3/tokens/ColorDarkTokens;->ErrorContainer:J

    sget-wide v66, Landroidx/compose/material3/tokens/ColorDarkTokens;->OnErrorContainer:J

    sget-wide v72, Landroidx/compose/material3/tokens/ColorDarkTokens;->Scrim:J

    new-instance v3, Landroidx/compose/material3/ColorScheme;

    move-object v15, v3

    invoke-direct/range {v15 .. v87}, Landroidx/compose/material3/ColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    :goto_4
    move-object v8, v3

    goto/16 :goto_5

    :cond_6
    invoke-static {v6, v13}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v88

    const v3, 0x1060061

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v90

    const v3, 0x106005e

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v92

    const v3, 0x106005f

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v94

    invoke-static {v6, v14}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v96

    const v3, 0x1060064

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v98

    const v3, 0x1060065

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v100

    const v3, 0x1060062

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v102

    const v3, 0x1060063

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v104

    const v3, 0x1060068

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v106

    const v3, 0x1060069

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v108

    const v3, 0x1060066

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v110

    const v3, 0x1060067

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v112

    const v3, 0x106006a

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v114

    const v3, 0x106006b

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v116

    invoke-static {v6, v8}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v118

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v120

    const v3, 0x1060075

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v122

    const v3, 0x1060076

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v124

    invoke-static {v6, v12}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v128

    invoke-static {v6, v11}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v130

    const v3, 0x1060077

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v132

    const v3, 0x10600c0

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v134

    const v3, 0x1060073

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v138

    const v3, 0x1060074

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v150

    const v3, 0x1060070

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v140

    const v3, 0x1060071

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v142

    const v3, 0x1060072

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v144

    const v3, 0x106006e

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v146

    const v3, 0x106006f

    invoke-static {v6, v3}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v148

    invoke-static {v6, v13}, Landroidx/compose/material3/ColorResourceHelper;->getColor-WaAFU9c(Landroid/content/Context;I)J

    move-result-wide v126

    const/high16 v152, 0x13c00000

    const/16 v153, 0x0

    const-wide/16 v136, 0x0

    invoke-static/range {v88 .. v153}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    goto/16 :goto_4

    :goto_5
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v3, v8

    check-cast v3, Landroidx/compose/material3/ColorScheme;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0x567c5eff

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v6, -0x37a51710    # -224163.75f

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v6, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsFontFamilyKt$rememberSettingsFontFamily$1;

    invoke-static {v6, v9}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, -0x16223a33

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v10, :cond_8

    const-string v7, "settingsFontFamily"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Landroidx/compose/material3/Typography;

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v10, 0x39

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/16 v10, 0x40

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    const-wide v10, -0x4036666666666666L    # -0.2

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v24, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    iget-object v15, v6, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;->brand:Landroidx/compose/ui/text/font/FontFamily;

    const v23, 0xbdff59

    move-object/from16 v10, v24

    move-object/from16 v25, v15

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v10, 0x2d

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/16 v10, 0x34

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v28, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v28

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v29, 0x24

    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/16 v10, 0x2c

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v30, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v30

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    const/16 v10, 0x28

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v31, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v31

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v32, 0x1c

    invoke-static/range {v32 .. v32}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v29, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v29

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v33, 0x18

    invoke-static/range {v33 .. v33}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v17

    new-instance v4, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object v10, v4

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v10, 0x16

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v32 .. v32}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    const-wide v26, 0x3f947ae147ae147bL    # 0.02

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v32, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v32

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v34, 0x14

    invoke-static/range {v34 .. v34}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v33 .. v33}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v35, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v35

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v10, 0x12

    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v34 .. v34}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v26, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v26

    move-object v15, v8

    move-object/from16 v16, v25

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v25, 0x10

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v33 .. v33}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v27, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    iget-object v6, v6, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;->plain:Landroidx/compose/ui/text/font/FontFamily;

    const v23, 0xbdff59

    move-object/from16 v10, v27

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v34 .. v34}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v52, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v52

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    const/16 v53, 0xc

    invoke-static/range {v53 .. v53}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v13

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v20

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v17

    new-instance v54, Landroidx/compose/ui/text/TextStyle;

    const/16 v19, 0x0

    const/16 v22, 0x2

    const-wide/16 v11, 0x0

    const v23, 0xbdff59

    move-object/from16 v10, v54

    move-object v15, v8

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v41

    invoke-static/range {v33 .. v33}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v48

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v45

    new-instance v23, Landroidx/compose/ui/text/TextStyle;

    const/16 v47, 0x0

    const/16 v50, 0x2

    const-wide/16 v39, 0x0

    const v51, 0xbdff59

    move-object/from16 v38, v23

    move-object/from16 v43, v8

    move-object/from16 v44, v6

    invoke-direct/range {v38 .. v51}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v41

    invoke-static/range {v34 .. v34}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v48

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v45

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    const/16 v47, 0x0

    const/16 v50, 0x2

    const-wide/16 v39, 0x0

    const v51, 0xbdff59

    move-object/from16 v38, v2

    move-object/from16 v43, v8

    move-object/from16 v44, v6

    invoke-direct/range {v38 .. v51}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    invoke-static/range {v53 .. v53}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v41

    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v48

    invoke-static/range {v36 .. v37}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v45

    new-instance v25, Landroidx/compose/ui/text/TextStyle;

    const/16 v47, 0x0

    const/16 v50, 0x2

    const-wide/16 v39, 0x0

    const v51, 0xbdff59

    move-object/from16 v38, v25

    move-object/from16 v43, v8

    move-object/from16 v44, v6

    invoke-direct/range {v38 .. v51}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    move-object v10, v7

    move-object/from16 v11, v24

    move-object/from16 v12, v28

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v29

    move-object/from16 v16, v4

    move-object/from16 v17, v32

    move-object/from16 v18, v35

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    move-object/from16 v21, v52

    move-object/from16 v22, v54

    move-object/from16 v24, v2

    invoke-direct/range {v10 .. v25}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object v4, v7

    check-cast v4, Landroidx/compose/material3/Typography;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$1;

    invoke-direct {v2, v0}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v5, -0x6aa68e75

    invoke-static {v5, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/16 v7, 0xc00

    move-object v2, v3

    move-object v3, v6

    move-object v6, v9

    invoke-static/range {v2 .. v8}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$2;

    invoke-direct {v3, v1, v0}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$2;-><init>(ILkotlin/jvm/functions/Function2;)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
