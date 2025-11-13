.class public final Landroidx/compose/material3/TextFieldDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FocusedIndicatorThickness:F

.field public static final INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

.field public static final MinHeight:F

.field public static final MinWidth:F

.field public static final UnfocusedIndicatorThickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/TextFieldDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/TextFieldDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v0, 0x1

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedIndicatorThickness:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/TextFieldDefaults;->FocusedIndicatorThickness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colors(ILandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;
    .locals 0

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/material3/TextFieldDefaults;->getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object p0

    return-object p0
.end method

.method public static contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 1

    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v0, v0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;
    .locals 95

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x19d1f08

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/material3/TextFieldColors;

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    sget v4, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputOpacity:F

    invoke-static {v4, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v9

    sget-object v11, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v16

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v18

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v20

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->CaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorFocusCaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v24

    sget-object v13, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v26, v13

    check-cast v26, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v27

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v29

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v31, v14

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledActiveIndicatorOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v33

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v35

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v37

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v39

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v41

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v43

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v45

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v47

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v49

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v51

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v53

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->LabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v55

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLabelOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v57

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorLabelColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v59

    sget-object v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputPlaceholderColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v61

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v63

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    invoke-static {v4, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v65

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v67

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->FocusSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v69

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->SupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v71

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    sget v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledSupportingOpacity:F

    invoke-static {v3, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v73

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ErrorSupportingColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v75

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputPrefixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v77

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v79

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v81

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v83

    sget-object v3, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->InputSuffixColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v85

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v91

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    invoke-static {v4, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v93

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v88

    const/16 v90, 0x0

    move-object v4, v1

    move-wide/from16 v13, v31

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-wide/from16 v28, v29

    move-wide/from16 v30, v33

    move-wide/from16 v32, v35

    move-wide/from16 v34, v37

    move-wide/from16 v36, v39

    move-wide/from16 v38, v41

    move-wide/from16 v40, v43

    move-wide/from16 v42, v45

    move-wide/from16 v44, v47

    move-wide/from16 v46, v49

    move-wide/from16 v48, v51

    move-wide/from16 v50, v53

    move-wide/from16 v52, v55

    move-wide/from16 v54, v57

    move-wide/from16 v56, v59

    move-wide/from16 v58, v61

    move-wide/from16 v60, v63

    move-wide/from16 v62, v65

    move-wide/from16 v64, v67

    move-wide/from16 v66, v69

    move-wide/from16 v68, v71

    move-wide/from16 v70, v73

    move-wide/from16 v72, v75

    move-wide/from16 v74, v77

    move-wide/from16 v76, v79

    move-wide/from16 v78, v81

    move-wide/from16 v80, v83

    move-wide/from16 v82, v85

    move-wide/from16 v84, v91

    move-wide/from16 v86, v93

    invoke-direct/range {v4 .. v90}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Landroidx/compose/material3/ColorScheme;->defaultTextFieldColorsCached:Landroidx/compose/material3/TextFieldColors;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public static supportingTextPadding-a9UjIt4$material3_release$default(Landroidx/compose/material3/TextFieldDefaults;)Landroidx/compose/foundation/layout/PaddingValuesImpl;
    .locals 4

    sget v0, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    sget v1, Landroidx/compose/material3/internal/TextFieldImplKt;->SupportingTopPadding:F

    const/4 v2, 0x0

    int-to-float v2, v2

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v0, 0x100

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0x80

    const/16 v5, 0x10

    const/16 v6, 0x20

    move-object/from16 v15, p9

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v12, -0x30cbc77a    # -3.0236032E9f

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_0

    or-int/lit8 v12, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v10, 0x6

    if-nez v12, :cond_2

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v2

    goto :goto_0

    :cond_1
    move v12, v1

    :goto_0
    or-int/2addr v12, v10

    goto :goto_1

    :cond_2
    move v12, v10

    :goto_1
    and-int/2addr v1, v11

    if-eqz v1, :cond_3

    or-int/lit8 v12, v12, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v10, 0x30

    if-nez v1, :cond_5

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    or-int/2addr v12, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v11, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v12, v12, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v10, 0x180

    if-nez v1, :cond_8

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    or-int/2addr v12, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_a

    or-int/lit16 v12, v12, 0xc00

    :cond_9
    move-object/from16 v2, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v10, 0xc00

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v12, v13

    :goto_7
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v11, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p5

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v12, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p5

    :goto_9
    const/high16 v14, 0x30000

    and-int/2addr v14, v10

    if-nez v14, :cond_11

    and-int/lit8 v14, v11, 0x20

    if-nez v14, :cond_f

    move-object/from16 v14, p6

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v14, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v12, v12, v16

    goto :goto_b

    :cond_11
    move-object/from16 v14, p6

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v10, v16

    if-nez v16, :cond_13

    and-int/lit8 v16, v11, 0x40

    move/from16 v3, p7

    if-nez v16, :cond_12

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v12, v12, v17

    goto :goto_d

    :cond_13
    move/from16 v3, p7

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v10, v17

    if-nez v17, :cond_16

    and-int/lit16 v6, v11, 0x80

    if-nez v6, :cond_14

    move/from16 v6, p8

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_15

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_14
    move/from16 v6, p8

    :cond_15
    const/high16 v18, 0x400000

    :goto_e
    or-int v12, v12, v18

    goto :goto_f

    :cond_16
    move/from16 v6, p8

    :goto_f
    and-int/2addr v0, v11

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v12, v12, v18

    :cond_17
    move-object/from16 v0, p0

    goto :goto_11

    :cond_18
    and-int v0, v10, v18

    if-nez v0, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v12, v12, v18

    :goto_11
    const v18, 0x2492493

    and-int v4, v12, v18

    const v5, 0x2492492

    if-ne v4, v5, :cond_1b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, v2

    move/from16 v19, v3

    move/from16 v20, v6

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_19

    :cond_1b
    :goto_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v10, 0x1

    const v5, -0x1c00001

    const v20, -0x380001

    const v21, -0x70001

    const v22, -0xe001

    if-eqz v4, :cond_21

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v1, 0x10

    and-int/2addr v1, v11

    if-eqz v1, :cond_1d

    and-int v12, v12, v22

    :cond_1d
    const/16 v1, 0x20

    and-int/2addr v1, v11

    if-eqz v1, :cond_1e

    and-int v12, v12, v21

    :cond_1e
    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_1f

    and-int v12, v12, v20

    :cond_1f
    const/16 v1, 0x80

    and-int/2addr v1, v11

    if-eqz v1, :cond_20

    and-int/2addr v12, v5

    :cond_20
    move/from16 v19, v3

    move/from16 v20, v6

    move-object v5, v13

    move-object v4, v14

    move-object v6, v2

    goto :goto_16

    :cond_21
    :goto_13
    if-eqz v1, :cond_22

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_14
    const/16 v2, 0x10

    goto :goto_15

    :cond_22
    move-object v1, v2

    goto :goto_14

    :goto_15
    and-int/2addr v2, v11

    if-eqz v2, :cond_23

    shr-int/lit8 v2, v12, 0x18

    and-int/lit8 v2, v2, 0xe

    invoke-static {v2, v15}, Landroidx/compose/material3/TextFieldDefaults;->colors(ILandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v2

    and-int v12, v12, v22

    move-object v13, v2

    :cond_23
    const/16 v2, 0x20

    and-int/2addr v2, v11

    if-eqz v2, :cond_24

    sget-object v2, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v15}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int v12, v12, v21

    move-object v14, v2

    :cond_24
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_25

    and-int v2, v12, v20

    sget v3, Landroidx/compose/material3/TextFieldDefaults;->FocusedIndicatorThickness:F

    move v12, v2

    :cond_25
    const/16 v2, 0x80

    and-int/2addr v2, v11

    if-eqz v2, :cond_26

    and-int/2addr v12, v5

    sget v2, Landroidx/compose/material3/TextFieldDefaults;->UnfocusedIndicatorThickness:F

    move-object v6, v1

    move/from16 v20, v2

    move/from16 v19, v3

    move-object v5, v13

    move-object v4, v14

    goto :goto_16

    :cond_26
    move/from16 v19, v3

    move/from16 v20, v6

    move-object v5, v13

    move-object v4, v14

    move-object v6, v1

    :goto_16
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x6

    shr-int/lit8 v2, v12, 0x6

    and-int/lit8 v1, v2, 0xe

    invoke-static {v9, v15, v1}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v7, :cond_27

    iget-wide v1, v5, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    :goto_17
    move-wide v12, v1

    goto :goto_18

    :cond_27
    if-eqz v8, :cond_28

    iget-wide v1, v5, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    goto :goto_17

    :cond_28
    if-eqz v1, :cond_29

    iget-wide v1, v5, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    goto :goto_17

    :cond_29
    iget-wide v1, v5, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    goto :goto_17

    :goto_18
    const/4 v1, 0x0

    const/16 v2, 0x96

    const/4 v3, 0x0

    const/4 v14, 0x6

    invoke-static {v2, v3, v1, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v14

    const/16 v18, 0xc

    const/16 v17, 0x30

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    new-instance v12, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    invoke-direct {v12, v1}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    invoke-direct {v1, v12}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v6, v1, v4}, Landroidx/compose/material3/internal/TextFieldImplKt;->textFieldBackground(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    new-instance v14, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v15, v2

    move/from16 v2, p1

    move v7, v3

    move/from16 v3, p2

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v17, v5

    move/from16 v5, v19

    move-object/from16 v18, v6

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/TextFieldDefaults$indicatorLine$2;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;ZZLandroidx/compose/material3/TextFieldColors;FF)V

    invoke-static {v12, v13, v14}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v15, v7}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    :goto_19
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2a

    new-instance v13, Landroidx/compose/material3/TextFieldDefaults$Container$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/TextFieldDefaults$Container$2;-><init>(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public final DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 44

    move/from16 v15, p20

    move/from16 v14, p21

    move/from16 v13, p22

    const/16 v8, 0x80

    const/16 v9, 0x100

    const/16 v10, 0x10

    const/16 v11, 0x20

    move-object/from16 v1, p19

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x11438ffc

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v13, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move/from16 v20, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move/from16 v20, v19

    goto :goto_0

    :cond_1
    move/from16 v20, v18

    :goto_0
    or-int v20, v15, v20

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move/from16 v20, v15

    :goto_1
    and-int/lit8 v21, v13, 0x2

    if-eqz v21, :cond_4

    or-int/lit8 v20, v20, 0x30

    move-object/from16 v3, p2

    :cond_3
    :goto_2
    move/from16 v4, v20

    goto :goto_4

    :cond_4
    and-int/lit8 v21, v15, 0x30

    move-object/from16 v3, p2

    if-nez v21, :cond_3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    move/from16 v22, v11

    goto :goto_3

    :cond_5
    move/from16 v22, v10

    :goto_3
    or-int v20, v20, v22

    goto :goto_2

    :goto_4
    and-int/lit8 v20, v13, 0x4

    if-eqz v20, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move/from16 v12, p3

    goto :goto_6

    :cond_7
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_6

    move/from16 v12, p3

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_8

    move/from16 v23, v9

    goto :goto_5

    :cond_8
    move/from16 v23, v8

    :goto_5
    or-int v4, v4, v23

    :goto_6
    and-int/lit8 v23, v13, 0x8

    if-eqz v23, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v5, p4

    goto :goto_8

    :cond_a
    and-int/lit16 v5, v15, 0xc00

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
    or-int v4, v4, v24

    :goto_8
    and-int/lit8 v24, v13, 0x10

    if-eqz v24, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v10, p5

    goto :goto_a

    :cond_d
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_c

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/16 v25, 0x4000

    goto :goto_9

    :cond_e
    const/16 v25, 0x2000

    :goto_9
    or-int v4, v4, v25

    :goto_a
    and-int/lit8 v25, v13, 0x20

    const/high16 v26, 0x20000

    const/high16 v27, 0x30000

    const/high16 v28, 0x10000

    if-eqz v25, :cond_f

    or-int v4, v4, v27

    move-object/from16 v11, p6

    goto :goto_c

    :cond_f
    and-int v25, v15, v27

    move-object/from16 v11, p6

    if-nez v25, :cond_11

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    move/from16 v29, v26

    goto :goto_b

    :cond_10
    move/from16 v29, v28

    :goto_b
    or-int v4, v4, v29

    :cond_11
    :goto_c
    and-int/lit8 v29, v13, 0x40

    const/high16 v30, 0x80000

    const/high16 v31, 0x100000

    const/high16 v32, 0x180000

    if-eqz v29, :cond_12

    or-int v4, v4, v32

    move/from16 v7, p7

    goto :goto_e

    :cond_12
    and-int v33, v15, v32

    move/from16 v7, p7

    if-nez v33, :cond_14

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v34

    if-eqz v34, :cond_13

    move/from16 v34, v31

    goto :goto_d

    :cond_13
    move/from16 v34, v30

    :goto_d
    or-int v4, v4, v34

    :cond_14
    :goto_e
    and-int/lit16 v6, v13, 0x80

    const/high16 v35, 0xc00000

    if-eqz v6, :cond_15

    or-int v4, v4, v35

    move-object/from16 v8, p8

    goto :goto_10

    :cond_15
    and-int v36, v15, v35

    move-object/from16 v8, p8

    if-nez v36, :cond_17

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    const/high16 v37, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v37, 0x400000

    :goto_f
    or-int v4, v4, v37

    :cond_17
    :goto_10
    and-int/lit16 v0, v13, 0x100

    const/high16 v38, 0x6000000

    if-eqz v0, :cond_18

    or-int v4, v4, v38

    move-object/from16 v9, p9

    goto :goto_12

    :cond_18
    and-int v39, v15, v38

    move-object/from16 v9, p9

    if-nez v39, :cond_1a

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    const/high16 v40, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v40, 0x2000000

    :goto_11
    or-int v4, v4, v40

    :cond_1a
    :goto_12
    and-int/lit16 v2, v13, 0x200

    const/high16 v37, 0x30000000

    if-eqz v2, :cond_1c

    :goto_13
    or-int v4, v4, v37

    :cond_1b
    const/16 v3, 0x400

    goto :goto_14

    :cond_1c
    and-int v37, v15, v37

    move-object/from16 v3, p10

    if-nez v37, :cond_1b

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1d

    const/high16 v37, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v37, 0x10000000

    goto :goto_13

    :goto_14
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v18, v14, 0x6

    :goto_15
    const/16 v3, 0x800

    goto :goto_16

    :cond_1e
    and-int/lit8 v34, v14, 0x6

    move-object/from16 v3, p11

    if-nez v34, :cond_20

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1f

    move/from16 v18, v19

    :cond_1f
    or-int v18, v14, v18

    goto :goto_15

    :cond_20
    move/from16 v18, v14

    goto :goto_15

    :goto_16
    and-int/lit16 v7, v13, 0x800

    if-eqz v7, :cond_22

    or-int/lit8 v18, v18, 0x30

    :cond_21
    :goto_17
    move/from16 v3, v18

    goto :goto_19

    :cond_22
    and-int/lit8 v19, v14, 0x30

    move-object/from16 v3, p12

    if-nez v19, :cond_21

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    const/16 v25, 0x20

    goto :goto_18

    :cond_23
    const/16 v25, 0x10

    :goto_18
    or-int v18, v18, v25

    goto :goto_17

    :goto_19
    and-int/lit16 v8, v13, 0x1000

    if-eqz v8, :cond_24

    or-int/lit16 v3, v3, 0x180

    :goto_1a
    const/16 v9, 0x2000

    goto :goto_1c

    :cond_24
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_26

    move-object/from16 v9, p13

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    const/16 v36, 0x100

    goto :goto_1b

    :cond_25
    const/16 v36, 0x80

    :goto_1b
    or-int v3, v3, v36

    goto :goto_1a

    :cond_26
    move-object/from16 v9, p13

    goto :goto_1a

    :goto_1c
    and-int/lit16 v10, v13, 0x2000

    if-eqz v10, :cond_27

    or-int/lit16 v3, v3, 0xc00

    goto :goto_1e

    :cond_27
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_29

    move-object/from16 v9, p14

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    const/16 v33, 0x800

    goto :goto_1d

    :cond_28
    const/16 v33, 0x400

    :goto_1d
    or-int v3, v3, v33

    goto :goto_1e

    :cond_29
    move-object/from16 v9, p14

    :goto_1e
    and-int/lit16 v9, v14, 0x6000

    if-nez v9, :cond_2b

    const/16 v9, 0x4000

    and-int/lit16 v11, v13, 0x4000

    move-object/from16 v9, p15

    if-nez v11, :cond_2a

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/16 v23, 0x4000

    goto :goto_1f

    :cond_2a
    const/16 v23, 0x2000

    :goto_1f
    or-int v3, v3, v23

    goto :goto_20

    :cond_2b
    move-object/from16 v9, p15

    :goto_20
    and-int v11, v14, v27

    const v18, 0x8000

    if-nez v11, :cond_2e

    and-int v11, v13, v18

    if-nez v11, :cond_2c

    move-object/from16 v11, p16

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    move/from16 v19, v26

    goto :goto_21

    :cond_2c
    move-object/from16 v11, p16

    :cond_2d
    move/from16 v19, v28

    :goto_21
    or-int v3, v3, v19

    goto :goto_22

    :cond_2e
    move-object/from16 v11, p16

    :goto_22
    and-int v19, v14, v32

    if-nez v19, :cond_30

    and-int v19, v13, v28

    move-object/from16 v9, p17

    if-nez v19, :cond_2f

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    move/from16 v30, v31

    :cond_2f
    or-int v3, v3, v30

    goto :goto_23

    :cond_30
    move-object/from16 v9, p17

    :goto_23
    and-int v19, v13, v26

    if-eqz v19, :cond_31

    or-int v3, v3, v35

    move-object/from16 v9, p18

    goto :goto_25

    :cond_31
    and-int v23, v14, v35

    move-object/from16 v9, p18

    if-nez v23, :cond_33

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_32

    const/high16 v21, 0x800000

    goto :goto_24

    :cond_32
    const/high16 v21, 0x400000

    :goto_24
    or-int v3, v3, v21

    :cond_33
    :goto_25
    const/high16 v21, 0x40000

    and-int v21, v13, v21

    if-eqz v21, :cond_34

    or-int v3, v3, v38

    move-object/from16 v9, p0

    goto :goto_27

    :cond_34
    and-int v21, v14, v38

    move-object/from16 v9, p0

    if-nez v21, :cond_36

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_35

    const/high16 v16, 0x4000000

    goto :goto_26

    :cond_35
    const/high16 v16, 0x2000000

    :goto_26
    or-int v3, v3, v16

    :cond_36
    :goto_27
    const v16, 0x12492493

    and-int v9, v4, v16

    const v11, 0x12492492

    if-ne v9, v11, :cond_38

    const v9, 0x2492493

    and-int/2addr v9, v3

    const v11, 0x2492492

    if-ne v9, v11, :cond_38

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_37

    goto :goto_28

    :cond_37
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v38, p17

    move-object/from16 v39, p18

    goto/16 :goto_39

    :cond_38
    :goto_28
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v15, 0x1

    if-eqz v9, :cond_3d

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_39

    goto :goto_29

    :cond_39
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x4000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3a

    const v0, -0xe001

    and-int/2addr v3, v0

    :cond_3a
    and-int v0, v13, v18

    if-eqz v0, :cond_3b

    const v0, -0x70001

    and-int/2addr v3, v0

    :cond_3b
    and-int v0, v13, v28

    if-eqz v0, :cond_3c

    const v0, -0x380001

    and-int/2addr v3, v0

    :cond_3c
    move/from16 v9, p7

    move-object/from16 v6, p8

    move-object/from16 v0, p9

    move-object/from16 v2, p10

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v11, p14

    move-object/from16 v10, p15

    move-object/from16 v5, p16

    move-object/from16 v38, p17

    move-object/from16 v39, p18

    move/from16 v17, v3

    move-object/from16 v3, p11

    goto/16 :goto_38

    :cond_3d
    :goto_29
    if-eqz v29, :cond_3e

    const/4 v9, 0x0

    goto :goto_2a

    :cond_3e
    move/from16 v9, p7

    :goto_2a
    const/4 v11, 0x0

    if-eqz v6, :cond_3f

    move-object v6, v11

    goto :goto_2b

    :cond_3f
    move-object/from16 v6, p8

    :goto_2b
    if-eqz v0, :cond_40

    move-object v0, v11

    goto :goto_2c

    :cond_40
    move-object/from16 v0, p9

    :goto_2c
    if-eqz v2, :cond_41

    move-object v2, v11

    goto :goto_2d

    :cond_41
    move-object/from16 v2, p10

    :goto_2d
    if-eqz v5, :cond_42

    move-object v5, v11

    goto :goto_2e

    :cond_42
    move-object/from16 v5, p11

    :goto_2e
    if-eqz v7, :cond_43

    move-object v7, v11

    goto :goto_2f

    :cond_43
    move-object/from16 v7, p12

    :goto_2f
    if-eqz v8, :cond_44

    move-object v8, v11

    goto :goto_30

    :cond_44
    move-object/from16 v8, p13

    :goto_30
    if-eqz v10, :cond_45

    :goto_31
    const/16 v10, 0x4000

    goto :goto_32

    :cond_45
    move-object/from16 v11, p14

    goto :goto_31

    :goto_32
    and-int/2addr v10, v13

    if-eqz v10, :cond_46

    sget-object v10, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v10, v1}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    const v16, -0xe001

    and-int v3, v3, v16

    goto :goto_33

    :cond_46
    move-object/from16 v10, p15

    :goto_33
    and-int v16, v13, v18

    if-eqz v16, :cond_47

    shr-int/lit8 v16, v3, 0x18

    move-object/from16 p19, v0

    and-int/lit8 v0, v16, 0xe

    invoke-static {v0, v1}, Landroidx/compose/material3/TextFieldDefaults;->colors(ILandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    const v16, -0x70001

    and-int v3, v3, v16

    goto :goto_34

    :cond_47
    move-object/from16 p19, v0

    move-object/from16 v0, p16

    :goto_34
    and-int v16, v13, v28

    if-eqz v16, :cond_49

    if-nez v6, :cond_48

    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/TextFieldDefaults;->contentPaddingWithoutLabel-a9UjIt4$default(Landroidx/compose/material3/TextFieldDefaults;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v16

    move-object/from16 v17, v5

    move-object/from16 v43, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v43

    goto :goto_35

    :cond_48
    move-object/from16 v16, v2

    sget v2, Landroidx/compose/material3/internal/TextFieldImplKt;->TextFieldPadding:F

    move-object/from16 v17, v5

    sget v5, Landroidx/compose/material3/TextFieldKt;->TextFieldWithLabelVerticalPadding:F

    invoke-static {v2, v5, v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v2

    :goto_35
    const v5, -0x380001

    and-int/2addr v3, v5

    goto :goto_36

    :cond_49
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v2, p17

    :goto_36
    if-eqz v19, :cond_4a

    new-instance v5, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;

    move-object/from16 p7, v5

    move/from16 p8, p3

    move/from16 p9, v9

    move-object/from16 p10, p6

    move-object/from16 p11, v0

    move-object/from16 p12, v10

    invoke-direct/range {p7 .. p12}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;)V

    move-object/from16 p7, v0

    const v0, -0x19f590cf

    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v5, p7

    move-object/from16 v39, v0

    move-object/from16 v38, v2

    move-object/from16 v2, v16

    move-object/from16 v0, p19

    :goto_37
    move-object/from16 v43, v17

    move/from16 v17, v3

    move-object/from16 v3, v43

    goto :goto_38

    :cond_4a
    move-object/from16 p7, v0

    move-object/from16 v5, p7

    move-object/from16 v39, p18

    move-object/from16 v0, p19

    move-object/from16 v38, v2

    move-object/from16 v2, v16

    goto :goto_37

    :goto_38
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v16, Landroidx/compose/material3/internal/TextFieldType;->Filled:Landroidx/compose/material3/internal/TextFieldType;

    move-object/from16 p7, v10

    shl-int/lit8 v10, v4, 0x3

    and-int/lit8 v18, v10, 0x70

    or-int/lit8 v18, v18, 0x6

    and-int/lit16 v10, v10, 0x380

    or-int v10, v18, v10

    shr-int/lit8 v12, v4, 0x3

    and-int/lit16 v13, v12, 0x1c00

    or-int/2addr v10, v13

    shr-int/lit8 v13, v4, 0x9

    const v18, 0xe000

    and-int v18, v13, v18

    or-int v10, v10, v18

    const/high16 v18, 0x70000

    and-int v18, v13, v18

    or-int v10, v10, v18

    const/high16 v18, 0x380000

    and-int v18, v13, v18

    or-int v10, v10, v18

    shl-int/lit8 v18, v17, 0x15

    const/high16 v19, 0x1c00000

    and-int v19, v18, v19

    or-int v10, v10, v19

    const/high16 v19, 0xe000000

    and-int v19, v18, v19

    or-int v10, v10, v19

    const/high16 v19, 0x70000000

    and-int v18, v18, v19

    or-int v35, v10, v18

    shr-int/lit8 v10, v17, 0x9

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v18, v4, 0x6

    and-int/lit8 v18, v18, 0x70

    or-int v10, v10, v18

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v4, v10

    and-int/lit16 v10, v13, 0x1c00

    or-int/2addr v4, v10

    const v10, 0xe000

    and-int/2addr v10, v12

    or-int/2addr v4, v10

    shr-int/lit8 v10, v17, 0x3

    const/high16 v12, 0x70000

    and-int/2addr v10, v12

    or-int/2addr v4, v10

    const/high16 v10, 0x380000

    shl-int/lit8 v12, v17, 0x3

    and-int/2addr v10, v12

    or-int/2addr v4, v10

    const/high16 v10, 0x1c00000

    and-int v10, v17, v10

    or-int v36, v4, v10

    const/16 v37, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p5

    move-object/from16 v20, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move/from16 v27, p4

    move/from16 v28, p3

    move/from16 v29, v9

    move-object/from16 v30, p6

    move-object/from16 v31, v38

    move-object/from16 v32, v5

    move-object/from16 v33, v39

    move-object/from16 v34, v1

    invoke-static/range {v16 .. v37}, Landroidx/compose/material3/internal/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v18, p7

    move-object v10, v0

    move-object v12, v3

    move-object/from16 v19, v5

    move-object v13, v7

    move-object/from16 v16, v8

    move v8, v9

    move-object/from16 v17, v11

    move-object v11, v2

    move-object v9, v6

    :goto_39
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_4b

    new-instance v6, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v41, v6

    move-object/from16 v6, p5

    move-object/from16 v42, v7

    move-object/from16 v7, p6

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v38

    move-object/from16 v19, v39

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/TextFieldDefaults$DecorationBox$2;-><init>(Landroidx/compose/material3/TextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v41

    move-object/from16 v0, v42

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4b
    return-void
.end method
