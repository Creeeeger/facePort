.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;

.field public static final categories:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;

    invoke-direct {v0}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;-><init>()V

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;

    sget-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material/icons/filled/TvKt;->_tv:Landroidx/compose/ui/graphics/vector/ImageVector;

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v11, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0x60

    const/16 v22, 0x0

    const-string v12, "Filled.Tv"

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v11, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v14, v11, v12, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    invoke-static {v3, v6, v6, v6}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v11

    const/high16 v24, -0x40000000    # -2.0f

    const/high16 v25, 0x40000000    # 2.0f

    const v20, -0x40733333    # -1.1f

    const/16 v21, 0x0

    const/high16 v22, -0x40000000    # -2.0f

    const v23, 0x3f666666    # 0.9f

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v24, 0x40000000    # 2.0f

    const/16 v20, 0x0

    const v21, 0x3f8ccccd    # 1.1f

    const v22, 0x3f666666    # 0.9f

    const/high16 v23, 0x40000000    # 2.0f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v24, 0x3ffeb852    # 1.99f

    const/high16 v25, -0x40000000    # -2.0f

    const v20, 0x3f8ccccd    # 1.1f

    const/16 v21, 0x0

    const v22, 0x3ffeb852    # 1.99f

    const v23, -0x4099999a    # -0.9f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v12, 0x41b80000    # 23.0f

    invoke-virtual {v11, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v24, -0x40000000    # -2.0f

    const/16 v20, 0x0

    const v21, -0x40733333    # -1.1f

    const v22, -0x4099999a    # -0.9f

    const/high16 v23, -0x40000000    # -2.0f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v11, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v11, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v11, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v12, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v17, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v11, v0

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/filled/TvKt;->_tv:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_0
    sget-object v11, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$1;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$1;

    const v12, 0x7f13123b

    invoke-static {v12, v0, v11}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;->access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v0

    sget-object v11, Landroidx/compose/material/icons/filled/VerticalSplitKt;->_verticalSplit:Landroidx/compose/ui/graphics/vector/ImageVector;

    const/high16 v14, 0x41980000    # 19.0f

    const/high16 v15, 0x41600000    # 14.0f

    const/high16 v1, 0x41500000    # 13.0f

    if-eqz v11, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v17, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v27, 0x60

    const/16 v28, 0x0

    const-string v18, "Filled.VerticalSplit"

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41c00000    # 24.0f

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v17, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v17, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v3, v12, v13, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v12, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v12, v6, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12, v6, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v12, v6, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v13, 0x41300000    # 11.0f

    invoke-virtual {v12, v6, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v12, v13, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v6, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v12, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-static {v12, v13, v5, v6, v5}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v12, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v2, -0x3f000000    # -8.0f

    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v12, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v2, v12, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v23, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v11

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-static/range {v17 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v11

    sput-object v11, Landroidx/compose/material/icons/filled/VerticalSplitKt;->_verticalSplit:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    sget-object v2, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$2;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$2;

    const v3, 0x7f13123a

    invoke-static {v3, v11, v2}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;->access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v2

    sget-object v3, Landroidx/compose/material/icons/filled/KeyboardKt;->_keyboard:Landroidx/compose/ui/graphics/vector/ImageVector;

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, 0x40e00000    # 7.0f

    const/high16 v13, 0x41b00000    # 22.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v15, 0x41a00000    # 20.0f

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v20, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v39, 0x60

    const/16 v40, 0x0

    const-string v30, "Filled.Keyboard"

    const/high16 v31, 0x41c00000    # 24.0f

    const/high16 v32, 0x41c00000    # 24.0f

    const/high16 v33, 0x41c00000    # 24.0f

    const/high16 v34, 0x41c00000    # 24.0f

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v40}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v20, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v21, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v1, v7, v8, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v36, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    invoke-static {v15, v5, v14, v5}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v7

    const v34, -0x400147ae    # -1.99f

    const/high16 v35, 0x40000000    # 2.0f

    const v30, -0x40733333    # -1.1f

    const/16 v31, 0x0

    const v32, -0x400147ae    # -1.99f

    const v33, 0x3f666666    # 0.9f

    move-object/from16 v29, v7

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v7, v9, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v34, 0x40000000    # 2.0f

    const/16 v30, 0x0

    const v31, 0x3f8ccccd    # 1.1f

    const v32, 0x3f666666    # 0.9f

    const/high16 v33, 0x40000000    # 2.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v35, -0x40000000    # -2.0f

    const v30, 0x3f8ccccd    # 1.1f

    const/16 v31, 0x0

    const/high16 v32, 0x40000000    # 2.0f

    const v33, -0x4099999a    # -0.9f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v7, v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v34, -0x40000000    # -2.0f

    const/16 v30, 0x0

    const v31, -0x40733333    # -1.1f

    const v32, -0x4099999a    # -0.9f

    const/high16 v33, -0x40000000    # -2.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v13, 0x41300000    # 11.0f

    invoke-virtual {v7, v13, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v15, -0x40000000    # -2.0f

    invoke-virtual {v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v13, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v7, v8, v8, v8, v13}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v7, v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v8, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v7, v6, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v7, v13, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v7, v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v7, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v4, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v32, v1

    invoke-static/range {v29 .. v37}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/icons/filled/KeyboardKt;->_keyboard:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_2
    sget-object v1, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$3;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$3;

    const v4, 0x7f131239

    invoke-static {v4, v3, v1}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;->access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v1

    sget-object v3, Landroidx/compose/material/icons/filled/AppsKt;->_apps:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v39, 0x60

    const/16 v40, 0x0

    const-string v30, "Filled.Apps"

    const/high16 v31, 0x41c00000    # 24.0f

    const/high16 v32, 0x41c00000    # 24.0f

    const/high16 v33, 0x41c00000    # 24.0f

    const/high16 v34, 0x41c00000    # 24.0f

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v40}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v4, v7, v8, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v36, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v5, v14, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v7, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v14, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v8, -0x3f800000    # -4.0f

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v14, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v14, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v14, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v14, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v6, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v7, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v5, v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v7, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    move-object/from16 v32, v4

    invoke-static/range {v29 .. v37}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/icons/filled/AppsKt;->_apps:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_3
    sget-object v4, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$4;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$4;

    const v5, 0x7f131238

    invoke-static {v5, v3, v4}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;->access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v3

    sget-object v4, Landroidx/compose/material/icons/filled/AccessibilityKt;->_accessibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v4, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v39, 0x60

    const/16 v40, 0x0

    const-string v30, "Filled.Accessibility"

    const/high16 v31, 0x41c00000    # 24.0f

    const/high16 v32, 0x41c00000    # 24.0f

    const/high16 v33, 0x41c00000    # 24.0f

    const/high16 v34, 0x41c00000    # 24.0f

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v29, v4

    invoke-direct/range {v29 .. v40}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v5, v6, v7, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v36, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v34, 0x40000000    # 2.0f

    const/high16 v35, 0x40000000    # 2.0f

    const v30, 0x3f8ccccd    # 1.1f

    const/16 v31, 0x0

    const/high16 v32, 0x40000000    # 2.0f

    const v33, 0x3f666666    # 0.9f

    move-object/from16 v29, v6

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v7, -0x4099999a    # -0.9f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v6, v7, v9, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v6, v8, v7, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v7, 0x3f666666    # 0.9f

    invoke-virtual {v6, v7, v8, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v7, 0x41a80000    # 21.0f

    const/high16 v10, 0x41100000    # 9.0f

    invoke-virtual {v6, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v7, -0x3f400000    # -6.0f

    invoke-virtual {v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v11, 0x41500000    # 13.0f

    invoke-virtual {v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v6, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v6, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v6, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v6, v7, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v6, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v6, v6, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move-object/from16 v32, v5

    invoke-static/range {v29 .. v37}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    sput-object v4, Landroidx/compose/material/icons/filled/AccessibilityKt;->_accessibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_4
    sget-object v5, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$5;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData$categories$5;

    const v6, 0x7f131237

    invoke-static {v6, v4, v5}, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryDataKt;->access$shortcutHelperCategory(ILandroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v4

    filled-new-array {v0, v2, v1, v3, v4}, [Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperCategory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyboard/shortcut/ui/composable/ShortcutHelperTemporaryData;->categories:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
