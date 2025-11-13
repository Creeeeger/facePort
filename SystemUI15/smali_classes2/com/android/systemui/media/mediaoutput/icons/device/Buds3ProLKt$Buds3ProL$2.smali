.class final Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/Buds3ProLKt$Buds3ProL$2;

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
    .locals 15

    const p0, 0x41ab648f

    const v0, 0x4130e2eb

    const v1, 0x41968c15

    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    double-to-float v5, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v3, "Buds3ProL"

    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v7, 0x42100000    # 36.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    move v4, v5

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v2, 0xff000000L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v5, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x4180703b    # 16.0548f

    const v4, 0x4104be0e    # 8.2964f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x418d9cac    # 17.7015f

    const v9, 0x40eb0ff9

    const v10, 0x419b999a    # 19.45f

    const v11, 0x40e0710d

    const v12, 0x41a7a618

    const v13, 0x40ef3c36    # 7.4761f

    move-object v7, v2

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41b15e01

    const v9, 0x40fb2a30

    const v10, 0x41ba3eab

    const v11, 0x410d37b5

    const v12, 0x41bfdfa4

    const v13, 0x4120b780

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41c602aa

    const v9, 0x4135f972

    const v10, 0x41c8123a

    const v11, 0x414e511a

    const v12, 0x41c4e17c

    const v13, 0x4163bd3c

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41c19f8a    # 24.2029f

    const v9, 0x41799d49

    const v10, 0x41b8e80a

    const v11, 0x4186b780

    const v12, 0x41ad4711

    const v13, 0x418db1f9

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41ad45a2    # 21.659f

    const v4, 0x41d765fe

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41ad45a2    # 21.659f

    const v9, 0x41da3780

    const v10, 0x41abc396

    const v11, 0x41dcd1b7

    const v12, 0x41a951b7

    const v13, 0x41de3886

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x419eaf83

    const v4, 0x41e5b74c

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x419c2de0    # 19.5224f

    const v9, 0x41e7271e

    const v10, 0x41991653

    const v11, 0x41e7199a

    const v12, 0x4196a196

    const v13, 0x41e593de

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x418cf27c

    const v4, 0x41de1518

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x418aa234

    const v9, 0x41dca618

    const v10, 0x418939c1

    const v11, 0x41da1eb8    # 27.265f

    const v12, 0x418939c1

    const v13, 0x41d765fe

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x418939f5

    const v4, 0x4197f4bc

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41873b30

    const v9, 0x41977766    # 18.9333f

    const v10, 0x41853958    # 16.653f

    const v11, 0x4196bf7d

    const v12, 0x4183292a

    const v13, 0x4195cbc7

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41826219

    const v9, 0x41957007

    const v10, 0x41819a37

    const v11, 0x41950a3d    # 18.63f

    const v12, 0x4180d220    # 16.1026f

    const v13, 0x41949b09

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x417fa512

    const v9, 0x41958069

    const v10, 0x417d793e

    const v11, 0x419656a1

    const v12, 0x417b240b

    const v13, 0x41971893    # 18.887f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x416c2a30

    const v9, 0x419bf58e

    const v10, 0x415731f9

    const v11, 0x419d62b7

    const v12, 0x41473dd9

    const v13, 0x419a2b9f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x413c7176

    const v9, 0x4197fe91    # 18.9993f

    const v10, 0x413569ad

    const v11, 0x41932f1b    # 18.398f

    const v12, 0x412e7454

    const v13, 0x418dd38f    # 17.7283f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x412851ec    # 10.52f

    const v9, 0x41891a37

    const v10, 0x41225aee

    const v11, 0x4182a512

    const v12, 0x4121fb7f

    const v13, 0x417af766    # 15.6854f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41214f0e

    const v9, 0x41684880

    const v10, 0x412c8866

    const v11, 0x41588f5c    # 13.535f

    const v12, 0x413cb574    # 11.7943f

    const v13, 0x414e0e56    # 12.8785f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x4141c361    # 12.1102f

    const v9, 0x414ac63f    # 12.6734f

    const v10, 0x414730be    # 12.4494f

    const v11, 0x41487cee

    const v12, 0x414cc6a8    # 12.7985f

    const v13, 0x414725af    # 12.4467f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x414cd07d

    const v4, 0x4146f41f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41508f5c    # 13.035f

    const v9, 0x41301687

    const v10, 0x4165e1b1

    const v11, 0x411453f8

    const v12, 0x4180703b    # 16.0548f

    const v13, 0x4104be0e    # 8.2964f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v3, 0x4186703b    # 16.8048f

    const v4, 0x4119872b    # 9.5955f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x4177c6a8    # 15.486f

    const v9, 0x4125b5dd

    const v10, 0x416700d2

    const v11, 0x413b8c7e

    const v12, 0x41647fcc

    const v13, 0x414ad567

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x4162837b

    const v9, 0x4156f27c

    const v10, 0x4165ae14    # 14.355f

    const v11, 0x416568dc

    const v12, 0x416e73eb

    const v13, 0x41749a6b

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x417720c5

    const v9, 0x4181d07d

    const v10, 0x418250b1

    const v11, 0x418830be

    const v12, 0x41883055

    const v13, 0x418ae666

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4189381d

    const v4, 0x418b54fe    # 17.4165f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x418939c1

    const v4, 0x416e06f7

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x414abac7    # 12.6706f

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x41aa4d36

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41968c15

    const v9, 0x41ad8069

    const v10, 0x4198020c    # 19.001f

    const v11, 0x41af1a02

    const v12, 0x419aee2f

    const v13, 0x41af1a02

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x419e3afb

    const v9, 0x41af295f

    const v10, 0x419fea16

    const v11, 0x41ad8fc5    # 21.6952f

    const v12, 0x419ffc1c    # 19.9981f

    const v13, 0x41aa4d36

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x419ffc1c    # 19.9981f

    const v3, 0x4162d220    # 14.1763f

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41ad0f28

    const v3, 0x417e8937

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41b3339c

    const v9, 0x4174acda    # 15.2922f

    const v10, 0x41b79893

    const v11, 0x4168de6a

    const v12, 0x41b96148

    const v13, 0x415ce354    # 13.8055f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41bb8f28

    const v9, 0x414e4120

    const v10, 0x41ba1062    # 23.258f

    const v11, 0x413c978d    # 11.787f

    const v12, 0x41b57b4a

    const v13, 0x412cb780

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41b14745

    const v9, 0x411e2824    # 9.8848f

    const v10, 0x41aab886

    const v11, 0x41129ba6    # 9.163f

    const v12, 0x41a420c5    # 20.516f

    const v13, 0x410e8fc5    # 8.9101f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x419b9f21

    const v9, 0x410956d6

    const v10, 0x4190f2e5

    const v11, 0x410d645a    # 8.837f

    const v12, 0x4186703b    # 16.8048f

    const v13, 0x4119872b    # 9.5955f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v1, 0x4149c7e3

    const v3, 0x41622f1b

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x413f00d2

    const v9, 0x41692eb2

    const v10, 0x4139a9fc    # 11.604f

    const v11, 0x4171b646    # 15.107f

    const v12, 0x4139f766    # 11.6229f

    const v13, 0x417a1a37

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x413a1de7

    const v9, 0x417e47ae    # 15.8925f

    const v10, 0x413d9db2    # 11.851f

    const v11, 0x41837766    # 16.4333f

    const v12, 0x41429518

    const v13, 0x41874a58

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x414939c1    # 12.5766f

    const v9, 0x418c67a1    # 17.5506f

    const v10, 0x414cdc5d

    const v11, 0x418e5d64

    const v12, 0x4150367a    # 13.0133f

    const v13, 0x418f0a72

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x4158594b    # 13.5218f

    const v9, 0x4190ae14    # 18.085f

    const v10, 0x4164f5c3    # 14.31f

    const v11, 0x418fec22

    const v12, 0x416dcd36

    const v13, 0x418d1e4f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x416623a3

    const v9, 0x41897176

    const v10, 0x415f2824    # 13.9473f

    const v11, 0x41850e22

    const v12, 0x4159aace

    const v13, 0x41804d36

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x415368dc

    const v9, 0x4175c2f8

    const v10, 0x414f4467

    const v11, 0x416adb23

    const v12, 0x414d4952

    const v13, 0x41604396

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x414c1a37

    const v9, 0x4160cbfb    # 14.0498f

    const v10, 0x414aebee    # 12.6826f

    const v11, 0x41617176

    const v12, 0x4149c7e3

    const v13, 0x41622f1b

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x41ad4433

    const v9, 0x412e8bac

    const v10, 0x41afbc02

    const v11, 0x412faf4f    # 10.9803f

    const v12, 0x41b0e7a1    # 22.1131f

    const v13, 0x41336e2f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41b21375

    const v9, 0x41372d77

    const v10, 0x41b181a3

    const v11, 0x413c1d15

    const v12, 0x41afa1ff

    const v13, 0x413e7454

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41a73eab

    const v3, 0x4148f0d8

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41a55f07    # 20.6714f

    const v9, 0x414b4817    # 12.7051f

    const v10, 0x41a2e738

    const v11, 0x414a24dd    # 12.634f

    const v12, 0x41a1bb99

    const v13, 0x41466595

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41a08fc5    # 20.0702f

    const v9, 0x4142a64c

    const v10, 0x41a12196

    const v11, 0x413db6ae

    const v12, 0x41a3013b

    const v13, 0x413b5f70

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v2, v14

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method
