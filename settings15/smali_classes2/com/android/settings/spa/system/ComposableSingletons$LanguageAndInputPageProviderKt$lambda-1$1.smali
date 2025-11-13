.class final Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;
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
.field public static final INSTANCE:Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;->INSTANCE:Lcom/android/settings/spa/system/ComposableSingletons$LanguageAndInputPageProviderKt$lambda-1$1;

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
    .locals 24

    const v2, 0x3fab851f    # 1.34f

    const v3, 0x405851ec    # 3.38f

    const v4, 0x408851ec    # 4.26f

    const/high16 v5, 0x41400000    # 12.0f

    const v6, 0x413fd70a    # 11.99f

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0xb

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    move-object v12, v11

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

    sget-object v12, Landroidx/compose/material/icons/outlined/LanguageKt;->_language:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v12, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v14, "Outlined.Language"

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x41c00000    # 24.0f

    const/high16 v18, 0x41c00000    # 24.0f

    const-wide/16 v19, 0x0

    const/16 v23, 0x60

    move-object v13, v12

    invoke-direct/range {v13 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v14, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v14, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v22, 0x41400000    # 12.0f

    const v17, 0x40cf0a3d    # 6.47f

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x40000000    # 2.0f

    const v20, 0x40cf5c29    # 6.48f

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x408f0a3d    # 4.47f

    const v0, 0x411fd70a    # 9.99f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v14, v15, v1, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const/high16 v21, 0x41b00000    # 22.0f

    const v17, 0x418c28f6    # 17.52f

    const/high16 v18, 0x41b00000    # 22.0f

    const/high16 v19, 0x41b00000    # 22.0f

    const v20, 0x418c28f6    # 17.52f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x418c28f6    # 17.52f

    invoke-virtual {v14, v0, v10, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x41975c29    # 18.92f

    invoke-virtual {v14, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v0, -0x3fc33333    # -2.95f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, -0x404f5c29    # -1.38f

    const v22, -0x3f9c28f6    # -3.56f

    const v17, -0x415c28f6    # -0.32f

    const/high16 v18, -0x40600000    # -1.25f

    const v19, -0x40b851ec    # -0.78f

    const v20, -0x3fe33333    # -2.45f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v21, 0x408a8f5c    # 4.33f

    const v22, 0x4063d70a    # 3.56f

    const v17, 0x3feb851f    # 1.84f

    const v18, 0x3f2147ae    # 0.63f

    const v19, 0x4057ae14    # 3.37f

    const v20, 0x3ff47ae1    # 1.91f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x408147ae    # 4.04f

    invoke-virtual {v14, v5, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, 0x3ff47ae1    # 1.91f

    const v22, 0x407d70a4    # 3.96f

    const v17, 0x3f547ae1    # 0.83f

    const v18, 0x3f99999a    # 1.2f

    const v19, 0x3fbd70a4    # 1.48f

    const v20, 0x4021eb85    # 2.53f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, -0x3f8b851f    # -3.82f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v22, -0x3f828f5c    # -3.96f

    const v17, 0x3edc28f6    # 0.43f

    const v18, -0x4048f5c3    # -1.43f

    const v19, 0x3f8a3d71    # 1.08f

    const v20, -0x3fcf5c29    # -2.76f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v14, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v21, 0x40800000    # 4.0f

    const/high16 v22, 0x41400000    # 12.0f

    const v17, 0x40833333    # 4.1f

    const v18, 0x4155c28f    # 13.36f

    const/high16 v19, 0x40800000    # 4.0f

    const v20, 0x414b0a3d    # 12.69f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, -0x4051eb85    # -1.36f

    const v1, 0x3e851eb8    # 0.26f

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v14, v6, v0, v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v14, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, -0x41f0a3d7    # -0.14f

    const/high16 v22, 0x40000000    # 2.0f

    const v17, -0x425c28f6    # -0.08f

    const v18, 0x3f28f5c3    # 0.66f

    const v19, -0x41f0a3d7    # -0.14f

    const v20, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3e0f5c29    # 0.14f

    invoke-virtual {v14, v0, v2, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v14, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v0, 0x41800000    # 16.0f

    const v1, 0x40a28f5c    # 5.08f

    invoke-virtual {v14, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v0, 0x403ccccd    # 2.95f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, 0x3fb0a3d7    # 1.38f

    const v22, 0x4063d70a    # 3.56f

    const v17, 0x3ea3d70a    # 0.32f

    const/high16 v18, 0x3fa00000    # 1.25f

    const v19, 0x3f47ae14    # 0.78f

    const v20, 0x401ccccd    # 2.45f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v21, -0x3f7570a4    # -4.33f

    const v22, -0x3f9c28f6    # -3.56f

    const v17, -0x40147ae1    # -1.84f

    const v18, -0x40deb852    # -0.63f

    const v19, -0x3fa851ec    # -3.37f

    const v20, -0x400ccccd    # -1.9f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x41007ae1    # 8.03f

    invoke-virtual {v14, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v0, 0x40a28f5c    # 5.08f

    invoke-virtual {v14, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x408a8f5c    # 4.33f

    const v17, 0x3f75c28f    # 0.96f

    const v18, -0x402b851f    # -1.66f

    const v19, 0x401f5c29    # 2.49f

    const v20, -0x3fc47ae1    # -2.93f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v21, 0x41007ae1    # 8.03f

    const/high16 v22, 0x41000000    # 8.0f

    const v17, 0x410cf5c3    # 8.81f

    const v18, 0x40b1999a    # 5.55f

    const v19, 0x4105999a    # 8.35f

    const/high16 v20, 0x40d80000    # 6.75f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x419fae14    # 19.96f

    invoke-virtual {v14, v5, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, -0x400b851f    # -1.91f

    const v22, -0x3f828f5c    # -3.96f

    const v17, -0x40ab851f    # -0.83f

    const v18, -0x40666666    # -1.2f

    const v19, -0x40428f5c    # -1.48f

    const v20, -0x3fde147b    # -2.53f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, 0x40747ae1    # 3.82f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v22, 0x407d70a4    # 3.96f

    const v17, -0x4123d70a    # -0.43f

    const v18, 0x3fb70a3d    # 1.43f

    const v19, -0x4075c28f    # -1.08f

    const v20, 0x4030a3d7    # 2.76f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x416570a4    # 14.34f

    invoke-virtual {v14, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v0, 0x411a8f5c    # 9.66f

    invoke-virtual {v14, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, -0x41dc28f6    # -0.16f

    const/high16 v22, -0x40000000    # -2.0f

    const v17, -0x4247ae14    # -0.09f

    const v18, -0x40d70a3d    # -0.66f

    const v19, -0x41dc28f6    # -0.16f

    const v20, -0x40570a3d    # -1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, -0x40533333    # -1.35f

    const v1, 0x3e23d70a    # 0.16f

    const v4, 0x3d8f5c29    # 0.07f

    invoke-virtual {v14, v4, v0, v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v0, 0x4095c28f    # 4.68f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, 0x3e23d70a    # 0.16f

    const/high16 v22, 0x40000000    # 2.0f

    const v17, 0x3db851ec    # 0.09f

    const v18, 0x3f266666    # 0.65f

    const v19, 0x3e23d70a    # 0.16f

    const v20, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, -0x4270a3d7    # -0.07f

    const v1, -0x41dc28f6    # -0.16f

    invoke-virtual {v14, v0, v2, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x416970a4    # 14.59f

    const v1, 0x419c7ae1    # 19.56f

    invoke-virtual {v14, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, 0x3fb0a3d7    # 1.38f

    const v22, -0x3f9c28f6    # -3.56f

    const v17, 0x3f19999a    # 0.6f

    const v18, -0x4071eb85    # -1.11f

    const v19, 0x3f87ae14    # 1.06f

    const v20, -0x3fec28f6    # -2.31f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, 0x403ccccd    # 2.95f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, -0x3f7570a4    # -4.33f

    const v22, 0x4063d70a    # 3.56f

    const v17, -0x408a3d71    # -0.96f

    const v18, 0x3fd33333    # 1.65f

    const v19, -0x3fe0a3d7    # -2.49f

    const v20, 0x403b851f    # 2.93f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x4182e148    # 16.36f

    invoke-virtual {v14, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, 0x3e0f5c29    # 0.14f

    const/high16 v22, -0x40000000    # -2.0f

    const v17, 0x3da3d70a    # 0.08f

    const v18, -0x40d70a3d    # -0.66f

    const v19, 0x3e0f5c29    # 0.14f

    const v20, -0x40570a3d    # -1.32f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, -0x40547ae1    # -1.34f

    const v1, -0x41f0a3d7    # -0.14f

    const v2, -0x428a3d71    # -0.06f

    invoke-virtual {v14, v2, v0, v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v14, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const v21, 0x3e851eb8    # 0.26f

    const/high16 v22, 0x40000000    # 2.0f

    const v17, 0x3e23d70a    # 0.16f

    const v18, 0x3f23d70a    # 0.64f

    const v19, 0x3e851eb8    # 0.26f

    const v20, 0x3fa7ae14    # 1.31f

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v0, 0x3fae147b    # 1.36f

    const v1, -0x417ae148    # -0.26f

    const v2, -0x42333333    # -0.1f

    invoke-virtual {v14, v2, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const v0, -0x3fa7ae14    # -3.38f

    invoke-virtual {v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v14, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v12, v0, v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v12

    sput-object v12, Landroidx/compose/material/icons/outlined/LanguageKt;->_language:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    const/4 v0, 0x0

    invoke-static {v12, v11, v0}, Lcom/android/settingslib/spa/widget/ui/IconKt;->SettingsIcon(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
