.class final Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt$IcTv$2;

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

    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "IcTv"

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xff276bfdL

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

    sget v2, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v18, 0x41a98275

    const v19, 0x402aab36

    const v14, 0x417b0347

    const/4 v15, 0x0

    const v16, 0x4197e6cf

    const v17, 0x3ee66666    # 0.45f

    move-object v13, v0

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41aa271e

    const v5, 0x402fef9e    # 2.749f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v18, 0x41c00000    # 24.0f

    const/high16 v19, 0x41400000    # 12.0f

    const v14, 0x41b7cd6a

    const v15, 0x4090b924

    const/high16 v16, 0x41c00000    # 24.0f

    const v17, 0x40ec9e1b    # 7.3943f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41bffe91    # 23.9993f

    const v5, 0x41436f00

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x41a981a3

    const v19, 0x41aaab6b

    const v14, 0x41bfbd08

    const v15, 0x41862162

    const v16, 0x41b753f8    # 22.916f

    const v17, 0x419cc04f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41a89e84

    const v5, 0x41ab8b44    # 21.443f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v18, 0x41400000    # 12.0f

    const/high16 v19, 0x41c00000    # 24.0f

    const v14, 0x41970481

    const v15, 0x41bc844d    # 23.5646f

    const v16, 0x417a0625

    const/high16 v17, 0x41c00000    # 24.0f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x413d0ded

    const v5, 0x41bfff2e    # 23.9996f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x4033f2e5

    const v19, 0x41aaab6b

    const v14, 0x41033b64    # 8.202f

    const v15, 0x41bfe042

    const v16, 0x409f3b64    # 4.976f

    const v17, 0x41bc1a02

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x402ecbfb    # 2.7312f

    const v5, 0x41aa02aa

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/16 v18, 0x0

    const/high16 v19, 0x41400000    # 12.0f

    const v14, 0x3f83295f    # 1.0247f

    const v15, 0x419bd1b7

    const/16 v16, 0x0

    const v17, 0x4184d879

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x3a378034    # 7.0E-4f

    const v5, 0x413c9100

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x4033ec57    # 2.8113f

    const v19, 0x402aab36

    const v14, 0x3d05f06f    # 0.0327f

    const v15, 0x40e77a78

    const v16, 0x3f8ac083    # 1.084f

    const v17, 0x408cff97    # 4.4062f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x403b06f7

    const v5, 0x4023aace    # 2.5573f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v18, 0x41400000    # 12.0f

    const/16 v19, 0x0

    const v14, 0x40a3eab3

    const v15, 0x3edec56d    # 0.4351f

    const v16, 0x4105f838

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xfffafaffL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x419147ae    # 18.16f

    const v1, 0x41706a7f    # 15.026f

    const v2, 0x416774bc    # 14.466f

    invoke-static {v0, v1, v0, v2}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v13

    invoke-static {v13, v0, v2, v0, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v1, 0x41914505

    invoke-virtual {v13, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v5, 0x40bae148    # 5.84f

    invoke-virtual {v13, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x40def41f    # 6.9673f

    invoke-virtual {v13, v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v13, v0, v14, v1, v2}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v1, 0x40bb182b

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v13, v5, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x40970a3d    # 4.72f

    const v11, 0x40def41f    # 6.9673f

    const v6, 0x40a7205c

    const v7, 0x40bb182b

    const v8, 0x40970a3d    # 4.72f

    const v9, 0x40cb2d77    # 6.3493f

    move-object v5, v13

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x40970a3d    # 4.72f

    invoke-virtual {v13, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x40bae148    # 5.84f

    const v11, 0x41796042    # 15.586f

    const v6, 0x40970a3d    # 4.72f

    const v7, 0x41715810    # 15.084f

    const v8, 0x40a7205c

    const v9, 0x41796042    # 15.586f

    move-object v5, v13

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41370a3d    # 11.44f

    const v5, 0x41796042    # 15.586f

    invoke-virtual {v13, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x4180b6e3

    invoke-virtual {v13, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4134e00d

    invoke-virtual {v13, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x40dee3bd    # 6.9653f

    const v7, 0x41887c50

    invoke-virtual {v13, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x40e6b852    # 7.21f

    const v8, 0x419139f5

    invoke-virtual {v13, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4136dbf5

    const v9, 0x4189aca5

    invoke-virtual {v13, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x414926e9    # 12.572f

    invoke-virtual {v13, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x418651ec    # 16.79f

    invoke-virtual {v13, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x41884711

    invoke-virtual {v13, v2, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x414b1ff3

    invoke-virtual {v13, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4148f5c3    # 12.56f

    invoke-virtual {v13, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v13, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v13, v0, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x419a3d71    # 19.28f

    const v11, 0x416774bc    # 14.466f

    const v6, 0x419637e9

    const v7, 0x41796042    # 15.586f

    const v8, 0x419a3d71    # 19.28f

    const v9, 0x41715810    # 15.084f

    move-object v5, v13

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x419a3d71    # 19.28f

    invoke-virtual {v13, v2, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x419147ae    # 18.16f

    const v11, 0x40bb182b

    const v6, 0x419a3d71    # 19.28f

    const v7, 0x40cb2d77    # 6.3493f

    const v8, 0x419637e9

    const v9, 0x40bb182b

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v13, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
