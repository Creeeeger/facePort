.class final Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt$Tablet$2;

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
    .locals 27

    const v4, 0x41ca3d71    # 25.28f

    const v5, 0x40eb851f    # 7.36f

    const v6, 0x41e51eb8    # 28.64f

    const v7, 0x412b851f    # 10.72f

    const v8, 0x411e147b    # 9.88f

    const v9, 0x41d7ae14    # 26.96f

    const v10, 0x41c3851f    # 24.44f

    const v11, 0x4138f5c3    # 11.56f

    const v12, 0x4110a3d7    # 9.04f

    const v13, 0x41d0f5c3    # 26.12f

    new-instance v26, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    double-to-float v15, v14

    sget-object v14, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v24, 0xe0

    const/16 v25, 0x0

    const-string v16, "Tablet"

    const/high16 v18, 0x42100000    # 36.0f

    const/high16 v19, 0x42100000    # 36.0f

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v14, v26

    move/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v14 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v16, 0xff000000L

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    const/4 v14, 0x0

    invoke-direct {v15, v0, v1, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v1, v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x41dc126f    # 27.509f

    const v21, 0x4110a3d7    # 9.04f

    const v22, 0x41e51eb8    # 28.64f

    const v23, 0x4122b852    # 10.17f

    const v24, 0x41e51eb8    # 28.64f

    const v25, 0x4138f5c3    # 11.56f

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41e51eb8    # 28.64f

    const v21, 0x41cea3d7    # 25.83f

    const v22, 0x41dc126f    # 27.509f

    const v23, 0x41d7ae14    # 26.96f

    const v24, 0x41d0f5c3    # 26.12f

    const v25, 0x41d7ae14    # 26.96f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v13, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4107d70a    # 8.49f

    const v21, 0x41d7ae14    # 26.96f

    const v22, 0x40eb851f    # 7.36f

    const v23, 0x41cea3d7    # 25.83f

    const v24, 0x40eb851f    # 7.36f

    const v25, 0x41c3851f    # 24.44f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v5, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40eb851f    # 7.36f

    const v21, 0x4122b852    # 10.17f

    const v22, 0x4107d70a    # 8.49f

    const v23, 0x4110a3d7    # 9.04f

    const v24, 0x411e147b    # 9.88f

    const v25, 0x4110a3d7    # 9.04f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v1, v8, v12, v13, v7}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v1, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4116ac08    # 9.417f

    const v21, 0x412b851f    # 10.72f

    const v22, 0x4110a3d7    # 9.04f

    const v23, 0x41318d50    # 11.097f

    const v24, 0x4110a3d7    # 9.04f

    const v25, 0x4138f5c3    # 11.56f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v12, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4110a3d7    # 9.04f

    const v21, 0x41c73958    # 24.903f

    const v22, 0x4116ac08    # 9.417f

    const v23, 0x41ca3d71    # 25.28f

    const v24, 0x411e147b    # 9.88f

    const v25, 0x41ca3d71    # 25.28f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v8, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v13, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41d4a9fc    # 26.583f

    const v21, 0x41ca3d71    # 25.28f

    const v22, 0x41d7ae14    # 26.96f

    const v23, 0x41c73958    # 24.903f

    const v24, 0x41d7ae14    # 26.96f

    const v25, 0x41c3851f    # 24.44f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41d7ae14    # 26.96f

    const v21, 0x41318d50    # 11.097f

    const v22, 0x41d4a9fc    # 26.583f

    const v23, 0x412b851f    # 10.72f

    const v24, 0x41d0f5c3    # 26.12f

    const v25, 0x412b851f    # 10.72f

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41adc2f8

    const v3, 0x419f1340

    invoke-static {v1, v13, v7, v3, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v20, 0x41a2c986

    const v21, 0x41adc2f8

    const v22, 0x41a5cb92

    const v23, 0x41b0c711

    const v24, 0x41a5cb92

    const v25, 0x41b47b4a

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41a5cb92

    const v21, 0x41b8339c

    const v22, 0x41a2c986

    const v23, 0x41bb35a8

    const v24, 0x419f1340

    const v25, 0x41bb35a8

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x419f1340

    const v3, 0x41bb35a8

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x4180ee63

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x417a703b    # 15.6524f

    const v21, 0x41bb35a8

    const v22, 0x41746c22

    const v23, 0x41b8339c

    const v24, 0x41746c22

    const v25, 0x41b47b4a

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41746c22

    const v21, 0x41b0c711

    const v22, 0x417a703b    # 15.6524f

    const v23, 0x41adc2f8

    const v24, 0x4180ee63

    const v25, 0x41adc2f8

    invoke-virtual/range {v19 .. v25}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41adc2f8

    const v3, 0x4180ee63

    invoke-virtual {v1, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v21, 0x0

    const/high16 v22, 0x40800000    # 4.0f

    const/16 v16, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v14, v26

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-static/range {v14 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
