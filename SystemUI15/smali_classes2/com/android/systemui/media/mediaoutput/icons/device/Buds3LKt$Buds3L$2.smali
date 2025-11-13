.class final Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/Buds3LKt$Buds3L$2;

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

    const p0, 0x41d847e3

    const v0, 0x41a6c04f

    const v1, 0x4193ba5e    # 18.466f

    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    double-to-float v5, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v3, "Buds3L"

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

    const v3, 0x41c0df3b    # 24.109f

    const v4, 0x41297c1c

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x41cb7c50

    const v9, 0x414e068e

    const v10, 0x41c52b6b

    const v11, 0x417afcb9

    const v12, 0x41b2c189

    const v13, 0x418c1eb8    # 17.515f

    move-object v7, v2

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41b2c01a

    const v4, 0x41dc3333    # 27.525f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41b2c01a

    const v9, 0x41e0ac3d

    const v10, 0x41af1db2

    const v11, 0x41e4491d

    const v12, 0x41aaa6e9

    const v13, 0x41e4491d

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4194bb64

    const v4, 0x41e4491d

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41904467

    const v9, 0x41e4491d

    const v10, 0x418ca1ff

    const v11, 0x41e0ac3d

    const v12, 0x418ca1ff

    const v13, 0x41dc3333    # 27.525f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x418ca0f9    # 17.5786f

    const v4, 0x419c52bd

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x418c381d

    const v9, 0x419c5a86

    const v10, 0x418bcfdf

    const v11, 0x419c60aa

    const v12, 0x418b683e

    const v13, 0x419c652c

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41814817

    const v9, 0x41a92440

    const v10, 0x414b068e

    const v11, 0x41a95845

    const v12, 0x412f7efa

    const v13, 0x41938b78    # 18.4431f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41165461

    const v9, 0x417f3b64    # 15.952f

    const v10, 0x4129985f    # 10.5997f

    const v11, 0x4156ed29

    const v12, 0x414c844d    # 12.7823f

    const v13, 0x4148d35b

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x414cca58

    const v4, 0x4148bcd3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x415553f8    # 13.333f

    const v9, 0x41331f8a    # 11.1952f

    const v10, 0x4167d567

    const v11, 0x411fea4b

    const v12, 0x4180a440

    const v13, 0x41114f76

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x419a1b3d    # 19.2633f

    const v9, 0x40e82b6b    # 7.2553f

    const v10, 0x41b38bac

    const v11, 0x40f73405    # 7.7251f

    const v12, 0x41c0df3b    # 24.109f

    const v13, 0x41297c1c

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x41a1c880

    const v9, 0x4196597f

    const v10, 0x419d14e4

    const v11, 0x4198645a    # 19.049f

    const v12, 0x4198a12d

    const v13, 0x4199d639

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4198a1ff

    invoke-virtual {v2, v3, p0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v3, 0x41a6beab

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const p0, 0x4147a29c

    const v0, 0x4167ee63

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const p0, 0x4147786c

    const v0, 0x41681893    # 14.506f

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x413b381d

    const v9, 0x4173f4f1

    const v10, 0x41377660

    const v11, 0x41836042    # 16.422f

    const v12, 0x4143ca58

    const v13, 0x418d236e

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x4150f909

    const v9, 0x419793de

    const v10, 0x4166d773    # 14.4276f

    const v11, 0x419a6560

    const v12, 0x4175f06f

    const v13, 0x4198da1d

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x4168eecc    # 14.5583f

    const v9, 0x41956738

    const v10, 0x415d8d50    # 13.847f

    const v11, 0x418f6ecc    # 17.9291f

    const v12, 0x41538659

    const v13, 0x4186cd6a

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x414c2196

    const v9, 0x41807007

    const v10, 0x41485048    # 12.5196f

    const v11, 0x41743611

    const v12, 0x4147a29c

    const v13, 0x4167ee63

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const p0, 0x41869d49

    const v0, 0x4126205c

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x4164dd98    # 14.3041f

    const v9, 0x413d4a23

    const v10, 0x415444d0    # 13.2668f

    const v11, 0x415f19ce    # 13.9438f

    const v12, 0x41684745

    const v13, 0x4180c674

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x417e35a8

    const v9, 0x4193a752

    const v10, 0x418c484b

    const v11, 0x41952ca5

    const v12, 0x41a4e354    # 20.611f

    const v13, 0x41870e22

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41b7db8c

    const v9, 0x417856d6

    const v10, 0x41bee388

    const v11, 0x41526f69

    const v12, 0x41b67efa    # 22.812f

    const v13, 0x41358a09    # 11.3462f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41acd532

    const v9, 0x411444d0    # 9.2668f

    const v10, 0x419ad014

    const v11, 0x410ef213

    const v12, 0x41869d49

    const v13, 0x4126205c

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const p0, 0x41ab28c1

    const v0, 0x413851ec    # 11.52f

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x41acf525

    const v9, 0x413de2eb

    const v10, 0x41ac288d

    const v11, 0x414550b1    # 12.3322f

    const v12, 0x41a9600d

    const v13, 0x4148e910    # 12.5569f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x41a1a8c1

    const v0, 0x4152e148    # 13.18f

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x419ee00d

    const v9, 0x415679a7

    const v10, 0x419b295f

    const v11, 0x4154e0df

    const v12, 0x41995cfb

    const v13, 0x414f4fdf    # 12.957f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x419790cb

    const v9, 0x4149be77    # 12.609f

    const v10, 0x41985d2f

    const v11, 0x4142511a

    const v12, 0x419b25af

    const v13, 0x413eb852    # 11.92f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x41a2dd2f    # 20.358f

    const v0, 0x4134c01a

    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v8, 0x41a5a5af

    const v9, 0x413127bb

    const v10, 0x41a95c92

    const v11, 0x4132c083    # 11.172f

    const v12, 0x41ab28c1

    const v13, 0x413851ec    # 11.52f

    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

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
