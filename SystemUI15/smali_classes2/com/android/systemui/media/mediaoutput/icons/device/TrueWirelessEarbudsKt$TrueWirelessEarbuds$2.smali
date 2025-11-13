.class final Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TrueWirelessEarbudsKt$TrueWirelessEarbuds$2;

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
    .locals 14

    const/high16 p0, 0x41900000    # 18.0f

    const v0, 0x4190009d    # 18.0003f

    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v1, 0x4042000000000000L    # 36.0

    double-to-float v4, v1

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v11, 0xe0

    const/4 v12, 0x0

    const-string v2, "TrueWirelessEarbuds"

    const/high16 v5, 0x42100000    # 36.0f

    const/high16 v6, 0x42100000    # 36.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move v3, v4

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v1, 0xff000000L

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v4, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v1

    invoke-direct {v5, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v2, 0x40e28b44

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x41b853f8    # 23.041f

    const v8, 0x40e28b44

    const v9, 0x41e126e9    # 28.144f

    const v10, 0x4124a1cb

    const v11, 0x41e126e9    # 28.144f

    const v12, 0x4183676d

    move-object v6, v1

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41e126e9    # 28.144f

    const v8, 0x4195051f

    const v9, 0x41d80c4a    # 27.006f

    const v10, 0x41af9eb8

    const v11, 0x41cb7efa    # 25.437f

    const v12, 0x41c2ab02    # 24.3335f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41bf851f    # 23.94f

    const v8, 0x41d4cfdf

    const v9, 0x41af1893    # 21.887f

    const v10, 0x41e75d2f

    const v11, 0x4190020c    # 18.001f

    const v12, 0x41e75d2f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4190020c    # 18.001f

    const v3, 0x41e75d2f

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x4161ced9    # 14.113f

    const v8, 0x41e75d2f

    const v9, 0x4140f5c3    # 12.06f

    const v10, 0x41d4cfdf

    const v11, 0x41290625    # 10.564f

    const v12, 0x41c2ab02    # 24.3335f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x410fe76d    # 8.994f

    const v8, 0x41af9eb8

    const v9, 0x40fb645a    # 7.856f

    const v10, 0x41950312

    const v11, 0x40fb645a    # 7.856f

    const v12, 0x4183676d

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x40fb645a    # 7.856f

    const v8, 0x4124a1cb

    const v9, 0x414f5810    # 12.959f

    const v10, 0x40e28b44

    const/high16 v11, 0x41900000    # 18.0f

    const v12, 0x40e28b44

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v2, 0x410c2b02    # 8.7605f

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x415ec49c    # 13.923f

    const v8, 0x410c2b02    # 8.7605f

    const v9, 0x41188f5c    # 9.535f

    const v10, 0x41328937

    const v11, 0x41188f5c    # 9.535f

    const v12, 0x4183676d

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41188f5c    # 9.535f

    const v8, 0x41926d91

    const v9, 0x412947ae    # 10.58f

    const v10, 0x41aa71aa    # 21.3055f

    const v11, 0x413f74bc    # 11.966f

    const v12, 0x41bb449c

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x415476c9    # 13.279f

    const v8, 0x41cb3021

    const v9, 0x416eb439    # 14.919f

    const v10, 0x41d9ea7f    # 27.2395f

    const v11, 0x418ffdf4    # 17.999f

    const v12, 0x41d9ea7f    # 27.2395f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x418ffdf4    # 17.999f

    const v2, 0x41d9ea7f    # 27.2395f

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41a8a7f0    # 21.082f

    const v8, 0x41d9ea7f    # 27.2395f

    const v9, 0x41b5c49c    # 22.721f

    const v10, 0x41cb3021

    const v11, 0x41c045a2    # 24.034f

    const v12, 0x41bb449c

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41cb5a1d    # 25.419f

    const v8, 0x41aa71aa    # 21.3055f

    const v9, 0x41d3b646    # 26.464f

    const v10, 0x41926f9e

    const v11, 0x41d3b646    # 26.464f

    const v12, 0x4183676d

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41d3b646    # 26.464f

    const v8, 0x41328937

    const v9, 0x41b09db2    # 22.077f

    const v10, 0x410c2b02    # 8.7605f

    const/high16 v11, 0x41900000    # 18.0f

    const v12, 0x410c2b02    # 8.7605f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const p0, 0x412760aa

    invoke-virtual {v1, v0, p0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x41a95cc6

    const v8, 0x412760aa

    const v9, 0x41c51b3d    # 24.6383f

    const v10, 0x4141a234

    const v11, 0x41c7a05c

    const v12, 0x416d89a0

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41c9d59b

    const v8, 0x418a0034

    const v9, 0x41c24227

    const v10, 0x419f7909

    const v11, 0x41b358ae

    const v12, 0x41b0315b

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41a860df

    const v8, 0x41bc813b

    const v9, 0x419b2993    # 19.3953f

    const v10, 0x41c3dd64

    const v11, 0x4190009d    # 18.0003f

    const v12, 0x41c3dd64

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x41c3dd64

    invoke-virtual {v1, v0, p0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x4184d59b

    const v8, 0x41c3dd64

    const v9, 0x416f40b8

    const v10, 0x41bc813b

    const v11, 0x41594d01

    const v12, 0x41b0315b

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x413b7a10

    const v8, 0x419f76fd

    const v9, 0x412c5326    # 10.7703f

    const v10, 0x418a0034

    const v11, 0x4130bda5    # 11.0463f

    const v12, 0x416d89a0

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4135c7e3

    const v8, 0x4141a234

    const v9, 0x416d44d0    # 14.8293f

    const v10, 0x412760aa

    const v11, 0x4190009d    # 18.0003f

    const v12, 0x412760aa

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const p0, 0x413dcb29

    invoke-virtual {v1, v0, p0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x4177d014

    const v8, 0x413dcb29

    const v9, 0x414a73eb

    const v10, 0x4151fc50

    const v11, 0x4146ff2e

    const v12, 0x417014e4

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41434d01

    const v8, 0x4188292a

    const v9, 0x41506388

    const v10, 0x419a5c5d

    const v11, 0x416a0553

    const v12, 0x41a8bc9f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x417b8659

    const v8, 0x41b28f91

    const v9, 0x41881931

    const v10, 0x41b8a824    # 23.0821f

    const v11, 0x4190009d    # 18.0003f

    const v12, 0x41b8aa30

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4197e5fe

    const v8, 0x41b8a824    # 23.0821f

    const v9, 0x41a23c02

    const v10, 0x41b28f91

    const v11, 0x41aafc85

    const v12, 0x41a8bc9f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41b7cd6a

    const v8, 0x419a5c5d

    const v9, 0x41be5aba    # 23.7943f

    const v10, 0x4188292a

    const v11, 0x41bc7f97

    const v12, 0x417014e4

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41bac539

    const v8, 0x4151fc50

    const v9, 0x41a41931

    const v10, 0x413dcb29

    const v11, 0x4190009d    # 18.0003f

    const v12, 0x413dcb29

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v2, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v13

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method
