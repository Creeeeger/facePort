.class final Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt$HearingAids$2;

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
    .locals 26

    const v0, 0x414a4af5    # 12.6433f

    const v1, 0x41be4ea5

    const v2, 0x41391b09

    const v3, 0x41ac9e84

    new-instance v16, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    double-to-float v7, v4

    sget-object v4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v14, 0xe0

    const/4 v15, 0x0

    const-string v5, "HearingAids"

    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v9, 0x42100000    # 36.0f

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move v6, v7

    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v13, 0xff000000L

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    invoke-direct {v7, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v4

    invoke-direct {v8, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v4, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v5, 0x41772546    # 15.4466f

    const v6, 0x417b680a

    invoke-virtual {v4, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v24, 0x41731412    # 15.1924f

    const v25, 0x417f793e

    const v20, 0x4176d07d

    const v21, 0x41772546    # 15.4466f

    const v22, 0x41731412    # 15.1924f

    const v23, 0x417ae1b1

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x417b680a

    const v25, 0x4183e704

    const v20, 0x41731412    # 15.1924f

    const v21, 0x41820866

    const v22, 0x4176d07d

    const v23, 0x4183e704

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x4181de9e

    const v25, 0x417f793e

    const v20, 0x417fff97    # 15.9999f

    const v21, 0x4183e704

    const v22, 0x4181de9e

    const v23, 0x41820866

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x417b680a

    const v25, 0x41772546    # 15.4466f

    const v20, 0x4181de9e

    const v21, 0x417ae1b1

    const v22, 0x417fff97    # 15.9999f

    const v23, 0x41772546    # 15.4466f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x418fe704

    invoke-virtual {v4, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v24, 0x415b1412    # 13.6924f

    const v25, 0x417f793e

    const v20, 0x416993de

    const v21, 0x418fe704

    const v22, 0x415b1412    # 13.6924f

    const v23, 0x4188a681

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x417b680a

    const v25, 0x415f2546    # 13.9466f

    const v20, 0x415b1412    # 13.6924f

    const v21, 0x416da64c

    const v22, 0x416993de

    const v23, 0x415f2546    # 13.9466f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x418dde9e

    const v25, 0x417f793e

    const v20, 0x41869de7

    const v21, 0x415f2546    # 13.9466f

    const v22, 0x418dde9e

    const v23, 0x416da64c

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v24, 0x417b680a

    const v25, 0x418fe704

    const v20, 0x418dde9e

    const v21, 0x4188a681

    const v22, 0x41869de7

    const v23, 0x418fe704

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v5, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v4, v16

    move/from16 v6, v18

    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    invoke-direct {v7, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v4

    invoke-direct {v8, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v5, 0x414e9ce0

    const v6, 0x41e959b4

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x4129c505

    const v21, 0x41e959b4

    const v22, 0x410bcb29

    const v23, 0x41da6ae8

    const v24, 0x410bcb29

    const v25, 0x41c81100

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x410bcb29

    const v6, 0x41beecf4

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x410bcb29

    const v21, 0x41bb9cac    # 23.4515f

    const v22, 0x41112b6b    # 9.0731f

    const v23, 0x41b8ecf4

    const v24, 0x4117cb29

    const v25, 0x41b8ecf4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x411e6bba

    const v21, 0x41b8ecf4

    const v22, 0x4123cb29

    const v23, 0x41bb9cac    # 23.4515f

    const v24, 0x4123cb29

    const v25, 0x41beecf4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4123cb29

    const v6, 0x41c81100

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4123cb29

    const v21, 0x41d3cdd3

    const v22, 0x4137013b

    const v23, 0x41dd59b4

    const v24, 0x414e9ce0

    const v25, 0x41dd59b4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x415e8588

    const v21, 0x41dd59b4

    const v22, 0x416d8db9

    const v23, 0x41d9e45a

    const v24, 0x4177da51    # 15.4908f

    const v25, 0x41d3dd98    # 26.4832f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4183d183

    const v6, 0x41caa0c5

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4184bc02

    const v21, 0x41c98e56    # 25.1945f

    const v22, 0x4185b780

    const v23, 0x41c87cee    # 25.061f

    const v24, 0x4186bc9f

    const v25, 0x41c7755a

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x419f86c2

    const v6, 0x41ae74bc    # 21.807f

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41a0a0f9    # 20.0786f

    const v21, 0x41ad5810    # 21.668f

    const v22, 0x41a1c6dc

    const v23, 0x41ac484b

    const v24, 0x41a2edc6

    const v25, 0x41ab3852

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41a3b261

    const v6, 0x41aa81a3

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41afc9ef

    const v21, 0x419f4bc7    # 19.912f

    const v22, 0x41b6b8ef

    const v23, 0x418edb23    # 17.857f

    const v24, 0x41b6b8ef

    const v25, 0x417aced9    # 15.6755f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41b6b8ef

    const v21, 0x413a0419    # 11.626f

    const v22, 0x419ef803

    const v23, 0x41054d01

    const v24, 0x4181c4d0

    const v25, 0x41054d01

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4149240b

    const v21, 0x41054d01

    const v22, 0x4119a0f9    # 9.6018f

    const v23, 0x413a0419    # 11.626f

    const v24, 0x4119a0f9    # 9.6018f

    const v25, 0x417aced9    # 15.6755f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4119a0f9    # 9.6018f

    const v21, 0x4180b852    # 16.09f

    const v22, 0x411441f2    # 9.2661f

    const v23, 0x4183676d

    const v24, 0x410da0f9    # 8.8518f

    const v25, 0x4183676d

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41070069

    const v21, 0x4183676d

    const v22, 0x4101a0f9    # 8.1018f

    const v23, 0x4180b852    # 16.09f

    const v24, 0x4101a0f9    # 8.1018f

    const v25, 0x417aced9    # 15.6755f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4101a0f9    # 8.1018f

    const v21, 0x412cc8b4    # 10.799f

    const v22, 0x413be7d5

    const v23, 0x40da9a02

    const v24, 0x4181c4d0

    const v25, 0x40da9a02

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a595b5

    const v21, 0x40da9a02

    const v22, 0x41c2b8ef

    const v23, 0x412cc8b4    # 10.799f

    const v24, 0x41c2b8ef

    const v25, 0x417aced9    # 15.6755f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41c2b8ef

    const v21, 0x41922fb8

    const v22, 0x41ba63f1

    const v23, 0x41a5d495

    const v24, 0x41abdb57

    const v25, 0x41b34e3c

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41ab1100

    const v6, 0x41b40937

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41aa0c7e

    const v21, 0x41b4f9db    # 22.622f

    const v22, 0x41a906c2

    const v23, 0x41b5eae8

    const v24, 0x41a80c7e

    const v25, 0x41b6e704

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x418f42c4

    const v6, 0x41cfe76d    # 25.988f

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x418e72e5

    const v21, 0x41d0b958

    const v22, 0x418dab9f

    const v23, 0x41d19168    # 26.196f

    const v24, 0x418cf1de

    const v25, 0x41d26ae8

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41850ce7    # 16.6313f

    const v6, 0x41dba858

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x417b3bcd

    const v21, 0x41e45c29    # 28.545f

    const v22, 0x41658db9

    const v23, 0x41e959b4

    const v24, 0x414e9ce0

    const v25, 0x41e959b4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v5, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v4, v16

    move/from16 v6, v18

    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    invoke-direct {v7, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v4

    invoke-direct {v8, v4, v5, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v4, 0x414964c3    # 12.5871f

    const v5, 0x41b1ade0    # 22.2099f

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v4

    const v5, 0x4153ae7d

    const v6, 0x41ab24a9

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41622d77

    const v21, 0x41a1edc6

    const v22, 0x4176096c

    const v23, 0x419b3886

    const v24, 0x4185ce70

    const v25, 0x4198404f

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x418c3eab

    const v21, 0x41967aad

    const v22, 0x4191ba2a

    const v23, 0x4192617c

    const v24, 0x41953fb1

    const v25, 0x418cb717

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4199398c

    const v21, 0x41865048

    const v22, 0x419a4a8c

    const v23, 0x417cfb7f

    const v24, 0x41982bd4

    const v25, 0x416e81d8

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41960659

    const v21, 0x415fd6a1

    const v22, 0x41910034

    const v23, 0x415416f0    # 13.2556f

    const v24, 0x418a075f

    const v25, 0x414d6e2f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x417de48f

    const v21, 0x4142daba    # 12.1784f

    const v22, 0x4162d567

    const v23, 0x41493c36    # 12.5772f

    const v24, 0x4153b780

    const v25, 0x415ca162

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x414a096c

    const v21, 0x41690ded

    const v22, 0x4146617c

    const v23, 0x4178559b

    const v24, 0x41496cf4

    const v25, 0x4183d220    # 16.4776f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x414dc5d6

    const v21, 0x418ec4d0

    const v22, 0x414a8bac

    const v23, 0x419a5845

    const v24, 0x414018fc

    const v25, 0x41a54b92

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v4, v2, v3, v0, v1}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v20, 0x4146a64c

    const v21, 0x41be4ea5

    const v22, 0x4142f838

    const v23, 0x41bdcfab

    const v24, 0x413fab9f

    const v25, 0x41bcc8e9

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41298034

    const v3, 0x41b5e632    # 22.7374f

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4120c5d6

    const v21, 0x41b32fec

    const v22, 0x411d8794

    const v23, 0x41ada64c

    const v24, 0x4121f41f

    const v25, 0x41a90347

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x412a6fd2

    const v3, 0x41a02090

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x413286c2

    const v21, 0x4197a71e

    const v22, 0x41352b6b    # 11.3231f

    const v23, 0x418e6dc6

    const v24, 0x4131e282

    const v25, 0x418628c1

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x412d86c2

    const v21, 0x417662b7

    const v22, 0x4132f4f1

    const v23, 0x415fa162

    const v24, 0x4140c91d    # 12.0491f

    const v25, 0x414de0df

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4156c5d6

    const v21, 0x4131acda    # 11.1047f

    const v22, 0x417e2546    # 15.8841f

    const v23, 0x41286113

    const v24, 0x418f32ca

    const v25, 0x4137c63f    # 11.4859f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4199257a

    const v21, 0x41414539    # 12.0794f

    const v22, 0x41a09d7e

    const v23, 0x4152c361    # 13.1727f

    const v24, 0x41a3afb8

    const v25, 0x4167c361    # 14.4852f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a6c3ca

    const v21, 0x417cc84b

    const v22, 0x41a53780

    const v23, 0x4189c04f

    const v24, 0x419f70d8

    const v25, 0x41930c15

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x419a5289

    const v21, 0x419b4986

    const v22, 0x4192594b    # 18.2936f

    const v23, 0x41a13ee0

    const v24, 0x4188fe28

    const v25, 0x41a3d220    # 20.4776f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x4180a88d

    const v21, 0x41a61d15

    const v22, 0x4171e3bd

    const v23, 0x41ab597f

    const v24, 0x41668bac

    const v25, 0x41b28fc5    # 22.3202f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x415a1de7

    const v3, 0x41ba758e

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41562b6b    # 13.3856f

    const v21, 0x41bcf838

    const v22, 0x415046dc

    const v23, 0x41be4ea5

    const v24, 0x414a4af5    # 12.6433f

    const v25, 0x41be4ea5

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v4, v16

    move/from16 v6, v18

    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v7, v0, v1, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v8, v0, v1, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x41d4e5c9

    const v1, 0x41ab8106    # 21.438f

    const v2, 0x41c9d048

    const v3, 0x41a6e873

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v2

    const v3, 0x41cc1c78

    const v4, 0x41a15dcc

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41d32f83

    const v15, 0x417b6873    # 15.713f

    const v10, 0x41d0ce3c

    const v11, 0x41960be1

    const v12, 0x41d32f83

    const v13, 0x418a0c4a    # 17.256f

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41c7d048

    const v15, 0x41225e35    # 10.148f

    const v10, 0x41d32f83

    const v11, 0x415c15b5

    const v12, 0x41cf40ec

    const v13, 0x413d4af5    # 11.8308f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41c4e9e2

    const v4, 0x4117dd2f    # 9.4915f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x41cf6ae8

    const v4, 0x410c4189    # 8.766f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x41d2514e

    const v4, 0x4116c1be

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41df2f83

    const v15, 0x417b6873    # 15.713f

    const v10, 0x41dabc36

    const v11, 0x41353b64    # 11.327f

    const v12, 0x41df2f83

    const v13, 0x4158096c

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41d731f9

    const v15, 0x41a5f660

    const v10, 0x41df2f83

    const v11, 0x418ba1cb    # 17.454f

    const v12, 0x41dc7f63

    const v13, 0x41992e14

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v4, v16

    move/from16 v6, v18

    invoke-static/range {v4 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
