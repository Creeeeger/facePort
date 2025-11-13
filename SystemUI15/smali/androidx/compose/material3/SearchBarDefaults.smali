.class public final Landroidx/compose/material3/SearchBarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

.field public static final InputFieldHeight:F

.field public static final ShadowElevation:F

.field public static final TonalElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SearchBarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v1, Landroidx/compose/material3/SearchBarDefaults;->TonalElevation:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput v1, Landroidx/compose/material3/SearchBarDefaults;->ShadowElevation:F

    sget-object v0, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/tokens/SearchBarTokens;->ContainerHeight:F

    sput v0, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colors-dgg9oW8(JLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;
    .locals 7

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    sget-object p0, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/material3/tokens/SearchBarTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, p2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide p0

    :cond_0
    move-wide v1, p0

    sget-object p0, Landroidx/compose/material3/tokens/SearchViewTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchViewTokens;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/material3/tokens/SearchViewTokens;->DividerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {p0, p2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v3

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Landroidx/compose/material3/SearchBarColors;

    invoke-static {p2}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-ITpI4ow(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SearchBarColors;-><init>(JJLandroidx/compose/material3/TextFieldColors;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static getInputFieldShape(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/tokens/SearchBarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v0, p0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static inputFieldColors-ITpI4ow(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;
    .locals 122

    move-object/from16 v0, p0

    sget-object v1, Landroidx/compose/material3/tokens/SearchBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SearchBarTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/tokens/SearchBarTokens;->InputTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v7, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v8

    sget v10, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledInputOpacity:F

    invoke-static {v10, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->CaretColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v11, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    sget-object v13, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object v14, v0

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/material3/tokens/SearchBarTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v14, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v19, v15

    invoke-static {v14, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v14

    move-object/from16 v16, v13

    sget v13, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledLeadingIconOpacity:F

    invoke-static {v13, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v13

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/material3/tokens/SearchBarTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v15, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v23

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-wide/from16 v25, v13

    invoke-static {v15, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v13

    sget v15, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->DisabledTrailingIconOpacity:F

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v13

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/material3/tokens/SearchBarTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v15, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v27

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v29

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v1

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v31, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    sget-object v7, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v7

    invoke-static {v7, v0}, Landroidx/compose/material3/TextFieldDefaults;->getDefaultTextFieldColors(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    const-wide/16 v33, 0x10

    cmp-long v7, v3, v33

    if-eqz v7, :cond_0

    :goto_0
    move-wide/from16 v36, v3

    goto :goto_1

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    goto :goto_0

    :goto_1
    cmp-long v3, v5, v33

    if-eqz v3, :cond_1

    :goto_2
    move-wide/from16 v38, v5

    goto :goto_3

    :cond_1
    iget-wide v5, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    goto :goto_2

    :goto_3
    cmp-long v3, v8, v33

    if-eqz v3, :cond_2

    :goto_4
    move-wide/from16 v40, v8

    goto :goto_5

    :cond_2
    iget-wide v8, v0, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    goto :goto_4

    :goto_5
    cmp-long v3, v31, v33

    if-eqz v3, :cond_3

    move-wide/from16 v42, v31

    goto :goto_6

    :cond_3
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorTextColor:J

    move-wide/from16 v42, v4

    :goto_6
    if-eqz v3, :cond_4

    move-wide/from16 v44, v31

    goto :goto_7

    :cond_4
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedContainerColor:J

    move-wide/from16 v44, v4

    :goto_7
    if-eqz v3, :cond_5

    move-wide/from16 v46, v31

    goto :goto_8

    :cond_5
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedContainerColor:J

    move-wide/from16 v46, v4

    :goto_8
    if-eqz v3, :cond_6

    move-wide/from16 v48, v31

    goto :goto_9

    :cond_6
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->disabledContainerColor:J

    move-wide/from16 v48, v4

    :goto_9
    if-eqz v3, :cond_7

    move-wide/from16 v50, v31

    goto :goto_a

    :cond_7
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorContainerColor:J

    move-wide/from16 v50, v4

    :goto_a
    cmp-long v4, v11, v33

    if-eqz v4, :cond_8

    :goto_b
    move-wide/from16 v52, v11

    goto :goto_c

    :cond_8
    iget-wide v11, v0, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    goto :goto_b

    :goto_c
    if-eqz v3, :cond_9

    move-wide/from16 v54, v31

    goto :goto_d

    :cond_9
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    move-wide/from16 v54, v4

    :goto_d
    new-instance v4, Landroidx/compose/material3/TextFieldColors$copy$11;

    invoke-direct {v4, v0}, Landroidx/compose/material3/TextFieldColors$copy$11;-><init>(Landroidx/compose/material3/TextFieldColors;)V

    if-nez v16, :cond_a

    iget-object v4, v4, Landroidx/compose/material3/TextFieldColors$copy$11;->this$0:Landroidx/compose/material3/TextFieldColors;

    iget-object v4, v4, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-object/from16 v56, v4

    goto :goto_e

    :cond_a
    move-object/from16 v56, v16

    :goto_e
    if-eqz v3, :cond_b

    move-wide/from16 v57, v31

    goto :goto_f

    :cond_b
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    move-wide/from16 v57, v4

    :goto_f
    if-eqz v3, :cond_c

    move-wide/from16 v59, v31

    goto :goto_10

    :cond_c
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    move-wide/from16 v59, v4

    :goto_10
    if-eqz v3, :cond_d

    move-wide/from16 v61, v31

    goto :goto_11

    :cond_d
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    move-wide/from16 v61, v4

    :goto_11
    if-eqz v3, :cond_e

    move-wide/from16 v63, v31

    goto :goto_12

    :cond_e
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    move-wide/from16 v63, v4

    :goto_12
    cmp-long v4, v19, v33

    if-eqz v4, :cond_f

    move-wide/from16 v65, v19

    goto :goto_13

    :cond_f
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    move-wide/from16 v65, v4

    :goto_13
    cmp-long v4, v17, v33

    if-eqz v4, :cond_10

    move-wide/from16 v67, v17

    goto :goto_14

    :cond_10
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    move-wide/from16 v67, v4

    :goto_14
    cmp-long v4, v25, v33

    if-eqz v4, :cond_11

    move-wide/from16 v69, v25

    goto :goto_15

    :cond_11
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    move-wide/from16 v69, v4

    :goto_15
    if-eqz v3, :cond_12

    move-wide/from16 v71, v31

    goto :goto_16

    :cond_12
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    move-wide/from16 v71, v4

    :goto_16
    cmp-long v4, v21, v33

    if-eqz v4, :cond_13

    move-wide/from16 v73, v21

    goto :goto_17

    :cond_13
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    move-wide/from16 v73, v4

    :goto_17
    cmp-long v4, v23, v33

    if-eqz v4, :cond_14

    move-wide/from16 v75, v23

    goto :goto_18

    :cond_14
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    move-wide/from16 v75, v4

    :goto_18
    cmp-long v4, v13, v33

    if-eqz v4, :cond_15

    :goto_19
    move-wide/from16 v77, v13

    goto :goto_1a

    :cond_15
    iget-wide v13, v0, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    goto :goto_19

    :goto_1a
    if-eqz v3, :cond_16

    move-wide/from16 v79, v31

    goto :goto_1b

    :cond_16
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    move-wide/from16 v79, v4

    :goto_1b
    if-eqz v3, :cond_17

    move-wide/from16 v81, v31

    goto :goto_1c

    :cond_17
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    move-wide/from16 v81, v4

    :goto_1c
    if-eqz v3, :cond_18

    move-wide/from16 v83, v31

    goto :goto_1d

    :cond_18
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    move-wide/from16 v83, v4

    :goto_1d
    if-eqz v3, :cond_19

    move-wide/from16 v85, v31

    goto :goto_1e

    :cond_19
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    move-wide/from16 v85, v4

    :goto_1e
    if-eqz v3, :cond_1a

    move-wide/from16 v87, v31

    goto :goto_1f

    :cond_1a
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    move-wide/from16 v87, v4

    :goto_1f
    cmp-long v4, v27, v33

    if-eqz v4, :cond_1b

    move-wide/from16 v89, v27

    goto :goto_20

    :cond_1b
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->focusedPlaceholderColor:J

    move-wide/from16 v89, v4

    :goto_20
    cmp-long v4, v29, v33

    if-eqz v4, :cond_1c

    move-wide/from16 v91, v29

    goto :goto_21

    :cond_1c
    iget-wide v4, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedPlaceholderColor:J

    move-wide/from16 v91, v4

    :goto_21
    cmp-long v4, v1, v33

    if-eqz v4, :cond_1d

    :goto_22
    move-wide/from16 v93, v1

    goto :goto_23

    :cond_1d
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    goto :goto_22

    :goto_23
    if-eqz v3, :cond_1e

    move-wide/from16 v95, v31

    goto :goto_24

    :cond_1e
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorPlaceholderColor:J

    move-wide/from16 v95, v1

    :goto_24
    if-eqz v3, :cond_1f

    move-wide/from16 v97, v31

    goto :goto_25

    :cond_1f
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    move-wide/from16 v97, v1

    :goto_25
    if-eqz v3, :cond_20

    move-wide/from16 v99, v31

    goto :goto_26

    :cond_20
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    move-wide/from16 v99, v1

    :goto_26
    if-eqz v3, :cond_21

    move-wide/from16 v101, v31

    goto :goto_27

    :cond_21
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    move-wide/from16 v101, v1

    :goto_27
    if-eqz v3, :cond_22

    move-wide/from16 v103, v31

    goto :goto_28

    :cond_22
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    move-wide/from16 v103, v1

    :goto_28
    if-eqz v3, :cond_23

    move-wide/from16 v105, v31

    goto :goto_29

    :cond_23
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    move-wide/from16 v105, v1

    :goto_29
    if-eqz v3, :cond_24

    move-wide/from16 v107, v31

    goto :goto_2a

    :cond_24
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    move-wide/from16 v107, v1

    :goto_2a
    if-eqz v3, :cond_25

    move-wide/from16 v109, v31

    goto :goto_2b

    :cond_25
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    move-wide/from16 v109, v1

    :goto_2b
    if-eqz v3, :cond_26

    move-wide/from16 v111, v31

    goto :goto_2c

    :cond_26
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    move-wide/from16 v111, v1

    :goto_2c
    if-eqz v3, :cond_27

    move-wide/from16 v113, v31

    goto :goto_2d

    :cond_27
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    move-wide/from16 v113, v1

    :goto_2d
    if-eqz v3, :cond_28

    move-wide/from16 v115, v31

    goto :goto_2e

    :cond_28
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    move-wide/from16 v115, v1

    :goto_2e
    if-eqz v3, :cond_29

    move-wide/from16 v117, v31

    goto :goto_2f

    :cond_29
    iget-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    move-wide/from16 v117, v1

    :goto_2f
    if-eqz v3, :cond_2a

    move-wide/from16 v119, v31

    goto :goto_30

    :cond_2a
    iget-wide v0, v0, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    move-wide/from16 v119, v0

    :goto_30
    new-instance v0, Landroidx/compose/material3/TextFieldColors;

    move-object/from16 v35, v0

    const/16 v121, 0x0

    invoke-direct/range {v35 .. v121}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final InputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 69

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v3, p14

    move/from16 v2, p15

    move/from16 v1, p16

    const/16 v4, 0x80

    const/16 v7, 0x100

    const/16 v8, 0x10

    const/16 v9, 0x20

    move-object/from16 v12, p13

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v11, 0x5682199f

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v20, 0x1

    and-int/lit8 v11, v1, 0x1

    const/4 v15, 0x2

    const/4 v0, 0x4

    if-eqz v11, :cond_0

    or-int/lit8 v11, v3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v3, 0x6

    if-nez v11, :cond_2

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v15

    :goto_0
    or-int/2addr v11, v3

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    and-int/lit8 v17, v1, 0x2

    if-eqz v17, :cond_3

    or-int/lit8 v11, v11, 0x30

    move-object/from16 v10, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v17, v3, 0x30

    move-object/from16 v10, p2

    if-nez v17, :cond_5

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v9

    goto :goto_2

    :cond_4
    move/from16 v18, v8

    :goto_2
    or-int v11, v11, v18

    :cond_5
    :goto_3
    and-int/lit8 v18, v1, 0x4

    if-eqz v18, :cond_6

    or-int/lit16 v11, v11, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v15, v3, 0x180

    if-nez v15, :cond_8

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v7

    goto :goto_4

    :cond_7
    move v15, v4

    :goto_4
    or-int/2addr v11, v15

    :cond_8
    :goto_5
    and-int/lit8 v15, v1, 0x8

    if-eqz v15, :cond_9

    or-int/lit16 v11, v11, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v15, v3, 0xc00

    if-nez v15, :cond_b

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v11, v15

    :cond_b
    :goto_7
    and-int/lit8 v15, v1, 0x10

    if-eqz v15, :cond_c

    or-int/lit16 v11, v11, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v15, v3, 0x6000

    if-nez v15, :cond_e

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v11, v15

    :cond_e
    :goto_9
    and-int/lit8 v15, v1, 0x20

    const/high16 v19, 0x30000

    if-eqz v15, :cond_f

    or-int v11, v11, v19

    move-object/from16 v9, p6

    goto :goto_b

    :cond_f
    and-int v19, v3, v19

    move-object/from16 v9, p6

    if-nez v19, :cond_11

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v21, 0x10000

    :goto_a
    or-int v11, v11, v21

    :cond_11
    :goto_b
    and-int/lit8 v21, v1, 0x40

    const/high16 v22, 0x180000

    if-eqz v21, :cond_12

    or-int v11, v11, v22

    move/from16 v0, p7

    goto :goto_d

    :cond_12
    and-int v22, v3, v22

    move/from16 v0, p7

    if-nez v22, :cond_14

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v23, 0x80000

    :goto_c
    or-int v11, v11, v23

    :cond_14
    :goto_d
    and-int/lit16 v8, v1, 0x80

    const/high16 v24, 0xc00000

    if-eqz v8, :cond_15

    or-int v11, v11, v24

    move-object/from16 v4, p8

    goto :goto_f

    :cond_15
    and-int v24, v3, v24

    move-object/from16 v4, p8

    if-nez v24, :cond_17

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    const/high16 v25, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v25, 0x400000

    :goto_e
    or-int v11, v11, v25

    :cond_17
    :goto_f
    and-int/lit16 v0, v1, 0x100

    const/high16 v25, 0x6000000

    if-eqz v0, :cond_18

    or-int v11, v11, v25

    move-object/from16 v7, p9

    goto :goto_11

    :cond_18
    and-int v25, v3, v25

    move-object/from16 v7, p9

    if-nez v25, :cond_1a

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    const/high16 v26, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v26, 0x2000000

    :goto_10
    or-int v11, v11, v26

    :cond_1a
    :goto_11
    and-int/lit16 v4, v1, 0x200

    const/high16 v26, 0x30000000

    if-eqz v4, :cond_1b

    or-int v11, v11, v26

    move-object/from16 v7, p10

    goto :goto_13

    :cond_1b
    and-int v26, v3, v26

    move-object/from16 v7, p10

    if-nez v26, :cond_1d

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    const/high16 v26, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v26, 0x10000000

    :goto_12
    or-int v11, v11, v26

    :cond_1d
    :goto_13
    and-int/lit8 v26, v2, 0x6

    if-nez v26, :cond_1f

    const/16 v7, 0x400

    and-int/lit16 v9, v1, 0x400

    move-object/from16 v7, p11

    if-nez v9, :cond_1e

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v9, 0x4

    goto :goto_14

    :cond_1e
    const/4 v9, 0x2

    :goto_14
    or-int/2addr v9, v2

    :goto_15
    const/16 v7, 0x800

    goto :goto_16

    :cond_1f
    move-object/from16 v7, p11

    move v9, v2

    goto :goto_15

    :goto_16
    and-int/lit16 v10, v1, 0x800

    if-eqz v10, :cond_21

    or-int/lit8 v9, v9, 0x30

    :cond_20
    move-object/from16 v7, p12

    goto :goto_18

    :cond_21
    and-int/lit8 v7, v2, 0x30

    if-nez v7, :cond_20

    move-object/from16 v7, p12

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    const/16 v18, 0x20

    goto :goto_17

    :cond_22
    const/16 v18, 0x10

    :goto_17
    or-int v9, v9, v18

    :goto_18
    and-int/lit16 v7, v1, 0x1000

    if-eqz v7, :cond_24

    or-int/lit16 v9, v9, 0x180

    :cond_23
    move-object/from16 v7, p0

    goto :goto_1a

    :cond_24
    and-int/lit16 v7, v2, 0x180

    if-nez v7, :cond_23

    move-object/from16 v7, p0

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    const/16 v24, 0x100

    goto :goto_19

    :cond_25
    const/16 v24, 0x80

    :goto_19
    or-int v9, v9, v24

    :goto_1a
    const v18, 0x12492493

    and-int v2, v11, v18

    const v7, 0x12492492

    if-ne v2, v7, :cond_27

    and-int/lit16 v2, v9, 0x93

    const/16 v7, 0x92

    if-ne v2, v7, :cond_27

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_1b

    :cond_26
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object v2, v12

    move-object/from16 v12, p11

    goto/16 :goto_30

    :cond_27
    :goto_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_29

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_1c

    :cond_28
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v21, p6

    move/from16 v24, p7

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move-object/from16 v2, p11

    move-object/from16 v29, p12

    goto :goto_24

    :cond_29
    :goto_1c
    if-eqz v15, :cond_2a

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1d

    :cond_2a
    move-object/from16 v2, p6

    :goto_1d
    if-eqz v21, :cond_2b

    move/from16 v7, v20

    goto :goto_1e

    :cond_2b
    move/from16 v7, p7

    :goto_1e
    if-eqz v8, :cond_2c

    const/4 v8, 0x0

    goto :goto_1f

    :cond_2c
    move-object/from16 v8, p8

    :goto_1f
    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_20

    :cond_2d
    move-object/from16 v0, p9

    :goto_20
    if-eqz v4, :cond_2e

    const/4 v4, 0x0

    :goto_21
    const/16 v15, 0x400

    goto :goto_22

    :cond_2e
    move-object/from16 v4, p10

    goto :goto_21

    :goto_22
    and-int/2addr v15, v1

    if-eqz v15, :cond_2f

    invoke-static {v12}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-ITpI4ow(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v15

    goto :goto_23

    :cond_2f
    move-object/from16 v15, p11

    :goto_23
    if-eqz v10, :cond_30

    move-object/from16 v27, v0

    move-object/from16 v21, v2

    move-object/from16 v28, v4

    move/from16 v24, v7

    move-object/from16 v26, v8

    move-object v2, v15

    const/16 v29, 0x0

    goto :goto_24

    :cond_30
    move-object/from16 v29, p12

    move-object/from16 v27, v0

    move-object/from16 v21, v2

    move-object/from16 v28, v4

    move/from16 v24, v7

    move-object/from16 v26, v8

    move-object v2, v15

    :goto_24
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x1319ac60

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v29, :cond_32

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v7, :cond_31

    invoke-static {v12}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v4

    :cond_31
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v10, v4

    goto :goto_25

    :cond_32
    move-object/from16 v10, v29

    :goto_25
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v10, v12, v8}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_33

    new-instance v4, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v4}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v4, Landroidx/compose/ui/focus/FocusRequester;

    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroidx/compose/ui/focus/FocusManager;

    sget v7, Landroidx/compose/material3/internal/Strings;->$r8$clinit:I

    const v7, 0x7f130b77

    invoke-static {v7, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v7

    const v9, 0x7f130b79

    invoke-static {v9, v12}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v9

    sget-object v8, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v31

    const-wide/16 v33, 0x10

    cmp-long v17, v31, v33

    if-eqz v17, :cond_34

    :goto_26
    move-wide/from16 v34, v31

    goto :goto_28

    :cond_34
    if-nez v24, :cond_35

    iget-wide v13, v2, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    :goto_27
    move-wide/from16 v31, v13

    goto :goto_26

    :cond_35
    if-eqz v30, :cond_36

    iget-wide v13, v2, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    goto :goto_27

    :cond_36
    iget-wide v13, v2, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    goto :goto_27

    :goto_28
    sget v13, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMinWidth:F

    sget v14, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMaxWidth:F

    sget v17, Landroidx/compose/material3/SearchBarDefaults;->InputFieldHeight:F

    const/16 v31, 0x0

    const/16 v32, 0x8

    move-object/from16 p6, v21

    move/from16 p7, v13

    move/from16 p8, v17

    move/from16 p9, v14

    move/from16 p10, v31

    move/from16 p11, v32

    invoke-static/range {p6 .. p11}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-static {v13, v4}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const v14, 0xe000

    and-int/2addr v14, v11

    const/16 v1, 0x4000

    if-ne v14, v1, :cond_37

    move/from16 v1, v20

    goto :goto_29

    :cond_37
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_38

    if-ne v14, v0, :cond_39

    :cond_38
    new-instance v14, Landroidx/compose/material3/SearchBarDefaults$InputField$1$1;

    invoke-direct {v14, v5}, Landroidx/compose/material3/SearchBarDefaults$InputField$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_39
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v14}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    and-int/lit16 v14, v11, 0x1c00

    const/16 v3, 0x800

    if-ne v14, v3, :cond_3a

    move/from16 v3, v20

    goto :goto_2a

    :cond_3a
    const/4 v3, 0x0

    :goto_2a
    or-int/2addr v3, v13

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v3, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v3, :cond_3b

    if-ne v13, v0, :cond_3c

    :cond_3b
    new-instance v13, Landroidx/compose/material3/SearchBarDefaults$InputField$2$1;

    invoke-direct {v13, v7, v6, v9, v4}, Landroidx/compose/material3/SearchBarDefaults$InputField$2$1;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/focus/FocusRequester;)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v1, v3, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextStyle;

    new-instance v4, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v33, v4

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const v63, 0xfffffe

    const/16 v64, 0x0

    invoke-direct/range {v33 .. v64}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v14

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v7, v2, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v16, Landroidx/compose/foundation/text/KeyboardOptions;

    sget-object v4, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v35, Landroidx/compose/ui/text/input/ImeAction;->Search:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x77

    const/16 v40, 0x0

    move-object/from16 v31, v16

    invoke-direct/range {v31 .. v40}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;IILandroidx/compose/ui/text/input/PlatformImeOptions;Ljava/lang/Boolean;Landroidx/compose/ui/text/intl/LocaleList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit16 v4, v11, 0x380

    const/16 v7, 0x100

    if-ne v4, v7, :cond_3d

    move/from16 v4, v20

    goto :goto_2b

    :cond_3d
    move v4, v3

    :goto_2b
    and-int/lit8 v8, v11, 0xe

    const/4 v7, 0x4

    if-ne v8, v7, :cond_3e

    move/from16 v7, v20

    goto :goto_2c

    :cond_3e
    move v7, v3

    :goto_2c
    or-int/2addr v4, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_40

    if-ne v7, v0, :cond_3f

    goto :goto_2d

    :cond_3f
    move-object/from16 v4, p1

    move-object/from16 v9, p3

    goto :goto_2e

    :cond_40
    :goto_2d
    new-instance v7, Landroidx/compose/material3/SearchBarDefaults$InputField$3$1;

    move-object/from16 v4, p1

    move-object/from16 v9, p3

    invoke-direct {v7, v9, v4}, Landroidx/compose/material3/SearchBarDefaults$InputField$3$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_2e
    move-object/from16 v36, v7

    check-cast v36, Lkotlin/jvm/functions/Function1;

    new-instance v31, Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v7, v31

    const/16 v38, 0x2f

    const/16 v39, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v31 .. v39}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/material3/SearchBarDefaults$InputField$4;

    move-object/from16 p6, v3

    move-object/from16 p7, p1

    move/from16 p8, v24

    move-object/from16 p9, v10

    move-object/from16 p10, v26

    move-object/from16 p11, v27

    move-object/from16 p12, v28

    move-object/from16 p13, v2

    invoke-direct/range {p6 .. p13}, Landroidx/compose/material3/SearchBarDefaults$InputField$4;-><init>(Ljava/lang/String;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;)V

    move-object/from16 p6, v0

    const v0, -0x78f45657

    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object v3, v15

    move-object v15, v0

    const/high16 v0, 0x6180000

    or-int/2addr v0, v8

    and-int/lit8 v8, v11, 0x70

    or-int/2addr v0, v8

    shr-int/lit8 v8, v11, 0x9

    and-int/lit16 v8, v8, 0x1c00

    or-int v17, v0, v8

    const/4 v11, 0x0

    const/4 v0, 0x0

    move-object v8, v12

    move-object v12, v0

    const/4 v0, 0x0

    move v4, v0

    const/4 v0, 0x1

    move-object/from16 p7, v8

    const/16 v22, 0x0

    move v8, v0

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v23, v10

    move v10, v0

    const/high16 v18, 0x30000

    const/16 v19, 0x1e10

    move-object/from16 v65, p6

    move-object/from16 v0, p1

    move-object/from16 v25, v1

    move-object/from16 v1, p2

    move-object/from16 v31, v2

    move-object v2, v13

    move-object v13, v3

    move/from16 v3, v24

    move-object v5, v14

    move-object/from16 v6, v16

    move-object v14, v13

    move-object/from16 v13, v23

    move-object/from16 v66, v14

    move-object/from16 v14, v25

    move-object/from16 v16, p7

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    if-nez p4, :cond_41

    if-eqz v30, :cond_41

    move/from16 v0, v20

    goto :goto_2f

    :cond_41
    move/from16 v0, v22

    :goto_2f
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    move-object/from16 v7, v66

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_42

    move-object/from16 v3, v65

    if-ne v4, v3, :cond_43

    :cond_42
    new-instance v4, Landroidx/compose/material3/SearchBarDefaults$InputField$5$1;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v7, v3}, Landroidx/compose/material3/SearchBarDefaults$InputField$5$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_43
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v7, v21

    move/from16 v8, v24

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v13, v29

    move-object/from16 v12, v31

    :goto_30
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_44

    new-instance v14, Landroidx/compose/material3/SearchBarDefaults$InputField$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v67, v14

    move/from16 v14, p14

    move-object/from16 v68, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SearchBarDefaults$InputField$6;-><init>(Landroidx/compose/material3/SearchBarDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v1, v67

    move-object/from16 v0, v68

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_44
    return-void
.end method
