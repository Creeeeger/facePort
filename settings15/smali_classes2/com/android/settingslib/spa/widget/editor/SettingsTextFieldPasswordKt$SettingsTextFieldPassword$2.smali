.class final Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;
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


# instance fields
.field final synthetic $visibility$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;->$visibility$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x405ae148    # 3.42f

    const v2, 0x4077ae14    # 3.87f

    const v3, 0x4000a3d7    # 2.01f

    const v4, 0x3fb47ae1    # 1.41f

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0xb

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move-object v6, v5

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v6, v0, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;->$visibility$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x41400000    # 12.0f

    if-eqz v6, :cond_3

    sget-object v6, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v6, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v10, "Outlined.VisibilityOff"

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const-wide/16 v15, 0x0

    const/16 v19, 0x60

    move-object v9, v6

    invoke-direct/range {v9 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v9, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v10, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v17, 0x410d1eb8    # 8.82f

    const/high16 v18, 0x40b00000    # 5.5f

    const v13, 0x40728f5c    # 3.79f

    const/4 v14, 0x0

    const v15, 0x40e570a4    # 7.17f

    const v16, 0x400851ec    # 2.13f

    move-object v12, v10

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v17, -0x3fe5c28f    # -2.41f

    const v18, 0x4047ae14    # 3.12f

    const v13, -0x40e8f5c3    # -0.59f

    const v14, 0x3f9c28f6    # 1.22f

    const v15, -0x404a3d71    # -1.42f

    const v16, 0x401147ae    # 2.27f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v10, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, 0x404b851f    # 3.18f

    const v18, -0x3f6f0a3d    # -4.53f

    const v13, 0x3fb1eb85    # 1.39f

    const v14, -0x40628f5c    # -1.23f

    const v15, 0x401f5c29    # 2.49f

    const v16, -0x3fceb852    # -2.77f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x40800000    # 4.0f

    const v13, 0x41aa28f6    # 21.27f

    const v14, 0x40e3851f    # 7.11f

    const/high16 v15, 0x41880000    # 17.0f

    const/high16 v16, 0x40800000    # 4.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v17, -0x3f970a3d    # -3.64f

    const v18, 0x3f11eb85    # 0.57f

    const v13, -0x405d70a4    # -1.27f

    const/4 v14, 0x0

    const v15, -0x3fe0a3d7    # -2.49f

    const v16, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v7, 0x3fd33333    # 1.65f

    invoke-virtual {v10, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x40c00000    # 6.0f

    const v13, 0x412a8f5c    # 10.66f

    const v14, 0x40c2e148    # 6.09f

    const v15, 0x41351eb8    # 11.32f

    const/high16 v16, 0x40c00000    # 6.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v7, 0x412ee148    # 10.93f

    const v8, 0x40e47ae1    # 7.14f

    invoke-virtual {v10, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v7, 0x41500000    # 13.0f

    const v8, 0x41135c29    # 9.21f

    invoke-virtual {v10, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v17, 0x3fa3d70a    # 1.28f

    const v18, 0x3fa3d70a    # 1.28f

    const v13, 0x3f11eb85    # 0.57f

    const/high16 v14, 0x3e800000    # 0.25f

    const v15, 0x3f83d70a    # 1.03f

    const v16, 0x3f35c28f    # 0.71f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v7, 0x40047ae1    # 2.07f

    invoke-virtual {v10, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, 0x3e0f5c29    # 0.14f

    const v18, -0x40770a3d    # -1.07f

    const v13, 0x3da3d70a    # 0.08f

    const v14, -0x4151eb85    # -0.34f

    const v15, 0x3e0f5c29    # 0.14f

    const v16, -0x40cccccd    # -0.7f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x40e00000    # 7.0f

    const/high16 v13, 0x41840000    # 16.5f

    const v14, 0x411028f6    # 9.01f

    const v15, 0x4167ae14    # 14.48f

    const/high16 v16, 0x40e00000    # 7.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v17, -0x40770a3d    # -1.07f

    const v18, 0x3e0f5c29    # 0.14f

    const v13, -0x41428f5c    # -0.37f

    const/4 v14, 0x0

    const v15, -0x40c7ae14    # -0.72f

    const v16, 0x3d4ccccd    # 0.05f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v10, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x402b851f    # 2.68f

    invoke-virtual {v10, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x41380000    # 11.5f

    const v13, 0x4043d70a    # 3.06f

    const v14, 0x40fa8f5c    # 7.83f

    const v15, 0x3fe28f5c    # 1.77f

    const v16, 0x41187ae1    # 9.53f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x41980000    # 19.0f

    const v13, 0x402eb852    # 2.73f

    const v14, 0x417e3d71    # 15.89f

    const/high16 v15, 0x40e00000    # 7.0f

    const/high16 v16, 0x41980000    # 19.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v17, 0x408a3d71    # 4.32f

    const v18, -0x40ae147b    # -0.82f

    const v13, 0x3fc28f5c    # 1.52f

    const/4 v14, 0x0

    const v15, 0x403eb852    # 2.98f

    const v16, -0x416b851f    # -0.29f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v10, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v7, -0x404b851f    # -1.41f

    invoke-virtual {v10, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v4, 0x401ccccd    # 2.45f

    invoke-virtual {v10, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v10, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v1, 0x411828f6    # 9.51f

    const v2, 0x4135eb85    # 11.37f

    invoke-virtual {v10, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x40270a3d    # 2.61f

    invoke-virtual {v10, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, -0x420a3d71    # -0.12f

    const v18, 0x3ca3d70a    # 0.02f

    const v13, -0x42dc28f6    # -0.04f

    const v14, 0x3c23d70a    # 0.01f

    const v15, -0x425c28f6    # -0.08f

    const v16, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v17, -0x3fe00000    # -2.5f

    const/high16 v18, -0x3fe00000    # -2.5f

    const v13, -0x404f5c29    # -1.38f

    const/4 v14, 0x0

    const/high16 v15, -0x3fe00000    # -2.5f

    const v16, -0x4070a3d7    # -1.12f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v17, 0x3c23d70a    # 0.01f

    const v18, -0x41fae148    # -0.13f

    const/4 v13, 0x0

    const v14, -0x42b33333    # -0.05f

    const v15, 0x3c23d70a    # 0.01f

    const v16, -0x425c28f6    # -0.08f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v1, 0x40c3851f    # 6.11f

    const v2, 0x40ff0a3d    # 7.97f

    invoke-virtual {v10, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-virtual {v10, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v17, -0x4147ae14    # -0.36f

    const v18, 0x3fe3d70a    # 1.78f

    const v13, -0x41947ae1    # -0.23f

    const v14, 0x3f0ccccd    # 0.55f

    const v15, -0x4147ae14    # -0.36f

    const v16, 0x3f933333    # 1.15f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v17, 0x40900000    # 4.5f

    const/high16 v18, 0x40900000    # 4.5f

    const/4 v13, 0x0

    const v14, 0x401eb852    # 2.48f

    const v15, 0x400147ae    # 2.02f

    const/high16 v16, 0x40900000    # 4.5f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v17, 0x3fe28f5c    # 1.77f

    const v18, -0x4147ae14    # -0.36f

    const v13, 0x3f2147ae    # 0.63f

    const/4 v14, 0x0

    const v15, 0x3f9d70a4    # 1.23f

    const v16, -0x41fae148    # -0.13f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v1, 0x3f7ae148    # 0.98f

    invoke-virtual {v10, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v17, -0x3fd00000    # -2.75f

    const v18, 0x3ec28f5c    # 0.38f

    const v13, -0x409eb852    # -0.88f

    const v14, 0x3e75c28f    # 0.24f

    const v15, -0x4019999a    # -1.8f

    const v16, 0x3ec28f5c    # 0.38f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v17, -0x3ef2e148    # -8.82f

    const/high16 v18, -0x3f500000    # -5.5f

    const v13, -0x3f8d70a4    # -3.79f

    const/4 v14, 0x0

    const v15, -0x3f1a8f5c    # -7.17f

    const v16, -0x3ff7ae14    # -2.13f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v17, 0x403b851f    # 2.93f

    const v18, -0x3f9e147b    # -3.53f

    const v13, 0x3f333333    # 0.7f

    const v14, -0x4048f5c3    # -1.43f

    const v15, 0x3fdc28f6    # 1.72f

    const v16, -0x3fd8f5c3    # -2.61f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v10, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v6, v1, v9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    sput-object v6, Landroidx/compose/material/icons/outlined/VisibilityOffKt;->_visibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    move-object v7, v6

    goto/16 :goto_3

    :cond_3
    sget-object v1, Landroidx/compose/material/icons/outlined/VisibilityKt;->_visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v1, :cond_4

    :goto_2
    move-object v6, v1

    goto :goto_1

    :cond_4
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v10, "Outlined.Visibility"

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const-wide/16 v15, 0x0

    const/16 v19, 0x60

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v2, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v3, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v12, 0x40e570a4    # 7.17f

    const v13, 0x400851ec    # 2.13f

    const v10, 0x40728f5c    # 3.79f

    const/4 v11, 0x0

    const v14, 0x410d1eb8    # 8.82f

    const/high16 v15, 0x40b00000    # 5.5f

    move-object v9, v3

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v12, 0x417ca3d7    # 15.79f

    const/high16 v13, 0x41880000    # 17.0f

    const v10, 0x41995c29    # 19.17f

    const v11, 0x416deb85    # 14.87f

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41880000    # 17.0f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, -0x3f1a8f5c    # -7.17f

    const v6, -0x3ff7ae14    # -2.13f

    const v7, -0x3ef2e148    # -8.82f

    const/high16 v9, -0x3f500000    # -5.5f

    invoke-virtual {v3, v4, v6, v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v12, 0x41035c29    # 8.21f

    const/high16 v13, 0x40c00000    # 6.0f

    const v10, 0x409a8f5c    # 4.83f

    const v11, 0x4102147b    # 8.13f

    const/high16 v15, 0x40c00000    # 6.0f

    move-object v9, v3

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v4, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    new-instance v6, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    const/4 v7, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    invoke-direct {v6, v7, v15}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v12, 0x402eb852    # 2.73f

    const v13, 0x40e3851f    # 7.11f

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v4, 0x41380000    # 11.5f

    move-object v9, v3

    move v6, v15

    move v15, v4

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v12, 0x40e00000    # 7.0f

    const/high16 v13, 0x41980000    # 19.0f

    const v10, 0x402eb852    # 2.73f

    const v11, 0x417e3d71    # 15.89f

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41980000    # 19.0f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x411451ec    # 9.27f

    const v9, -0x3fb8f5c3    # -3.11f

    const/high16 v10, 0x41300000    # 11.0f

    const/high16 v11, -0x3f100000    # -7.5f

    invoke-virtual {v3, v4, v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v13, 0x40800000    # 4.0f

    const v10, 0x41aa28f6    # 21.27f

    const v11, 0x40e3851f    # 7.11f

    const/high16 v15, 0x40800000    # 4.0f

    move-object v9, v3

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v3, v8, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v12, 0x40200000    # 2.5f

    const v13, 0x3f8f5c29    # 1.12f

    const v10, 0x3fb0a3d7    # 1.38f

    const/4 v11, 0x0

    const/high16 v14, 0x40200000    # 2.5f

    const/high16 v15, 0x40200000    # 2.5f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, 0x4156147b    # 13.38f

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v3, v9, v10, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    const v9, -0x4070a3d7    # -1.12f

    const/high16 v10, -0x3fe00000    # -2.5f

    invoke-virtual {v3, v10, v9, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v9, 0x4129eb85    # 10.62f

    invoke-virtual {v3, v9, v4, v8, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    iget-object v4, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    invoke-direct {v9, v7, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v12, -0x3f700000    # -4.5f

    const v13, 0x400147ae    # 2.02f

    const v10, -0x3fe147ae    # -2.48f

    const/4 v11, 0x0

    const/high16 v14, -0x3f700000    # -4.5f

    const/high16 v15, 0x40900000    # 4.5f

    move-object v9, v3

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v4, 0x411851ec    # 9.52f

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v6, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    const v4, -0x3ffeb852    # -2.02f

    const/high16 v6, -0x3f700000    # -4.5f

    const/high16 v7, 0x40900000    # 4.5f

    invoke-virtual {v3, v7, v4, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v4, 0x4167ae14    # 14.48f

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-virtual {v3, v4, v6, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    sput-object v1, Landroidx/compose/material/icons/outlined/VisibilityKt;->_visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_2

    :goto_3
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-string v2, "Visibility Icon"

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconSize:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;->$visibility$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v12, v5

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x5833f624

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;->$visibility$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_5

    new-instance v3, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2$1$1;

    invoke-direct {v3, v0}, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-XHw0xAI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v13, 0x30

    const/16 v14, 0x8

    const-string v8, "Visibility Icon"

    const-wide/16 v10, 0x0

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
