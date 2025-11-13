.class final Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;
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
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt$lambda-9$1;

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
    .locals 21

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material/icons/Icons$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$Outlined;

    sget-object v0, Landroidx/compose/material/icons/outlined/EditKt;->_edit:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "Outlined.Edit"

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    const-wide/16 v12, 0x0

    const/16 v16, 0x60

    const/16 v17, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    const/4 v3, 0x0

    invoke-direct {v9, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v2, 0x4160f5c3    # 14.06f

    const v3, 0x411051ec    # 9.02f

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v3, 0x3f6b851f    # 0.92f

    invoke-virtual {v1, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v3, 0x40bd70a4    # 5.92f

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, -0x40947ae1    # -0.92f

    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v3, 0x4110f5c3    # 9.06f

    const v4, -0x3eef0a3d    # -9.06f

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v3, 0x418d47ae    # 17.66f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v17, -0x40fd70a4    # -0.51f

    const v18, 0x3dcccccd    # 0.1f

    const/high16 v15, -0x41800000    # -0.25f

    const/16 v16, 0x0

    const v19, -0x40cccccd    # -0.7f

    const v20, 0x3e947ae1    # 0.29f

    move-object v14, v1

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v3, -0x4015c28f    # -1.83f

    const v6, 0x3fea3d71    # 1.83f

    invoke-virtual {v1, v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v7, 0x40700000    # 3.75f

    invoke-virtual {v1, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v1, v6, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, 0x3ec7ae14    # 0.39f

    const v18, -0x407d70a4    # -1.02f

    const v15, 0x3ec7ae14    # 0.39f

    const v16, -0x413851ec    # -0.39f

    const/16 v19, 0x0

    const v20, -0x404b851f    # -1.41f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v3, -0x3fea3d71    # -2.34f

    invoke-virtual {v1, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, -0x4119999a    # -0.45f

    const v18, -0x416b851f    # -0.29f

    const v15, -0x41b33333    # -0.2f

    const v16, -0x41b33333    # -0.2f

    const v19, -0x40ca3d71    # -0.71f

    const v20, -0x416b851f    # -0.29f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v3, 0x40c6147b    # 6.19f

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v2, 0x418a0000    # 17.25f

    invoke-virtual {v1, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v2, 0x418e7ae1    # 17.81f

    const v3, 0x411f0a3d    # 9.94f

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v2, -0x3f900000    # -3.75f

    invoke-virtual {v1, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v7, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v0

    invoke-static/range {v6 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/outlined/EditKt;->_edit:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    const v1, 0x7f1305c1

    invoke-static {v1, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v3, 0xc

    int-to-float v3, v3

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/16 v6, 0x180

    const/16 v7, 0x8

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
