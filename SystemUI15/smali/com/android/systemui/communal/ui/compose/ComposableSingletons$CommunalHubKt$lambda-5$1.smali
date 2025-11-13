.class final Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-5$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    const/high16 v0, 0x40d00000    # 6.5f

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v3, 0x38

    int-to-float v3, v3

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/compose/theme/AndroidColorScheme;->secondary:J

    const/16 v6, 0x32

    int-to-float v6, v6

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x10

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v6, 0x36

    invoke-static {v4, v5, v1, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget v5, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, v1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_2

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-static {v5, v1, v5, v4}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    sget-object v3, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    sget-object v3, Landroidx/compose/material/icons/outlined/TouchAppKt;->_touchApp:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v3, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v13, "Outlined.TouchApp"

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x41c00000    # 24.0f

    const-wide/16 v18, 0x0

    const/16 v22, 0x60

    const/16 v23, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v15, v4, v5, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v19, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v4, 0x4191851f    # 18.19f

    const v5, 0x41470a3d    # 12.44f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v4, -0x3fb0a3d7    # -3.24f

    const v5, -0x4030a3d7    # -1.62f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x4007ae14    # 2.12f

    const v10, -0x3f75c28f    # -4.32f

    const v5, 0x3fa51eb8    # 1.29f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x4007ae14    # 2.12f

    const v8, -0x3fdc28f6    # -2.56f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, -0x3f500000    # -5.5f

    const/high16 v10, -0x3f500000    # -5.5f

    const/4 v5, 0x0

    const v6, -0x3fbe147b    # -3.03f

    const v7, -0x3fe1eb85    # -2.47f

    const/high16 v8, -0x3f500000    # -5.5f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, 0x401e147b    # 2.47f

    const/high16 v5, 0x40b00000    # 5.5f

    const/high16 v6, -0x3f500000    # -5.5f

    invoke-virtual {v12, v6, v4, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const/high16 v9, 0x40400000    # 3.0f

    const v10, 0x409c7ae1    # 4.89f

    const/4 v5, 0x0

    const v6, 0x400851ec    # 2.13f

    const v7, 0x3f9c28f6    # 1.22f

    const v8, 0x407eb852    # 3.98f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, 0x4050a3d7    # 3.26f

    invoke-virtual {v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v9, -0x3fef5c29    # -2.26f

    const v10, -0x411eb852    # -0.44f

    const v5, -0x3ff66666    # -2.15f

    const v6, -0x41147ae1    # -0.46f

    const v7, -0x3ffeb852    # -2.02f

    const v8, -0x411eb852    # -0.44f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, -0x404b851f    # -1.41f

    const v10, 0x3f170a3d    # 0.59f

    const v5, -0x40f851ec    # -0.53f

    const/4 v6, 0x0

    const v7, -0x407c28f6    # -1.03f

    const v8, 0x3e570a3d    # 0.21f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x4181c28f    # 16.22f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v4, 0x40a2e148    # 5.09f

    invoke-virtual {v12, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x412bd70a    # 10.74f

    const/high16 v10, 0x41b00000    # 22.0f

    const v5, 0x411851ec    # 9.52f

    const/high16 v6, 0x41ae0000    # 21.75f

    const v7, 0x4121eb85    # 10.12f

    const/high16 v8, 0x41b00000    # 22.0f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x40c9999a    # 6.3f

    invoke-virtual {v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v9, 0x3ffc28f6    # 1.97f

    const v10, -0x402a3d71    # -1.67f

    const v5, 0x3f7ae148    # 0.98f

    const/4 v6, 0x0

    const v7, 0x3fe7ae14    # 1.81f

    const v8, -0x40cccccd    # -0.7f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, 0x3f4ccccd    # 0.8f

    const v5, -0x3f6947ae    # -4.71f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x4191851f    # 18.19f

    const v10, 0x41470a3d    # 12.44f

    const v5, 0x41a03d71    # 20.03f

    const v6, 0x41651eb8    # 14.32f

    const v7, 0x419b0a3d    # 19.38f

    const v8, 0x4150a3d7    # 13.04f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v4, 0x418eb852    # 17.84f

    const v5, 0x4174a3d7    # 15.29f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v4, 0x418851ec    # 17.04f

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v4, -0x3f366666    # -6.3f

    invoke-virtual {v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v9, -0x418a3d71    # -0.24f

    const v10, -0x42333333    # -0.1f

    const v5, -0x4247ae14    # -0.09f

    const/4 v6, 0x0

    const v7, -0x41d1eb85    # -0.17f

    const v8, -0x42dc28f6    # -0.04f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, -0x3f947ae1    # -3.68f

    invoke-virtual {v12, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v4, 0x40880000    # 4.25f

    const v5, 0x3f63d70a    # 0.89f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, -0x41000000    # -0.5f

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, -0x41000000    # -0.5f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v10, 0x3f000000    # 0.5f

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3e6147ae    # 0.22f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v4, 0x3fe147ae    # 1.76f

    invoke-virtual {v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v4, 0x405d70a4    # 3.46f

    const v5, 0x3fdd70a4    # 1.73f

    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x418eb852    # 17.84f

    const v10, 0x4174a3d7    # 15.29f

    const v5, 0x418d851f    # 17.69f

    const v6, 0x4166e148    # 14.43f

    const v7, 0x418f47ae    # 17.91f

    const v8, 0x416dc28f    # 14.86f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v4, 0x41011eb8    # 8.07f

    invoke-virtual {v12, v4, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v9, 0x40600000    # 3.5f

    const/high16 v10, -0x3fa00000    # -3.5f

    const/4 v5, 0x0

    const v6, -0x4008f5c3    # -1.93f

    const v7, 0x3fc8f5c3    # 1.57f

    const/high16 v8, -0x3fa00000    # -3.5f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, 0x3fc8f5c3    # 1.57f

    const/high16 v5, 0x40600000    # 3.5f

    invoke-virtual {v12, v5, v4, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const/high16 v9, -0x40800000    # -1.0f

    const v10, 0x401c28f6    # 2.44f

    const/4 v5, 0x0

    const v6, 0x3f733333    # 0.95f

    const v7, -0x413d70a4    # -0.38f

    const v8, 0x3fe7ae14    # 1.81f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v9, -0x3fe00000    # -2.5f

    const/high16 v10, -0x3fe00000    # -2.5f

    const v6, -0x404f5c29    # -1.38f

    const v7, -0x4070a3d7    # -1.12f

    const/high16 v8, -0x3fe00000    # -2.5f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v10, 0x40200000    # 2.5f

    const v5, -0x404f5c29    # -1.38f

    const/4 v6, 0x0

    const/high16 v7, -0x3fe00000    # -2.5f

    const v8, 0x3f8f5c29    # 1.12f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, 0x401c28f6    # 2.44f

    invoke-virtual {v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v9, 0x41011eb8    # 8.07f

    const/high16 v10, 0x40d00000    # 6.5f

    const v5, 0x41073333    # 8.45f

    const v6, 0x4104f5c3    # 8.31f

    const v7, 0x41011eb8    # 8.07f

    const v8, 0x40ee6666    # 7.45f

    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v13, v12, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v12, v3

    invoke-static/range {v12 .. v20}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/outlined/TouchAppKt;->_touchApp:Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object v3, v0

    :goto_2
    const v0, 0x7f130dcf

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    int-to-float v5, v5

    invoke-static {v11, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/compose/theme/AndroidColorScheme;->onSecondary:J

    const/16 v9, 0x180

    const/4 v10, 0x0

    move-object v8, v1

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    const/16 v3, 0x8

    int-to-float v3, v3

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    const/16 v26, 0x0

    const v27, 0xfffa

    const/4 v4, 0x0

    iget-wide v5, v2, Lcom/android/compose/theme/AndroidColorScheme;->onSecondary:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v9
.end method
