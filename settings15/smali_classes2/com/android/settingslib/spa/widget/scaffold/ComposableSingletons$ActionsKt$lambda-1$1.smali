.class final Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$ActionsKt$lambda-1$1;

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
    .locals 27

    const v2, 0x3f6147ae    # 0.88f

    const v3, 0x3e9eb852    # 0.31f

    const v4, -0x409eb852    # -0.88f

    const v5, -0x3ff8f5c3    # -2.11f

    const v6, -0x416147ae    # -0.31f

    const v7, -0x4039999a    # -1.55f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0xb

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    move-object v12, v15

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/compose/material/icons/outlined/FindInPageKt;->_findInPage:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v12, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v17, "Outlined.FindInPage"

    const/high16 v18, 0x41c00000    # 24.0f

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const-wide/16 v22, 0x0

    const/16 v26, 0x60

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v13, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, -0x400147ae    # -1.99f

    const/high16 v22, 0x40000000    # 2.0f

    const v17, -0x40733333    # -1.1f

    const/16 v18, 0x0

    const v19, -0x400147ae    # -1.99f

    const v20, 0x3f666666    # 0.9f

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v0, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x3ffeb852    # 1.99f

    const/16 v17, 0x0

    const v18, 0x3f8ccccd    # 1.1f

    const v19, 0x3f63d70a    # 0.89f

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, -0x40000000    # -2.0f

    const v17, 0x3f8ccccd    # 1.1f

    const/16 v18, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    const v20, -0x4099999a    # -0.9f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v1, -0x3f400000    # -6.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v0, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v1, 0x410947ae    # 8.58f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v1, -0x40147ae1    # -1.84f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v21, -0x40dc28f6    # -0.64f

    const v22, -0x3f370a3d    # -6.28f

    const v17, 0x3fa3d70a    # 1.28f

    const v18, -0x4007ae14    # -1.94f

    const v19, 0x3f88f5c3    # 1.07f

    const v20, -0x3f6dc28f    # -4.57f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v21, 0x41400000    # 12.0f

    const/high16 v22, 0x41000000    # 8.0f

    const v17, 0x4168cccd    # 14.55f

    const v18, 0x4107d70a    # 8.49f

    const v19, 0x41547ae1    # 13.28f

    const/high16 v20, 0x41000000    # 8.0f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, -0x3f9e147b    # -3.53f

    const v22, 0x3fbae148    # 1.46f

    const v17, -0x405c28f6    # -1.28f

    const/16 v18, 0x0

    const v19, -0x3fdccccd    # -2.55f

    const v20, 0x3efae148    # 0.49f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/16 v21, 0x0

    const v22, 0x40e1999a    # 7.05f

    const v17, -0x40066666    # -1.95f

    const v18, 0x3ff9999a    # 1.95f

    const v19, -0x40066666    # -1.95f

    const v20, 0x40a3851f    # 5.11f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v21, 0x4061eb85    # 3.53f

    const v22, 0x3fbae148    # 1.46f

    const v17, 0x3f7851ec    # 0.97f

    const v18, 0x3f7851ec    # 0.97f

    const/high16 v19, 0x40100000    # 2.25f

    const v20, 0x3fbae148    # 1.46f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v21, 0x40300000    # 2.75f

    const v22, -0x40ab851f    # -0.83f

    const v17, 0x3f75c28f    # 0.96f

    const/16 v18, 0x0

    const v19, 0x3ff5c28f    # 1.92f

    const v20, -0x4170a3d7    # -0.28f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v1, 0x418ccccd    # 17.6f

    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v1, 0x4161c28f    # 14.11f

    const v8, 0x4171999a    # 15.1f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, -0x3ff8f5c3    # -2.11f

    const v22, 0x3f6147ae    # 0.88f

    const v17, -0x40f0a3d7    # -0.56f

    const v18, 0x3f0f5c29    # 0.56f

    const v19, -0x405851ec    # -1.31f

    const v20, 0x3f6147ae    # 0.88f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v0, v7, v6, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v21, -0x409eb852    # -0.88f

    const v22, -0x3ff8f5c3    # -2.11f

    const v18, -0x40f0a3d7    # -0.56f

    const v19, -0x409eb852    # -0.88f

    const v20, -0x405851ec    # -1.31f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v0, v3, v7, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v21, 0x40070a3d    # 2.11f

    const v22, -0x409eb852    # -0.88f

    const v17, 0x3f0f5c29    # 0.56f

    const v18, -0x40ee147b    # -0.57f

    const v19, 0x3fa7ae14    # 1.31f

    const v20, -0x409eb852    # -0.88f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v1, 0x3fc66666    # 1.55f

    const v5, 0x40070a3d    # 2.11f

    invoke-virtual {v0, v1, v3, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v21, 0x3f6147ae    # 0.88f

    const v22, 0x40070a3d    # 2.11f

    const v18, 0x3f0f5c29    # 0.56f

    const v19, 0x3f6147ae    # 0.88f

    const v20, 0x3fa7ae14    # 1.31f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v1, 0x3fc66666    # 1.55f

    const v2, 0x40070a3d    # 2.11f

    invoke-virtual {v0, v6, v1, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v12, v0, v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/outlined/FindInPageKt;->_findInPage:Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object v12, v0

    :goto_1
    const v0, 0x7f142080

    invoke-static {v15, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/4 v14, 0x0

    const-wide/16 v0, 0x0

    move-object v2, v15

    move-wide v15, v0

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
