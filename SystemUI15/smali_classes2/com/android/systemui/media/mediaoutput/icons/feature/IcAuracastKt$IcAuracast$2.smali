.class final Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/feature/IcAuracastKt$IcAuracast$2;

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
    .locals 20

    const v0, 0x41b51ad4

    const v1, 0x41d327bb

    const v2, 0x41be4e07

    const v3, 0x402107c8    # 2.5161f

    const v4, 0x41e53646

    const v5, 0x410f67a1    # 8.9628f

    const v6, 0x4025374c    # 2.5815f

    new-instance v19, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    double-to-float v10, v7

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v17, 0xe0

    const/16 v18, 0x0

    const-string v8, "IcAuracast"

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x42000000    # 32.0f

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, v19

    move v9, v10

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v7, 0xff000000L

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v10, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v7, 0x0

    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v7

    invoke-direct {v11, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v8, 0x3fa83e42    # 1.3144f

    const v9, 0x41615dcc

    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x3fa41893    # 1.282f

    const v14, 0x41622681

    const v15, 0x3f9d2bd4    # 1.2279f

    const v16, 0x41629653

    const v17, 0x3f95e9e2    # 1.1712f

    const v18, 0x41629653

    move-object v12, v7

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x3f937e91    # 1.1523f

    const v14, 0x41629653

    const v15, 0x3f90e560    # 1.132f

    const v16, 0x41628b44    # 14.159f

    const v17, 0x3f8e7a10    # 1.1131f

    const v18, 0x416269ad

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x3f84f766    # 1.0388f

    const v14, 0x4161fa44    # 14.1236f

    const v15, 0x3f7e2824    # 0.9928f

    const v16, 0x4160c711

    const v17, 0x3f801d7e    # 1.0009f

    const v18, 0x415f837b

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x3fc25e35    # 1.5185f

    const v14, 0x4110ae14

    const v15, 0x408d212d

    const v16, 0x40962196

    const v17, 0x410bd0e5

    const v18, 0x40152d77    # 2.3309f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x410ceb1c

    const v14, 0x4012bb99    # 2.2927f

    const v15, 0x410e4d6a    # 8.8939f

    const v16, 0x4013b15b    # 2.3077f

    const v17, 0x410f2546    # 8.9466f

    const v18, 0x40177176

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x410ffd22    # 8.9993f

    const v14, 0x401b3190    # 2.4249f

    const v15, 0x411018fc

    const v16, 0x4020db8c    # 2.5134f

    const v17, 0x410f67a1    # 8.9628f

    const v18, 0x40250b0f    # 2.5788f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v8, 0x41bbcea5

    invoke-static {v7, v5, v6, v8, v4}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v5, 0x410faa65

    invoke-virtual {v7, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x410ea5e3

    const v14, 0x41e53646

    const v15, 0x410da787

    const v16, 0x41e573b6

    const v17, 0x410d2824    # 8.8223f

    const v18, 0x41e5e632    # 28.7374f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x410c6113

    const v14, 0x41e695ea

    const v15, 0x410ce00d

    const v16, 0x41e769e2

    const v17, 0x410e26e9

    const v18, 0x41e7cb92

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41321b71

    const v14, 0x41f265fe

    const v15, 0x415ab646

    const/high16 v16, 0x41f80000    # 31.0f

    const v17, 0x4181c986

    const/high16 v18, 0x41f80000    # 31.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4196381d

    const/high16 v14, 0x41f80000    # 31.0f

    const v15, 0x41aa7d22    # 21.3111f

    const v16, 0x41f268dc

    const v17, 0x41bc71de

    const v18, 0x41e7d3f8

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41bce0aa

    const v14, 0x41e79100

    const v15, 0x41bd30f2

    const v16, 0x41e71bda

    const v17, 0x41bd2e49

    const v18, 0x41e69893

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41bd2e49

    const v14, 0x41e5cfdf

    const v15, 0x41bc8adb

    const v16, 0x41e53646

    const v17, 0x41bbcea5

    const v18, 0x41e53646

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v13, 0x41bd4189    # 23.657f

    const v14, 0x401be426    # 2.4358f

    const v15, 0x41bc0e56    # 23.507f

    const v16, 0x40257a78

    const v17, 0x41bca681

    const v18, 0x402e31f9    # 2.7218f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x41f5bda5

    const v5, 0x417a9b3d    # 15.6629f

    invoke-virtual {v7, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x41f65879

    const v14, 0x417cce70

    const/high16 v15, 0x41f80000    # 31.0f

    const v16, 0x417bef35

    const/high16 v17, 0x41f80000    # 31.0f

    const v18, 0x41796dc6

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v13, 0x41f80000    # 31.0f

    const v14, 0x4120c3ca    # 10.0478f

    const v15, 0x41e0e320

    const v16, 0x40a64dd3    # 5.197f

    const v17, 0x41be4e07

    const v18, 0x40211eb8    # 2.5175f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v7, v2, v3, v0, v1}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v13, 0x41c70481

    const v14, 0x41d327bb

    const v15, 0x41d722d1    # 26.892f

    const v16, 0x41c9dbf5

    const v17, 0x41e03780

    const v18, 0x41ba4ed9

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41e94c30

    const v14, 0x41aabf14

    const v15, 0x41e98903

    const v16, 0x41980903

    const v17, 0x41e0d810

    const v18, 0x41883e77

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41a72090

    const v3, 0x407b86c2    # 3.9301f

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x419fb8bb

    const v14, 0x40100831    # 2.2505f

    const v15, 0x4192d326

    const v16, 0x3f97e282    # 1.1866f

    const v17, 0x4183b8ef

    const v18, 0x3f81652c    # 1.0109f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41821cac    # 16.264f

    const v14, 0x3f805879    # 1.0027f

    const v15, 0x4180c2c4

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x417ef838

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x417c6ae8

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x4179a6b5    # 15.6032f

    const v16, 0x3f808659    # 1.0041f

    const v17, 0x417689a0

    const v18, 0x3f81652c    # 1.0109f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41767e91    # 15.4059f

    const v3, 0x3f81652c    # 1.0109f

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x41767e91    # 15.4059f

    const v14, 0x3f81652c    # 1.0109f

    const v15, 0x4175ff2e

    const v16, 0x3f81930c    # 1.0123f

    const v17, 0x4175ff2e

    const v18, 0x3f81930c    # 1.0123f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41598034

    const v14, 0x3f975c29    # 1.1825f

    const v15, 0x4140872b    # 12.033f

    const v16, 0x400ab6ae

    const v17, 0x41316fd2

    const v18, 0x406dd7dc    # 3.7163f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4130cf42    # 11.0506f

    const v14, 0x4071d97f    # 3.7789f

    const v15, 0x40d9aace

    const v16, 0x4128f5c3    # 10.56f

    const v17, 0x401f1aa0    # 2.486f

    const v18, 0x418bc674

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x401ec227

    const v3, 0x418bd9e8

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x40073d08    # 2.1131f

    const v14, 0x419091d1

    const v15, 0x40003afb

    const v16, 0x419652f2

    const v17, 0x400b8ef3    # 2.1806f

    const v18, 0x419ba71e

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x402eee63    # 2.7333f

    const v14, 0x41ac538f    # 21.5408f

    const v15, 0x405c13a9    # 3.4387f

    const v16, 0x41b521cb

    const v17, 0x407f5c29    # 3.99f

    const v18, 0x41baf0a4

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x408048e9

    const v14, 0x41bb25af

    const v15, 0x40810553    # 4.0319f

    const v16, 0x41bb3ee0

    const v17, 0x4081e282

    const v18, 0x41bb3ee0

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4082e148    # 4.09f

    const v14, 0x41bb3ee0

    const v15, 0x4083eab3

    const v16, 0x41bb1d49

    const v17, 0x40848659

    const v18, 0x41baeb1c

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x40850b0f    # 4.1576f

    const v14, 0x41bac155

    const v15, 0x40852bd4

    const v16, 0x41ba8c4a

    const v17, 0x4084ded3

    const v18, 0x41ba4ed9

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x406e3d71    # 3.7225f

    const v14, 0x41adcf0e

    const v15, 0x407b0a3d

    const v16, 0x41a14f0e

    const v17, 0x4096fd22    # 4.7184f

    const v18, 0x41971e84

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41102f1b

    const v14, 0x4140374c

    const v15, 0x4154923a

    const v16, 0x40a62c3d

    const v17, 0x415532ca

    const v18, 0x40a41ff3    # 5.1289f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41555f07    # 13.3357f

    const v3, 0x40a38ef3

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x415e4745

    const v14, 0x40862d0e    # 4.193f

    const v15, 0x416dc7e3

    const v16, 0x40694e3c    # 3.6454f

    const v17, 0x417edc5d

    const v18, 0x40694e3c    # 3.6454f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x417f2f83

    const v14, 0x40694e3c    # 3.6454f

    const v15, 0x417f82aa

    const v17, 0x417fd5d0

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4188a9c7

    const v14, 0x406aca58    # 3.6686f

    const v15, 0x41906a16

    const v16, 0x40883958    # 4.257f

    const v17, 0x4194a6e9

    const v18, 0x40a70b0f    # 5.2201f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41ce5e6a

    const v3, 0x41929062

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x41d36560

    const v14, 0x419baf83

    const v15, 0x41d343fe

    const v16, 0x41a681d8

    const v17, 0x41ce0312

    const v18, 0x41af8241

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41c8c227

    const v14, 0x41b87fcc

    const v15, 0x41bf706f

    const v16, 0x41bddf3b    # 23.734f

    const v17, 0x41b5154d

    const v18, 0x41bddf3b    # 23.734f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x414a7efa    # 12.656f

    const v3, 0x41bddf3b    # 23.734f

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x413bc56d

    const v14, 0x41bddf3b    # 23.734f

    const v15, 0x412e8a09    # 10.9087f

    const v16, 0x41b9b852    # 23.215f

    const v17, 0x4127f766    # 10.4979f

    const v18, 0x41b30a09    # 22.3799f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41222681

    const v14, 0x41ad21ff

    const v15, 0x4122fe5d

    const v16, 0x41a5d7a8

    const v17, 0x412a1b71

    const v18, 0x41a00034    # 20.0001f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4177353f

    const v3, 0x4141d9e8

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x41786595

    const v14, 0x413fe3bd

    const v15, 0x417a78d5    # 15.6545f

    const v16, 0x413ebc02

    const v17, 0x417cbe0e    # 15.7964f

    const v18, 0x413ebc02

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x417f0347

    const v14, 0x413ebc02

    const v15, 0x4180a6e9

    const v16, 0x41400aa6

    const v17, 0x418139c1

    const v18, 0x41422268    # 12.1334f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41937660

    const v3, 0x418277cf

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x4193f86c

    const v14, 0x418367d5

    const v15, 0x4193fdf4    # 18.499f

    const v16, 0x41848a09    # 16.5674f

    const v17, 0x4193844d    # 18.4396f

    const v18, 0x41858241

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41930ff9

    const v14, 0x41866c8b    # 16.803f

    const v15, 0x41923afb

    const v16, 0x418708ce

    const v17, 0x41913f14

    const v18, 0x41872d0e    # 16.897f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4191185f    # 18.1369f

    const v14, 0x41873296

    const v15, 0x4190f1aa    # 18.118f

    const v16, 0x41873574

    const v17, 0x4190c817

    const v18, 0x41873574

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x417a2618

    const v3, 0x41873574

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x416e89a0

    const v14, 0x41873574

    const v15, 0x4164ced9    # 14.3005f

    const v16, 0x418bd183

    const v17, 0x41646b51

    const v18, 0x41917c50

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41643958    # 14.264f

    const v14, 0x4194652c

    const v15, 0x41665254

    const v16, 0x419726e9    # 18.894f

    const v17, 0x416a57a8

    const v18, 0x41993eab

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x416e5d64

    const v14, 0x419b5639

    const v15, 0x4173bfb1

    const v16, 0x419c7df4

    const v17, 0x41798588

    const v18, 0x419c7df4

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x419c21ff

    const v3, 0x419c7df4

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x419f7be7

    const v14, 0x419c7df4

    const v15, 0x41a29375    # 20.322f

    const v16, 0x419e5567

    const v17, 0x41a43261

    const v18, 0x41a14c30

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41a6db57

    const v3, 0x41a62b36

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x41a736ae

    const v14, 0x41a6d2bd

    const v15, 0x41a7f007

    const v16, 0x41a7de9e

    const v17, 0x41a898c8

    const v18, 0x41a885f0

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41aaa95f

    const v14, 0x41aaab6b

    const v15, 0x41ad813b

    const v16, 0x41abe979    # 21.489f

    const v17, 0x41b069ad

    const v18, 0x41abe979    # 21.489f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41b208ce

    const v14, 0x41abe979    # 21.489f

    const v15, 0x41b394af

    const v16, 0x41ab8aa6

    const v17, 0x41b5075f

    const v18, 0x41aacd01

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41b79ce0

    const v14, 0x41a97b7f

    const v15, 0x41b97e5d

    const v16, 0x41a73717

    const v17, 0x41ba5917

    const v18, 0x41a46fd2

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x41bb30f2

    const v14, 0x41a1a858

    const v15, 0x41bae632    # 23.3624f

    const v16, 0x419eb717

    const v17, 0x41b9813b

    const v18, 0x419c2a30

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x418e03b0

    const v3, 0x4118adac

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x418afcb9

    const v14, 0x410d95ea

    const v15, 0x41856e2f

    const v16, 0x4106c361    # 8.4227f

    const v17, 0x417e4c98

    const v18, 0x41067525

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x417e0481

    const v14, 0x41067525

    const v15, 0x417db717

    const v16, 0x41067525

    const v17, 0x417d69ad

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x4171381d

    const v15, 0x41661b09

    const v16, 0x410cb6ae

    const v17, 0x415fb4a2

    const v18, 0x41173261

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4105ce70

    const v3, 0x419525af

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v13, 0x40ec8588

    const v14, 0x41a1e00d

    const v15, 0x40eb2e49    # 7.3494f

    const v16, 0x41b14361

    const v17, 0x41040ded

    const v18, 0x41be4ea5

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v13, 0x411284b6

    const v14, 0x41cb5a1d    # 25.419f

    const v15, 0x412cda51    # 10.8033f

    const v16, 0x41d324dd    # 26.393f

    const v17, 0x414a7efa    # 12.656f

    const v18, 0x41d324dd    # 26.393f

    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41b5154d

    const v3, 0x41d324dd    # 26.393f

    invoke-static {v7, v2, v3, v0, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    iget-object v8, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object/from16 v7, v19

    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
