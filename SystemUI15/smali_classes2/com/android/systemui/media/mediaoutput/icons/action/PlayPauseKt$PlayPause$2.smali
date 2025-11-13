.class final Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/PlayPauseKt$PlayPause$2;

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
    .locals 17

    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "PlayPause"

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xfffafaffL

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

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v10, 0x416fe632    # 14.9937f

    const v11, 0x40db089a    # 6.8448f

    const v6, 0x41682474

    const/high16 v7, 0x40c00000    # 6.0f

    const v8, 0x416ef5c3    # 14.935f

    const v9, 0x40cba0f9    # 6.3634f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v5, 0x41700000    # 15.0f

    const v13, 0x40de6f69

    invoke-virtual {v0, v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41846426

    invoke-virtual {v0, v5, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v11, 0x418c0000    # 17.5f

    const/high16 v6, 0x41700000    # 15.0f

    const v7, 0x418897f6

    const v8, 0x4168d639

    const/high16 v9, 0x418c0000    # 17.5f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x415019ce    # 13.0063f

    const v11, 0x41853dd9

    const v6, 0x4157db8c

    const/high16 v7, 0x418c0000    # 17.5f

    const v8, 0x41510a3d    # 13.065f

    const v9, 0x418917c2

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v0, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x414c8b44    # 12.784f

    const v11, 0x414ffcb9    # 12.9992f

    invoke-virtual {v0, v11, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x40cf1759    # 6.4716f

    const v6, 0x4188e7d5

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x40a02681

    const v16, 0x418368a7

    const v6, 0x40bbd639

    const v7, 0x418c1931

    const v8, 0x40a25532

    const v9, 0x4188f41f

    move-object v5, v0

    move v14, v11

    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4182a36e

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v0, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x40e3b2ff

    invoke-virtual {v0, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x40cf1759    # 6.4716f

    const v11, 0x40caa162    # 6.3322f

    const v7, 0x40cba29c

    const v8, 0x40baf694

    const v9, 0x40bd47ae    # 5.915f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x412a92a3    # 10.6608f

    invoke-virtual {v0, v14, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x415e5d64

    const v11, 0x40c02824    # 6.0049f

    const/high16 v6, 0x41500000    # 13.0f

    const v7, 0x40ceacda    # 6.4586f

    const v8, 0x41564bc7

    const v9, 0x40c1b717

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v0, v1, v2, v5, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const/high16 v10, 0x41880000    # 17.0f

    const v11, 0x40de6f69

    const v6, 0x418b94e4

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x41880000    # 17.0f

    const v9, 0x40cda027

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v1, 0x41880000    # 17.0f

    const v2, 0x41846426

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41880ce7    # 17.0063f

    const v2, 0x41853dd9

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v11, 0x418c0000    # 17.5f

    const v6, 0x4188851f    # 17.065f

    const v7, 0x418917c2

    const v8, 0x418bedc6

    const/high16 v9, 0x418c0000    # 17.5f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v10, 0x41980000    # 19.0f

    const v11, 0x41846426

    const v6, 0x41946b1c

    const/high16 v7, 0x418c0000    # 17.5f

    const/high16 v8, 0x41980000    # 19.0f

    const v9, 0x418897f6

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x4197f319    # 18.9937f

    const v2, 0x40db089a    # 6.8448f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v11, 0x40c00000    # 6.0f

    const v6, 0x41977ae1    # 18.935f

    const v7, 0x40cba0f9    # 6.3634f

    const v8, 0x4194123a

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

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
