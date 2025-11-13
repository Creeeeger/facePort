.class final Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt$Tws$2;

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

    const p0, 0x412fa6b5    # 10.9782f

    const v0, 0x418c6e2f

    new-instance v13, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v1, 0x4042000000000000L    # 36.0

    double-to-float v4, v1

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v11, 0xe0

    const/4 v12, 0x0

    const-string v2, "Tws"

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

    const v2, 0x419f8fc5    # 19.9452f

    const v3, 0x40fffe5d    # 7.9998f

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x41a7d773

    const v8, 0x40fffe5d    # 7.9998f

    const v9, 0x41b064c3    # 22.0492f

    const v10, 0x41038866

    const v11, 0x41b90275

    const v12, 0x410ac3ca    # 8.6728f

    move-object v6, v1

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41cb339c

    const v8, 0x411a17c2

    const v9, 0x41d8b296

    const v10, 0x41386595

    const v11, 0x41df068e

    const v12, 0x41601ff3

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41e4dd98    # 28.6082f

    const v8, 0x418261e5    # 16.2978f

    const v9, 0x41e4089a    # 28.5042f

    const v10, 0x4196d07d

    const v11, 0x41dcc2f8

    const v12, 0x41a81a37

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41cf816f    # 25.9382f

    const v8, 0x41c79724

    const v9, 0x41adac71    # 21.7092f

    const v10, 0x41dc3d08

    const v11, 0x418e1f21

    const v12, 0x41d81c43

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x418e1f21

    const v3, 0x41d81c43

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x418df41f

    const v3, 0x41d8161e

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x418dd35b

    const v3, 0x41d832ca

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x418d91d1

    const v8, 0x41d865fe

    const v9, 0x418d460b

    const v10, 0x41d8a162

    const v11, 0x418cf41f

    const v12, 0x41d8d495

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x417cc155

    const v8, 0x41e138ef

    const v9, 0x415a4ea5

    const v10, 0x41e24d6a

    const v11, 0x413b5cfb

    const v12, 0x41dbca58

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41054880

    const v8, 0x41d0680a

    const v9, 0x40d79f56

    const v10, 0x41b12474

    const v11, 0x41029446

    const v12, 0x41961a37

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x410d02de    # 8.8132f

    const v8, 0x4189b5dd

    const v9, 0x41203611

    const v10, 0x417fb15b

    const v11, 0x4138acda    # 11.5422f

    const v12, 0x41749ad4

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4138acda    # 11.5422f

    const v3, 0x41749ad4

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4138fec5

    const v3, 0x41747a10

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x41391b71

    const v3, 0x4174240b

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x413ad5d0

    const v8, 0x416f3a93

    const v9, 0x413c902e

    const v10, 0x416ac3ca    # 14.6728f

    const v11, 0x413e5aee

    const v12, 0x41667a10

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x415a1d7e

    const v8, 0x41248e8a

    const v9, 0x4184e1b1

    const v10, 0x40fffe5d    # 7.9998f

    const v11, 0x419f8fc5    # 19.9452f

    const v12, 0x40fffe5d    # 7.9998f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v2, 0x412dfcb9

    const v3, 0x418d32ca

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x4125758e

    const v8, 0x41912474

    const v9, 0x411ee219

    const v10, 0x4195d495

    const v11, 0x411a6b51

    const v12, 0x419b1e4f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41092fec

    const v8, 0x41af9518

    const v9, 0x411c779a

    const v10, 0x41c74120

    const v11, 0x4145652c

    const v12, 0x41cfe0df

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x414f6d5d    # 12.9642f

    const v8, 0x41d1f972

    const v9, 0x415a0d1b

    const v10, 0x41d30ded

    const v11, 0x4164b0f2

    const v12, 0x41d30ded

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4169381d

    const v8, 0x41d30ded

    const v9, 0x416dbf48

    const v10, 0x41d2dcc6

    const v11, 0x41723a2a

    const v12, 0x41d2786c

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41723a2a

    const v3, 0x41d2786c

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4174acda    # 15.2922f

    const v3, 0x41d2432d

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x41727382

    const v3, 0x41d1b5dd

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x413ede01

    const v8, 0x41c50ded

    const v9, 0x41266320

    const v10, 0x41ac34d7

    const v11, 0x412f50b1    # 10.9572f

    const v12, 0x418d8ce7    # 17.6938f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x412f50b1    # 10.9572f

    const v3, 0x418d8ce7    # 17.6938f

    invoke-static {v1, v2, v3, p0, v0}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const p0, 0x41b3fe5d

    const v0, 0x41229eed

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x41a3b8bb

    const v8, 0x4114e8a7

    const v9, 0x41947f63

    const v10, 0x4117119d

    const v11, 0x4186c0ec

    const v12, 0x41290553

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41771340

    const v8, 0x4137ad43

    const v9, 0x41637176

    const v10, 0x4151119d

    const v11, 0x41563611

    const v12, 0x41708241

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4148f694

    const v8, 0x4187f972

    const v9, 0x414487fd

    const v10, 0x4197e0df

    const v11, 0x4149b717

    const v12, 0x41a503b0

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4150154d

    const v8, 0x41b51e4f

    const v9, 0x4163cfab

    const v10, 0x41c0c227

    const v11, 0x41822f83

    const v12, 0x41c79b3d    # 24.9508f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41885879

    const v8, 0x41ca34d7

    const v9, 0x418f2b6b

    const v10, 0x41cb809d

    const v11, 0x41963190

    const v12, 0x41cb809d

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41acc91d

    const v8, 0x41cb809d

    const v9, 0x41c57b4a

    const v10, 0x41be1206

    const v11, 0x41d0d773

    const v12, 0x41a3161e

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41d7bcd3

    const v8, 0x4192b3d0

    const v9, 0x41d80ebf

    const v10, 0x4180eb1c

    const v11, 0x41d1bee0

    const v12, 0x416213a9

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41cbebee    # 25.4902f

    const v8, 0x4144c3ca    # 12.2978f

    const v9, 0x41c112d7

    const v10, 0x412da0f9    # 10.8518f

    const v11, 0x41b3fe5d

    const v12, 0x41229eed

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const p0, 0x41a3fae1

    const v0, 0x41a7be77    # 20.968f

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v7, 0x41a4fae1

    const v8, 0x41a7be77    # 20.968f

    const v9, 0x41a5fae1

    const v10, 0x41a7f1aa    # 20.993f

    const v11, 0x41a6ea7f    # 20.8645f

    const v12, 0x41a85810    # 21.043f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41a925e3

    const v8, 0x41a949ba    # 21.161f

    const v9, 0x41aad1ec

    const v10, 0x41ab4189    # 21.407f

    const v11, 0x41ab6148

    const v12, 0x41ad9ba6    # 21.701f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41abd810

    const v8, 0x41af9581    # 21.948f

    const v9, 0x41ab8419

    const v10, 0x41b19fbe    # 22.203f

    const v11, 0x41aa73b6

    const v12, 0x41b35a1d    # 22.419f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41a96354    # 21.1735f

    const v8, 0x41b51687    # 22.636f

    const v9, 0x41a7b53f

    const v10, 0x41b64bc7    # 22.787f

    const v11, 0x41a5b958

    const v12, 0x41b6c49c    # 22.846f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x41a5b958

    const v0, 0x41b6c49c    # 22.846f

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const p0, 0x4196ab02    # 18.8335f

    const v0, 0x41ba5810    # 23.293f

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x4192926f

    const v8, 0x41bb4fdf    # 23.414f

    const v9, 0x418e77cf

    const v10, 0x41b8c49c    # 23.096f

    const v11, 0x418d8000    # 17.6875f

    const v12, 0x41b4b021    # 22.586f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x418c8831

    const v8, 0x41b0999a    # 22.075f

    const v9, 0x418f1168

    const v10, 0x41ac7efa    # 21.562f

    const v11, 0x419325e3

    const v12, 0x41ab872b    # 21.441f

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const p0, 0x419325e3

    const v0, 0x41ab872b    # 21.441f

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const p0, 0x41a23852

    const v0, 0x41a7f3b6    # 20.994f

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41a2cdd3

    const v8, 0x41a7d0e5    # 20.977f

    const v9, 0x41a36354    # 20.4235f

    const v10, 0x41a7be77    # 20.968f

    const v11, 0x41a3fae1

    const v12, 0x41a7be77    # 20.968f

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
