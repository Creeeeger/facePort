.class final Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt$LevelBox$2;

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
    .locals 22

    const v0, 0x411e147b    # 9.88f

    const v1, 0x41e99aa0

    const v2, 0x41d0f5c3    # 26.12f

    const v3, 0x40d99581    # 6.7995f

    const v4, 0x4138f5c3    # 11.56f

    const v5, 0x41dc29fc

    const v6, 0x41c3851f    # 24.44f

    const v7, 0x41900106    # 18.0005f

    const v8, 0x4107ac08

    new-instance v21, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v9, 0x4042000000000000L    # 36.0

    double-to-float v12, v9

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v19, 0xe0

    const/16 v20, 0x0

    const-string v10, "LevelBox"

    const/high16 v13, 0x42100000    # 36.0f

    const/high16 v14, 0x42100000    # 36.0f

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v21

    move v11, v12

    invoke-direct/range {v9 .. v20}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v9, 0xff000000L

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v12, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v9, 0x0

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v9

    invoke-direct {v13, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v9, v6, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x41caed91    # 25.366f

    const v16, 0x40d99581    # 6.7995f

    const v17, 0x41d0f5c3    # 26.12f

    const v18, 0x40f1b646

    const v19, 0x41d0f5c3    # 26.12f

    const v20, 0x4107ac08

    move-object v14, v9

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41d0f5c3    # 26.12f

    const v16, 0x41e3926f

    const v17, 0x41caed91    # 25.366f

    const v18, 0x41e99aa0

    const v19, 0x41c3851f    # 24.44f

    const v20, 0x41e99aa0

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v6, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x412a24dd    # 10.634f

    const v16, 0x41e99aa0

    const v17, 0x411e147b    # 9.88f

    const v18, 0x41e3926f

    const v19, 0x411e147b    # 9.88f

    const v20, 0x41dc29fc

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v0, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x411e147b    # 9.88f

    const v16, 0x40f1b646

    const v17, 0x412a24dd    # 10.634f

    const v18, 0x40d99581    # 6.7995f

    const v19, 0x4138f5c3    # 11.56f

    const v20, 0x40d99581    # 6.7995f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v9, v4, v3, v6, v8}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v9, v4, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v0, 0x41c38106    # 24.438f

    invoke-static {v9, v0, v5, v6, v8}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v0, 0x418335dd

    invoke-virtual {v9, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x41a68831

    const v16, 0x418335dd

    const v17, 0x41b8de35

    const v18, 0x4195a681

    const v19, 0x41b8de35

    const v20, 0x41ac4c64

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41b8de35

    const v16, 0x41c2f454

    const v17, 0x41a68831

    const v18, 0x41d562eb

    const v19, 0x41900106    # 18.0005f

    const v20, 0x41d562eb

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x4172f3b6

    const v16, 0x41d562eb

    const v17, 0x414e47ae    # 12.8925f

    const v18, 0x41c2f454

    const v19, 0x414e47ae    # 12.8925f

    const v20, 0x41ac4c64

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x414e47ae    # 12.8925f

    const v16, 0x4195a681

    const v17, 0x4172f3b6

    const v18, 0x418335dd

    const v19, 0x41900106    # 18.0005f

    const v20, 0x418335dd

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x4190a88d

    invoke-virtual {v9, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x4180e24e

    const v16, 0x4190a88d

    const v17, 0x416928f6

    const v18, 0x419d0ef3

    const v19, 0x416928f6

    const v20, 0x41ac4c64

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x416928f6

    const v16, 0x41bb89d5

    const v17, 0x4180e24e

    const v18, 0x41c7f247

    const v19, 0x41900106    # 18.0005f

    const v20, 0x41c7f247

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x419f1fbe

    const v16, 0x41c7f247

    const v17, 0x41ab6d91

    const v18, 0x41bb89d5

    const v19, 0x41ab6d91

    const v20, 0x41ac4c64

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41ab6d91

    const v16, 0x419d0ef3

    const v17, 0x419f1fbe

    const v18, 0x4190a88d

    const v19, 0x41900106    # 18.0005f

    const v20, 0x4190a88d

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x419ffa44    # 19.9972f

    invoke-virtual {v9, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x4196c189

    const v16, 0x419ffa44    # 19.9972f

    const v17, 0x419c4083

    const v18, 0x41a5816f    # 20.6882f

    const v19, 0x419c4083

    const v20, 0x41ac4c30

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x419c4083

    const v16, 0x41b316f0    # 22.3862f

    const v17, 0x4196c189

    const v18, 0x41b89e1b    # 23.0772f

    const v19, 0x41900106    # 18.0005f

    const v20, 0x41b89e1b    # 23.0772f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41894083

    const v16, 0x41b89e1b    # 23.0772f

    const v17, 0x4183c189

    const v18, 0x41b316f0    # 22.3862f

    const v19, 0x4183c189

    const v20, 0x41ac4c30

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x4183c189

    const v16, 0x41a5816f    # 20.6882f

    const v17, 0x41894083

    const v18, 0x419ffa44    # 19.9972f

    const v19, 0x41900106    # 18.0005f

    const v20, 0x419ffa44    # 19.9972f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x411d4f0e

    invoke-virtual {v9, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x419b75c3

    const v16, 0x411d4f0e

    const v17, 0x41a4c7ae

    const v18, 0x41300b78    # 11.0028f

    const v19, 0x41a4c7ae

    const v20, 0x41470d84

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41a4c7ae

    const v16, 0x415e13a9

    const v17, 0x419b75c3

    const v18, 0x4170cbfb    # 15.0498f

    const v19, 0x41900106    # 18.0005f

    const v20, 0x4170cbfb    # 15.0498f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41848c4a

    const v16, 0x4170cbfb    # 15.0498f

    const v17, 0x417670a4

    const v18, 0x415e13a9

    const v19, 0x417670a4

    const v20, 0x41470d84

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x417670a4

    const v16, 0x41300b78    # 11.0028f

    const v17, 0x41848c4a

    const v18, 0x411d4f0e

    const v19, 0x41900106    # 18.0005f

    const v20, 0x411d4f0e

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v0, 0x41383055

    invoke-virtual {v9, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x418bf4bc

    const v16, 0x41383055

    const v17, 0x4188a8f6

    const v18, 0x413edc5d

    const v19, 0x4188a8f6

    const v20, 0x41470d84

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x4188a8f6

    const v16, 0x414f3eab

    const v17, 0x418bf4bc

    const v18, 0x4155eab3

    const v19, 0x41900106    # 18.0005f

    const v20, 0x4155eab3

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41940d50

    const v16, 0x4155eab3

    const v17, 0x4197570a

    const v18, 0x414f3eab

    const v19, 0x4197570a

    const v20, 0x41470d84

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x4197570a

    const v16, 0x413edc5d

    const v17, 0x41940d50

    const v18, 0x41383055

    const v19, 0x41900106    # 18.0005f

    const v20, 0x41383055

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v10, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v9, v21

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
