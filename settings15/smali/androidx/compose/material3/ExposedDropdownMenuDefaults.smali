.class public final Landroidx/compose/material3/ExposedDropdownMenuDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

.field public static final ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    sget v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->ExposedDropdownMenuItemHorizontalPadding:F

    const/4 v1, 0x0

    int-to-float v1, v1

    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v2, v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v2, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    return-void
.end method


# virtual methods
.method public final TrailingIcon(ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move/from16 v2, p1

    const/4 v0, 0x2

    move-object/from16 v1, p3

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x7670b0a8

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, p4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p4, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int v3, p4, v3

    goto :goto_1

    :cond_2
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    const/16 v4, 0x20

    if-eqz v0, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v5, p4, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v3, v3, 0x13

    const/16 v6, 0x12

    if-ne v3, v6, :cond_7

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v5

    goto/16 :goto_9

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_5

    :cond_8
    move-object v0, v5

    :goto_5
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material/icons/filled/ArrowDropDownKt;->_arrowDropDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v11, 0x0

    const/16 v15, 0x60

    const-string v6, "Filled.ArrowDropDown"

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v5, v6, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v4, v7, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    const/high16 v8, -0x3f600000    # -5.0f

    invoke-direct {v4, v7, v8}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v6, v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/icons/filled/ArrowDropDownKt;->_arrowDropDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_6
    const/4 v4, 0x0

    if-eqz v2, :cond_a

    const/high16 v5, 0x43340000    # 180.0f

    move v8, v5

    goto :goto_7

    :cond_a
    move v8, v4

    :goto_7
    cmpg-float v4, v8, v4

    if-nez v4, :cond_b

    move-object v5, v0

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    const v11, 0x1feff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move-object v5, v4

    :goto_8
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v9, 0x30

    const/16 v10, 0x8

    move-object v8, v1

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v3, v0

    :goto_9
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v7, Landroidx/compose/material3/ExposedDropdownMenuDefaults$TrailingIcon$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ExposedDropdownMenuDefaults$TrailingIcon$1;-><init>(Landroidx/compose/material3/ExposedDropdownMenuDefaults;ZLandroidx/compose/ui/Modifier;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
