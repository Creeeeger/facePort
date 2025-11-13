.class final Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/PcKt$Pc$2;

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
    .locals 18

    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "Pc"

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x42100000    # 36.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xff000000L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41dd47ae    # 27.66f

    const v2, 0x41ceb852    # 25.84f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v13, 0x41b172b0    # 22.181f

    invoke-virtual {v0, v13, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41c31893    # 24.387f

    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41bae979    # 23.364f

    invoke-virtual {v0, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41c253f8    # 24.291f

    const v7, 0x41c31893    # 24.387f

    const v8, 0x41c85a1d    # 25.044f

    const v9, 0x41bd1062    # 23.633f

    const v10, 0x41c85a1d    # 25.044f

    const v11, 0x41b5a5e3    # 22.706f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41c85a1d    # 25.044f

    const v11, 0x4144cccd    # 12.3f

    invoke-virtual {v0, v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41c85a1d    # 25.044f

    const v7, 0x4135f7cf    # 11.373f

    const v8, 0x41c253f8    # 24.291f

    const v9, 0x4129e76d    # 10.619f

    const v10, 0x41bae979    # 23.364f

    const v16, 0x4129e76d    # 10.619f

    move-object v5, v0

    move v14, v11

    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v11, 0x4129e76d    # 10.619f

    invoke-virtual {v0, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41228f5c    # 10.16f

    invoke-virtual {v0, v13, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v1, v10, v1, v2}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v9, 0x41b5a5e3    # 22.706f

    invoke-virtual {v0, v15, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v5, 0x41baeb85    # 23.365f

    invoke-virtual {v0, v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x41bc5e35    # 23.546f

    invoke-static {v0, v15, v5, v15, v9}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v8, 0x410570a4    # 8.34f

    invoke-virtual {v0, v8, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x41bae560    # 23.362f

    invoke-virtual {v0, v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v8, v9, v8, v14}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v14, 0x4107ae14    # 8.48f

    invoke-virtual {v0, v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41aa0831    # 21.254f

    const v7, 0x4107ae14    # 8.48f

    const v13, 0x41a4020c    # 20.501f

    const v15, 0x4113be77    # 9.234f

    const v16, 0x41a4020c    # 20.501f

    const v17, 0x41228f5c    # 10.16f

    move-object v5, v0

    move v14, v8

    move v8, v13

    move v13, v9

    move v9, v15

    move v15, v10

    move/from16 v10, v16

    move v15, v11

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v11, 0x41a4020c    # 20.501f

    invoke-virtual {v0, v11, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x40ed3f7d    # 7.414f

    const v7, 0x4129e76d    # 10.619f

    const v8, 0x40d51eb8    # 6.66f

    const v9, 0x4135f7cf    # 11.373f

    const v10, 0x40d51eb8    # 6.66f

    const v14, 0x4144cccd    # 12.3f

    move v15, v11

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x40d51eb8    # 6.66f

    invoke-virtual {v0, v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x40d51eb8    # 6.66f

    const v7, 0x41bd1062    # 23.633f

    const v8, 0x40ed3f7d    # 7.414f

    const v9, 0x41c31893    # 24.387f

    const v10, 0x410570a4    # 8.34f

    const v11, 0x41c31893    # 24.387f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4170353f    # 15.013f

    const v6, 0x41c31893    # 24.387f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41ccd0e5    # 25.602f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x414645a2    # 12.392f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41da3f7d    # 27.281f

    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x419a8106    # 19.313f

    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x41858937    # 16.692f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41c31893    # 24.387f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v15, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41a4020c    # 20.501f

    const v7, 0x41d620c5    # 26.766f

    const v8, 0x41aa0831    # 21.254f

    const v9, 0x41dc28f6    # 27.52f

    const v10, 0x41b172b0    # 22.181f

    const v11, 0x41dc28f6    # 27.52f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41dc28f6    # 27.52f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41e4b021    # 28.586f

    const v7, 0x41dc28f6    # 27.52f

    const v8, 0x41eab852    # 29.34f

    const v9, 0x41d620c5    # 26.766f

    const v10, 0x41eab852    # 29.34f

    const v11, 0x41ceb852    # 25.84f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41eab852    # 29.34f

    const v5, 0x41228f5c    # 10.16f

    invoke-virtual {v0, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x41eab852    # 29.34f

    const v7, 0x4113be77    # 9.234f

    const v8, 0x41e4b021    # 28.586f

    const v9, 0x4107ae14    # 8.48f

    const v10, 0x41dd47ae    # 27.66f

    const v11, 0x4107ae14    # 8.48f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4107ae14    # 8.48f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

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
