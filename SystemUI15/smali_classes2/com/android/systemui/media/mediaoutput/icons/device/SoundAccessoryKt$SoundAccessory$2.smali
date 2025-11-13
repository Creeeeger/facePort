.class final Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt$SoundAccessory$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 27

    const v2, 0x417e2e49    # 15.8863f

    const v3, 0x41be5d98    # 23.7957f

    const v6, 0x410cf694

    const v7, 0x41874674

    const v8, 0x410ca57a

    const v9, 0x4173ab9f

    const v10, 0x41d829c7

    const v11, 0x41d74e70

    const v12, 0x41a4923a

    const v13, 0x417429c7

    new-instance v26, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    double-to-float v15, v14

    sget-object v14, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v24, 0xe0

    const/16 v25, 0x0

    const-string v16, "SoundAccessory"

    const/high16 v18, 0x42100000    # 36.0f

    const/high16 v19, 0x42100000    # 36.0f

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v14, v26

    move/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v14 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v16, 0xff000000L

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    const/4 v14, 0x0

    invoke-direct {v15, v4, v5, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41dc8aa6

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x41ae491d

    const v21, 0x41dc8aa6

    const v22, 0x41a13296

    const v23, 0x41cf7a44    # 25.9347f

    const v24, 0x41a13296

    const v25, 0x41bf69e2

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a13296

    const v21, 0x41af5d98    # 21.9207f

    const v22, 0x41ae491d

    const v23, 0x41a24d36

    const v24, 0x41be5d98    # 23.7957f

    const v25, 0x41a24d36

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41ce7213

    const v21, 0x41a24d36

    const v22, 0x41db889a    # 27.4417f

    const v23, 0x41af5d98    # 21.9207f

    const v24, 0x41db889a    # 27.4417f

    const v25, 0x41bf69e2

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41db889a    # 27.4417f

    const v21, 0x41cf7a44    # 25.9347f

    const v22, 0x41ce7213

    const v23, 0x41dc8aa6

    const v24, 0x41be5d98    # 23.7957f

    const v25, 0x41dc8aa6

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4194dc92

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x41a6de9e

    const v21, 0x4194dc92

    const v22, 0x4193c1f2

    const v23, 0x41a7f319    # 20.9937f

    const v24, 0x4193c1f2

    const v25, 0x41bf69e2

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4193c1f2

    const v21, 0x41d6e2b7

    const v22, 0x41a6de9e

    const v23, 0x41e9fb4a

    const v24, 0x41be5d98    # 23.7957f

    const v25, 0x41e9fb4a

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41d5daba    # 26.7318f

    const v21, 0x41e9fb4a

    const v22, 0x41e8f766    # 29.1208f

    const v23, 0x41d6e2b7

    const v24, 0x41e8f766    # 29.1208f

    const v25, 0x41bf69e2

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41e8f766    # 29.1208f

    const v21, 0x41a7f319    # 20.9937f

    const v22, 0x41d5daba    # 26.7318f

    const v23, 0x4194dc92

    const v24, 0x41be5d98    # 23.7957f

    const v25, 0x4194dc92

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4140902e

    const v3, 0x40d812d7

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x411313a9

    const v21, 0x40d812d7

    const v22, 0x40dc233a

    const v23, 0x41112824    # 9.0723f

    const v24, 0x40dc233a

    const v25, 0x413ece07

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40dc233a

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40dc233a

    const v21, 0x41852fb8

    const v22, 0x40f182aa

    const v23, 0x418a2787

    const v24, 0x4105e076    # 8.3673f

    const v25, 0x418a2787

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4112ff2e

    const v21, 0x418a2787

    const v22, 0x411daace

    const v23, 0x41852fb8

    const v24, 0x411daace

    const v25, 0x417e2e49    # 15.8863f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x411daace

    const v3, 0x4152ce07

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x411daace

    const v21, 0x41479ad4

    const v22, 0x4114a4a9

    const v23, 0x413e4f0e

    const v24, 0x4108faad

    const v25, 0x413ce69b

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4109fd22    # 8.6243f

    const v21, 0x411ef6fd

    const v22, 0x412287fd

    const v23, 0x4106eecc    # 8.4333f

    const v24, 0x4140902e

    const v25, 0x4106eecc    # 8.4333f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x415e94af

    const v21, 0x4106eecc    # 8.4333f

    const v22, 0x41771f8a    # 15.4452f

    const v23, 0x411ef6fd

    const v24, 0x41782196

    const v25, 0x413ce69b

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x416c7c1c

    const v21, 0x413e4f0e

    const v22, 0x4163758e

    const v23, 0x41479ad4

    const v24, 0x4163758e

    const v25, 0x4152ce07

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4163758e

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4163758e

    const v21, 0x41852fb8

    const v22, 0x416e2196

    const v23, 0x418a2787

    const v24, 0x417b40b8

    const v25, 0x418a2787

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41842fb8

    const v21, 0x418a2787

    const v22, 0x418985bc    # 17.1903f

    const v23, 0x41852fb8

    const v24, 0x418985bc    # 17.1903f

    const v25, 0x417e2e49    # 15.8863f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x418985bc    # 17.1903f

    const v2, 0x413ece07

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x418985bc    # 17.1903f

    const v21, 0x41112824    # 9.0723f

    const v22, 0x416e0d84

    const v23, 0x40d812d7

    const v24, 0x4140902e

    const v25, 0x40d812d7

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41d823d7    # 27.0175f

    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v12, v9, v12, v8}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x41808e22

    invoke-static {v0, v10, v1, v10, v9}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41df923a

    const v21, 0x41874674

    const v22, 0x41e59a6b

    const v23, 0x4181404f

    const v24, 0x41e59a6b

    const v25, 0x4173ab9f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41e59a6b

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41e59a6b

    const v21, 0x40fba0f9    # 7.8634f

    const v22, 0x41df923a

    const v23, 0x40e38866

    const v24, 0x41d829c7

    const v25, 0x40e38866

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40e38866

    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x419d29fc

    const v21, 0x40e38866

    const v22, 0x419721cb

    const v23, 0x40fba0f9    # 7.8634f

    const v24, 0x419721cb

    const v25, 0x410ca57a

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x419721cb

    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x419721cb

    const v21, 0x4181404f

    const v22, 0x419d29fc

    const v23, 0x41874674

    const v24, 0x41a4923a

    const v25, 0x41874674

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41de06c2

    invoke-static {v0, v12, v7, v13, v1}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v13, v11, v13, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v1, 0x41742196

    invoke-virtual {v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x41a3cb5e

    invoke-virtual {v0, v6, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v13, v2, v1, v11}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v1, 0x419658ae

    invoke-virtual {v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v6, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40fc4b5e    # 7.8842f

    const v21, 0x419658ae

    const v22, 0x40e429c7

    const v23, 0x419c60df

    const v24, 0x40e429c7

    const v25, 0x41a3cb5e

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40e429c7

    invoke-virtual {v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40e429c7

    const v21, 0x41deb8ef

    const v22, 0x40fc4b5e    # 7.8842f

    const v23, 0x41e4bf14

    const v24, 0x410cf694

    const v25, 0x41e4bf14

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41e4bf14

    invoke-virtual {v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41817d22    # 16.1861f

    const v21, 0x41e4bf14

    const v22, 0x41878553

    const v23, 0x41deb8ef

    const v24, 0x41878553

    const v25, 0x41d74e70

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41878553

    const v2, 0x41a3cb5e

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41878553

    const v21, 0x419c60df

    const v22, 0x41817d22    # 16.1861f

    const v23, 0x419658ae

    const v24, 0x417429c7

    const v25, 0x419658ae

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x419658ae

    invoke-virtual {v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v21, 0x0

    const/high16 v22, 0x40800000    # 4.0f

    const/16 v16, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    invoke-static/range {v14 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
