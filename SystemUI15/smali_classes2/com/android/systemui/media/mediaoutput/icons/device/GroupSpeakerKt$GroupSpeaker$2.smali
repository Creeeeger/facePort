.class final Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt$GroupSpeaker$2;

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
    .locals 32

    const v0, 0x41383055

    const v1, 0x411d4f0e

    const v2, 0x419ffa78    # 19.9973f

    const v3, 0x418335dd

    const v4, 0x40d99653

    const v5, 0x4190a88d

    const v6, 0x40fea162    # 7.9572f

    const v7, 0x4107ac71    # 8.4796f

    const v8, 0x41a6b296

    const v9, 0x41dc29fc

    const v10, 0x41665cfb

    new-instance v23, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v11, 0x4042000000000000L    # 36.0

    double-to-float v14, v11

    sget-object v11, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v21, 0xe0

    const/16 v22, 0x0

    const-string v12, "GroupSpeaker"

    const/high16 v15, 0x42100000    # 36.0f

    const/high16 v16, 0x42100000    # 36.0f

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, v23

    move v13, v14

    invoke-direct/range {v11 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v20, 0xff000000L

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v11

    const/4 v15, 0x0

    invoke-direct {v14, v11, v12, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v11

    invoke-direct {v13, v11, v12, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v11, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v11, v8, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v26, 0x41ae1b09

    const v27, 0x40d99653

    const v28, 0x41b4233a

    const v29, 0x40f1b717

    const v30, 0x41b4233a

    const v31, 0x4107ac71    # 8.4796f

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41b4233a

    invoke-virtual {v11, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v26, 0x41b4233a

    const v27, 0x41e392a3    # 28.4466f

    const v28, 0x41ae1b09

    const v29, 0x41e99ad4

    const v30, 0x41a6b296

    const v31, 0x41e99ad4

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41e99ad4

    invoke-virtual {v11, v6, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v26, 0x40e0ff97    # 7.0312f

    const v27, 0x41e99ad4

    const v28, 0x40c8ded3

    const v29, 0x41e392a3    # 28.4466f

    const v30, 0x40c8ded3

    const v31, 0x41dc29fc

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x40c8ded3

    invoke-virtual {v11, v12, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v26, 0x40c8ded3

    const v27, 0x40f1b717

    const v28, 0x40e0ff97    # 7.0312f

    const v29, 0x40d99653

    const v30, 0x40fea162    # 7.9572f

    const v31, 0x40d99653

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v11, v8, v4, v8, v7}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v11, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v11, v6, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v4, 0x41a6ae7d

    invoke-static {v11, v4, v9, v8, v7}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v11, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v26, 0x4189b5a8

    const v27, 0x418335dd

    const v28, 0x419c0bac

    const v29, 0x4195a681

    const v30, 0x419c0bac

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x419c0bac

    const v27, 0x41c2f454

    const v28, 0x4189b5a8

    const v29, 0x41d562eb

    const v30, 0x41665cfb

    const v31, 0x41d562eb

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x41394ea5

    const v27, 0x41d562eb

    const v28, 0x4114a29c

    const v29, 0x41c2f454

    const v30, 0x4114a29c

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x4114a29c

    const v27, 0x4195a681

    const v28, 0x41394ea5

    const v29, 0x418335dd

    const v30, 0x41665cfb

    const v31, 0x418335dd

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v11, v10, v3, v10, v5}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v26, 0x41481f8a    # 12.5077f

    const v27, 0x4190a88d

    const v28, 0x412f83e4

    const v29, 0x419d0ef3

    const v30, 0x412f83e4

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x412f83e4

    const v27, 0x41bb89d5

    const v28, 0x41481f8a    # 12.5077f

    const v29, 0x41c7f247

    const v30, 0x41665cfb

    const v31, 0x41c7f247

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x41824d36

    const v27, 0x41c7f247

    const v28, 0x418e9b09

    const v29, 0x41bb89d5

    const v30, 0x418e9b09

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x418e9b09

    const v27, 0x419d0ef3

    const v28, 0x41824d36

    const v29, 0x4190a88d

    const v30, 0x41665cfb

    const v31, 0x4190a88d

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v11, v10, v5, v10, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v26, 0x4173de01

    const v27, 0x419ffa78    # 19.9973f

    const v28, 0x417edbf5

    const v29, 0x41a581a3

    const v30, 0x417edbf5

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x417edbf5

    const v27, 0x41b31724

    const v28, 0x4173de01

    const v29, 0x41b89e4f

    const v30, 0x41665cfb

    const v31, 0x41b89e4f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x4158dbf5

    const v27, 0x41b89e4f

    const v28, 0x414dde01

    const v29, 0x41b31724

    const v30, 0x414dde01

    const v31, 0x41ac4c64

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x414dde01

    const v27, 0x41a581a3

    const v28, 0x4158dbf5

    const v29, 0x419ffa78    # 19.9973f

    const v30, 0x41665cfb

    const v31, 0x419ffa78    # 19.9973f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v11, v10, v2, v10, v1}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v26, 0x417d4674

    const v27, 0x411d4f0e

    const v28, 0x4187f525

    const v29, 0x41300b78    # 11.0028f

    const v30, 0x4187f525

    const v31, 0x41470d84

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x4187f525

    const v27, 0x415e13a9

    const v28, 0x417d4674

    const v29, 0x4170cbfb    # 15.0498f

    const v30, 0x41665cfb

    const v31, 0x4170cbfb    # 15.0498f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x414f7382

    const v27, 0x4170cbfb    # 15.0498f

    const v28, 0x413ccb92

    const v29, 0x415e13a9

    const v30, 0x413ccb92

    const v31, 0x41470d84

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x413ccb92

    const v27, 0x41300b78    # 11.0028f

    const v28, 0x414f7382

    const v29, 0x411d4f0e

    const v30, 0x41665cfb

    const v31, 0x411d4f0e

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v11, v10, v1, v10, v0}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v26, 0x415e4467

    const v27, 0x41383055

    const v28, 0x4157acda    # 13.4797f

    const v29, 0x413edc5d

    const v30, 0x4157acda    # 13.4797f

    const v31, 0x41470d84

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x4157acda    # 13.4797f

    const v27, 0x414f3eab

    const v28, 0x415e4467

    const v29, 0x4155eab3

    const v30, 0x41665cfb

    const v31, 0x4155eab3

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x416e758e

    const v27, 0x4155eab3

    const v28, 0x41750903

    const v29, 0x414f3eab

    const v30, 0x41750903

    const v31, 0x41470d84

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v26, 0x41750903

    const v27, 0x413edc5d

    const v28, 0x416e758e

    const v29, 0x41383055

    const v30, 0x41665cfb

    const v31, 0x41383055

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v11, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v12, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move-object v0, v13

    move/from16 v13, v24

    move-object v1, v15

    move-object v15, v0

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v14, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v15, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x419ffa44    # 19.9972f

    const v2, 0x41acd38f    # 21.6033f

    const v3, 0x41b89db2    # 23.077f

    invoke-static {v2, v0, v2, v3}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v0

    const v30, 0x41b9130c

    const v31, 0x41ac4c30

    const v26, 0x41b39412    # 22.4473f

    const v27, 0x41b89db2    # 23.077f

    const v28, 0x41b9130c

    const v29, 0x41b316f0    # 22.3862f

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v30, 0x41acd38f    # 21.6033f

    const v31, 0x419ffa44    # 19.9972f

    const v26, 0x41b9130c

    const v27, 0x41a5816f    # 20.6882f

    const v28, 0x41b39412    # 22.4473f

    const v29, 0x419ffa44    # 19.9972f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move/from16 v13, v24

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    invoke-direct {v14, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v3

    invoke-direct {v15, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x41b42993    # 22.5203f

    const v4, 0x41470ded

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v30, 0x41acd38f    # 21.6033f

    const v31, 0x4155eb1c

    const v26, 0x41b42993    # 22.5203f

    const v27, 0x414f3f14    # 12.9529f

    const v28, 0x41b0dfd9

    const v29, 0x4155eb1c

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4170cc64    # 15.0499f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v30, 0x41c19a37

    const v31, 0x41470ded

    const v26, 0x41b8484b

    const v27, 0x4170cc64    # 15.0499f

    const v28, 0x41c19a37

    const v29, 0x415e1412    # 13.8799f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v30, 0x41acd38f    # 21.6033f

    const v31, 0x411d4e3c

    const v26, 0x41c19a37

    const v27, 0x41300b78    # 11.0028f

    const v28, 0x41b8484b

    const v29, 0x411d4e3c

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x413830be    # 11.5119f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v30, 0x41b42993    # 22.5203f

    const v31, 0x41470ded

    const v26, 0x41b0dfd9

    const v27, 0x413830be    # 11.5119f

    const v28, 0x41b42993    # 22.5203f

    const v29, 0x413edcc6

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move/from16 v13, v24

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    invoke-direct {v14, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v3

    invoke-direct {v15, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x41e05773

    const v3, 0x40d99581    # 6.7995f

    const v4, 0x41a4d35b

    invoke-static {v0, v3, v4, v3}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v3

    const v6, 0x4107ac08

    invoke-virtual {v3, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v3, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41e0535b

    invoke-virtual {v3, v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v3, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41e99aa0

    invoke-virtual {v3, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v3, v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v30, 0x41edc817

    const v31, 0x41dc29fc

    const v26, 0x41e7bfe6

    const v27, 0x41e99aa0

    const v28, 0x41edc817

    const v29, 0x41e3926f

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x41edc817

    invoke-virtual {v3, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v30, 0x41e05773

    const v31, 0x40d99581    # 6.7995f

    const v26, 0x41edc817

    const v27, 0x40f1b646

    const v28, 0x41e7bfe6

    const v29, 0x40d99581    # 6.7995f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v12, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move/from16 v13, v24

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    invoke-direct {v14, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v3

    invoke-direct {v15, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41c8401a

    const v3, 0x41ac4c64

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v11, 0x41acd38f    # 21.6033f

    const v12, 0x41c7f247

    const v7, 0x41c8401a

    const v8, 0x41bb89d5

    const v9, 0x41bbf213

    const v10, 0x41c7f247

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41d562eb

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v11, 0x41d5b0be

    const v12, 0x41ac4c64

    const v7, 0x41c35aba    # 24.4193f

    const v8, 0x41d562eb

    const v9, 0x41d5b0be

    const v10, 0x41c2f454

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v11, 0x41acd38f    # 21.6033f

    const v12, 0x418335dd

    const v7, 0x41d5b0be

    const v8, 0x4195a681

    const v9, 0x41c35aba    # 24.4193f

    const v10, 0x418335dd

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v11, 0x41c8401a

    const v12, 0x41ac4c64

    const v7, 0x41bbf213

    const v8, 0x4190a88d

    const v9, 0x41c8401a

    const v10, 0x419d0ef3

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v12, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v18, 0x0

    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v11, v23

    move/from16 v13, v24

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
