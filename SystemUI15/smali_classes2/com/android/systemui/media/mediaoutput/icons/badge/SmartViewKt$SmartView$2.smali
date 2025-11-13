.class final Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/SmartViewKt$SmartView$2;

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
    .locals 25

    const v0, 0x4100a7f0    # 8.041f

    const v1, 0x40f77b4a    # 7.7338f

    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    double-to-float v5, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v3, "IcSmartView"

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41900000    # 18.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    move v4, v5

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v2, 0xff303030L

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    const/4 v11, 0x0

    invoke-direct {v5, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v12, 0xffffffffL

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v15, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v16, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v17, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v3, -0x3f000000    # -8.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)V

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v4, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    const/high16 v3, -0x3e800000    # -16.0f

    invoke-virtual {v2, v4, v4, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v10, 0x40800000    # 4.0f

    move-object v2, v14

    move/from16 v4, v17

    move v8, v15

    move/from16 v9, v16

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v5, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x40c0f909

    const v4, 0x4130a8c1

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v19, 0x40ce068e

    const v20, 0x412fdd2f    # 10.9915f

    const v21, 0x40d9e282

    const v22, 0x413484b6

    const v23, 0x40db758e    # 6.8581f

    const v24, 0x413b0b78    # 11.6903f

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x40dc4d01

    const v20, 0x413e79a7

    const v21, 0x40da2196

    const v22, 0x4141bee0

    const v23, 0x40d5f972

    const v24, 0x41442f1b

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x40d23a2a

    const v20, 0x4146624e    # 12.399f

    const v21, 0x40cce560    # 6.403f

    const v22, 0x4147e979

    const v23, 0x40c6b439

    const v24, 0x41484952

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x40b9a787

    const v20, 0x414914e4

    const v21, 0x40adcb92

    const v22, 0x41446f69

    const v23, 0x40ac3886

    const v24, 0x413de704

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x40aaa162    # 5.3322f

    const v20, 0x41376042    # 11.461f

    const v21, 0x40b3ec57    # 5.6226f

    const v22, 0x41317454

    const v23, 0x40c0f909

    const v24, 0x4130a8c1

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v3, 0x413caf4f    # 11.7928f

    const v4, 0x40afa92a    # 5.4894f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v19, 0x414335a8

    const v20, 0x40ae1206

    const v21, 0x414923a3

    const v22, 0x40b76113

    const v23, 0x4149ed29

    const v24, 0x40c46e98

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x414ab8bb

    const v20, 0x40d17b4a    # 6.5463f

    const v21, 0x41461340

    const v22, 0x40dd573f

    const v23, 0x413f8adb

    const v24, 0x40deea4b

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x413bf694

    const v20, 0x40dfc9ef    # 6.9934f

    const v21, 0x41388f5c    # 11.535f

    const v22, 0x40dd6113

    const v23, 0x41361759

    const v24, 0x40d8de01    # 6.7771f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x41340ff9

    const v20, 0x40d5295f

    const v21, 0x4132a993    # 11.1664f

    const v22, 0x40d009d5

    const v23, 0x41324ea5

    const v24, 0x40ca25af    # 6.3171f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x41318106    # 11.094f

    const v20, 0x40bd1c43    # 5.9097f

    const v21, 0x4136288d    # 11.3849f

    const v22, 0x40b1404f

    const v23, 0x413caf4f    # 11.7928f

    const v24, 0x40afa92a    # 5.4894f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v19, 0x4100a7f0    # 8.041f

    const v20, 0x40eec49c

    const v21, 0x41055f07    # 8.3357f

    const v22, 0x40e953f8    # 7.2915f

    const v23, 0x410925af    # 8.5717f

    const v24, 0x40edaace

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4127db8c

    const v4, 0x410ae69b

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v19, 0x412b9fbe

    const v20, 0x410d161e

    const v21, 0x412b9fbe

    const v22, 0x411286c2

    const v23, 0x4127db8c

    const v24, 0x4114b439    # 9.294f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x410925af    # 8.5717f

    const v4, 0x4128c56d

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v19, 0x41055f07    # 8.3357f

    const v20, 0x412af2e5

    const v21, 0x4100a7f0    # 8.041f

    const v22, 0x41283886

    const v23, 0x4100a7f0    # 8.041f

    const v24, 0x4123dd98    # 10.2416f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4134b0f2

    const v4, 0x40b7295f

    invoke-static {v2, v0, v1, v3, v4}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v19, 0x41243b64

    const v20, 0x40a028f6    # 5.005f

    const v21, 0x410e9f56

    const v22, 0x4098f694

    const v23, 0x40f49375    # 7.643f

    const v24, 0x40a79e84    # 5.2381f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x40c04f76

    const v20, 0x40ba7a10

    const v21, 0x409fd567    # 4.9948f

    const v22, 0x40ebd7dc    # 7.3701f

    const/high16 v23, 0x40a00000    # 5.0f

    const v24, 0x41103127    # 9.012f

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x40d68db9

    const v1, 0x414466cf

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v19, 0x40f77dbf

    const v20, 0x414feab3

    const v21, 0x41115cfb

    const v22, 0x415385f0

    const v23, 0x4125b439

    const v24, 0x414c2fec

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x413fd6a1

    const v20, 0x4142c227

    const v21, 0x41501340

    const v22, 0x412a154d

    const/high16 v23, 0x41500000    # 13.0f

    const v24, 0x410fce07

    invoke-virtual/range {v18 .. v24}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x40800000    # 4.0f

    move-object v2, v14

    move/from16 v4, v17

    move v8, v15

    move/from16 v9, v16

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
