.class final Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/EarphoneBuds3Kt$EarphoneBuds3$2;

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

    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "EarphoneBuds3"

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x42100000    # 36.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xff040000L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v10, 0x0

    invoke-static {v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    const v0, 0x41756cf4

    const v1, 0x41afd254

    const v2, 0x417768dc

    const v5, 0x41aec2f8

    invoke-static {v0, v1, v2, v5}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v0

    const v14, 0x417d66cf

    const v15, 0x41ab5cfb

    const v16, 0x418115b5

    const v17, 0x41a6d879

    const v18, 0x41829931

    const v19, 0x41a1b2ff

    move-object v13, v0

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4183075f

    const v15, 0x41a03d3c

    const v16, 0x418343ca

    const v17, 0x419e9d15

    const v18, 0x4183511a

    const v19, 0x419cbb30

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41838d84

    const v15, 0x4194089a    # 18.5042f

    const v16, 0x417f075f

    const v17, 0x418b7bb3    # 17.4354f

    const v18, 0x417113a9

    const v19, 0x4185e0aa

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x416ed639

    const v2, 0x4184f176

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x415b460b

    const v15, 0x4178ef35

    const v16, 0x4152c91d    # 13.1741f

    const v17, 0x41607a78

    const v18, 0x4158233a

    const v19, 0x41487660

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x415f42c4

    const v15, 0x41287a78

    const v16, 0x417e7803

    const v17, 0x41124674

    const v18, 0x419149ef

    const v19, 0x41124674

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4192b368

    const v15, 0x41124674

    const v16, 0x41942162

    const v17, 0x41126944

    const v18, 0x4195919d

    const v19, 0x4112b0f2

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x419856a1

    const v2, 0x411388ce

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41b02dac

    const v15, 0x411d0ded

    const v16, 0x41be47e3

    const v17, 0x413f1f8a    # 11.9452f

    const v18, 0x41c371de

    const v19, 0x417bafb8    # 15.7304f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41c7aeb2

    const v15, 0x4196ae7d

    const v16, 0x41c2dc5d

    const v17, 0x41afc3fe

    const v18, 0x41b5dd64

    const v19, 0x41c479a7

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41ab5532

    const v15, 0x41d54155

    const v16, 0x419eaeb2

    const v17, 0x41de5e01

    const v18, 0x419043ca

    const v19, 0x41df902e

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4188d532

    const v15, 0x41e02de0    # 28.0224f

    const v16, 0x4181d014

    const v17, 0x41de4b29

    const v18, 0x4179013b

    const v19, 0x41da41f2

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4166bb99

    const v15, 0x41d34ea5

    const v16, 0x416018fc

    const v17, 0x41c7e632    # 24.9874f

    const v18, 0x416741f2    # 14.4536f

    const v19, 0x41bbbd3c

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4169de6a

    const v15, 0x41b74c30

    const v16, 0x416ebee0

    const v17, 0x41b3308a

    const v18, 0x41756cf4

    const v19, 0x41afd254

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41cf4f0e

    const v2, 0x4177a36e

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v14, 0x41c93d08

    const v15, 0x4130779a

    const v16, 0x41b75cc6

    const v17, 0x4106ca58

    const v18, 0x419a292a

    const v19, 0x40f76fd2    # 7.7324f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x419a2c3d

    const v2, 0x40f707c8

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x4196d59b

    const v2, 0x40f521ff    # 7.6604f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x4196d289

    const v2, 0x40f57e91    # 7.6717f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x4179d42c

    const v15, 0x40eb573f

    const v16, 0x414afd22    # 12.6868f

    const v17, 0x4114c77a

    const v18, 0x4140a440    # 12.0401f

    const v19, 0x41433a2a

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41391ff3

    const v15, 0x4164f766    # 14.3104f

    const v16, 0x4145e282

    const v17, 0x4183f732

    const v18, 0x4161de6a

    const v19, 0x418f350b

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41638e8a

    const v2, 0x418fed5d    # 17.9909f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x416acf42    # 14.6756f

    const v15, 0x419336ae

    const v16, 0x416ed220    # 14.9263f

    const v17, 0x4197c2f8

    const v18, 0x416e91d1

    const v19, 0x419c66cf

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x416e8241

    const v15, 0x419d7838

    const v16, 0x416e40b8

    const v17, 0x419e0cb3

    const v18, 0x416e1b09

    const v19, 0x419e4c98

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x416bdfa4

    const v15, 0x41a217f6

    const v16, 0x41686388

    const v17, 0x41a55048

    const v18, 0x416439c1    # 14.2641f

    const v19, 0x41a76738

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41618866

    const v2, 0x41a8d461

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x415968dc

    const v15, 0x41ad57dc    # 21.6679f

    const v16, 0x41539097

    const v17, 0x41b2902e

    const v18, 0x41502a30

    const v19, 0x41b85773

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41463886

    const v15, 0x41c939c1

    const v16, 0x41504a23

    const v17, 0x41d9e4c3    # 27.2367f

    const v18, 0x416a6f00

    const v19, 0x41e3d6d6

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4177f2e5

    const v15, 0x41e8f93e

    const v16, 0x41847d8b

    const v17, 0x41ebb6ae

    const v18, 0x418d84b6

    const v19, 0x41ebb6ae

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x418ec1be

    const v15, 0x41ebb6ae

    const v16, 0x4190013b    # 18.0006f

    const v17, 0x41eba9c7

    const v18, 0x41914227

    const v19, 0x41eb8ebf

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41a3a88d

    const v15, 0x41ea07fd

    const v16, 0x41b367a1    # 22.4256f

    const v17, 0x41df0903

    const v18, 0x41c00ef3

    const v19, 0x41cadfa4

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41cea0f9    # 25.8286f

    const v15, 0x41b3a752

    const v16, 0x41d40be1

    const v17, 0x419793de

    const v18, 0x41cf4f0e

    const v19, 0x4177a36e

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v11

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v13, 0xff000000L

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41a0b7e9

    const v2, 0x415354ca

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x4199a162

    const v21, 0x414c9db2

    const v16, 0x419ee0df

    const v17, 0x414f4467

    const v18, 0x419c5bc0

    const v19, 0x414ce219

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x418eded3

    const v21, 0x41601687

    const v16, 0x4193fb7f

    const v17, 0x414be979

    const v18, 0x418f2681

    const v19, 0x4154cccd    # 13.3f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41989c43

    const v21, 0x4175978d

    const v16, 0x418e97c2

    const v17, 0x416b6320

    const v18, 0x4192f660

    const v19, 0x41750903

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41992268    # 19.1418f

    const v21, 0x41759e84

    const v16, 0x4198c8b4    # 19.098f

    const v17, 0x41759c78

    const v18, 0x4198f5f7    # 19.1201f

    const v19, 0x41759e84

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a0009d    # 20.0003f

    const v21, 0x41704fdf

    const v16, 0x419badac

    const v17, 0x41759e84

    const v18, 0x419e19ce    # 19.7626f

    const v19, 0x4173c155

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a35cc6

    const v21, 0x41621d7e

    const v16, 0x41a20866

    const v17, 0x416ca1cb

    const v18, 0x41a339f5

    const v19, 0x41679653

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a0b7e9

    const v21, 0x415354ca

    const v16, 0x41a37efa    # 20.437f

    const v17, 0x415ca4a9

    const v18, 0x41a28ef3

    const v19, 0x4157645a    # 13.462f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v11

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x4153a090

    const v2, 0x4185ff63

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v18, 0x411e0b0f

    const v19, 0x413d3b64    # 11.827f

    const v14, 0x41331340

    const v15, 0x417f25af    # 15.9467f

    const v16, 0x411e0b0f

    const v17, 0x41603b64

    move-object v13, v0

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x4172b1c4

    const v19, 0x40d126e9    # 6.536f

    const v14, 0x411e0b0f

    const v15, 0x410e8d50

    const v16, 0x414404ea

    const v17, 0x40d126e9    # 6.536f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x4198b39c

    const v19, 0x41045cfb

    const v14, 0x418542c4

    const v15, 0x40d126e9    # 6.536f

    const v16, 0x4190b08a

    const v17, 0x40e56873    # 7.169f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x418fd048

    const v6, 0x41107c85

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x418c5f07    # 17.5464f

    const/high16 v19, 0x410e0000    # 8.875f

    const v14, 0x418ebf48

    const v15, 0x410e22d1    # 8.8835f

    const v16, 0x418d97f6

    const v17, 0x410ff766    # 8.9979f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x4172b1c4

    const v19, 0x4100930c

    const v14, 0x418703e4

    const v15, 0x4105624e

    const v16, 0x41804c30

    const v17, 0x4100930c

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x41360b0f

    const v19, 0x413d3b64    # 11.827f

    const v14, 0x41513fe6

    const v15, 0x4100930c

    const v16, 0x41360b0f

    const v17, 0x411bc8b4

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x415c703b    # 13.7774f

    const v19, 0x4175acda    # 15.3547f

    const v14, 0x41360b0f

    const v15, 0x41564fdf

    const v16, 0x41451d7e

    const v17, 0x416c7660

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v11

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
