.class final Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/SettingsKt$Settings$2;

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

    new-instance p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "Settings"

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xff000000L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x415a9c0f

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v9, 0x415f0275

    const/high16 v10, 0x40400000    # 3.0f

    const v11, 0x4163816f    # 14.2191f

    const v12, 0x404df3b6    # 3.218f

    const v13, 0x41649c0f

    const v14, 0x405ef9db    # 3.484f

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x416c14e4

    const v5, 0x40a9b22d    # 5.303f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x416d2f83

    const v10, 0x40b2353f    # 5.569f

    const v11, 0x4175d773    # 15.3651f

    const v12, 0x40c13f7d    # 6.039f

    const v13, 0x4178a027

    const v14, 0x40c4cccd    # 6.15f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x417b68dc

    const v10, 0x40c8624e    # 6.262f

    const v11, 0x418093a9

    const v12, 0x40c96042    # 6.293f

    const v13, 0x4182b261

    const v14, 0x40c70a3d    # 6.22f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41911ad4

    const v5, 0x40b6f9db    # 5.718f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x4193398c

    const v10, 0x40b49ba6    # 5.644f

    const v11, 0x4195db57

    const v12, 0x40b8e560    # 5.778f

    const v13, 0x4196f3eb

    const v14, 0x40c08b44    # 6.017f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41a2a40b

    const v5, 0x4108e979    # 8.557f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41a3bc9f

    const v10, 0x410cbc6a    # 8.796f

    const v11, 0x41a35845

    const v12, 0x4112624e    # 9.149f

    const v13, 0x41a1c8e9

    const v14, 0x411578d5    # 9.342f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41971ad4

    const v5, 0x412a872b    # 10.658f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x4195896c

    const v10, 0x412d9db2    # 10.851f

    const v11, 0x41945a51

    const v12, 0x4132d917    # 11.178f

    const v13, 0x41947909

    const v14, 0x413624dd    # 11.384f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41947909

    const v5, 0x413c3958    # 11.764f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41945a51

    const v10, 0x413f851f    # 11.97f

    const v11, 0x4195896c

    const v12, 0x4144c49c    # 12.298f

    const v13, 0x41971ad4

    const v14, 0x4147db23    # 12.491f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41a1c8e9

    const v5, 0x415ce560    # 13.806f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41a35845

    const/high16 v10, 0x41600000    # 14.0f

    const v11, 0x41a3bc9f

    const v12, 0x4165a5e3    # 14.353f

    const v13, 0x41a2a40b

    const v14, 0x416974bc    # 14.591f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4196f3eb

    const v5, 0x41890c4a    # 17.131f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x4195db57

    const v10, 0x418af3b6    # 17.369f

    const v11, 0x4193398c

    const v12, 0x418c0831    # 17.504f

    const v13, 0x41911ad4

    const v14, 0x418b70a4    # 17.43f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4182b261

    const v5, 0x41876c8b    # 16.928f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x418093a9

    const v10, 0x4186d4fe    # 16.854f

    const v11, 0x41765e9e

    const v12, 0x4188b646    # 17.089f

    const v13, 0x41736cf4

    const v14, 0x41897ae1    # 17.185f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x41707f63

    const v10, 0x418a4189    # 17.282f

    const v11, 0x416d2f83

    const v12, 0x418c9fbe    # 17.578f

    const v13, 0x416c18fc

    const v14, 0x418ec28f    # 17.845f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41649c0f

    const v5, 0x419d4fdf    # 19.664f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x4163816f    # 14.2191f

    const v10, 0x419f70a4    # 19.93f

    const v11, 0x415f0275

    const v12, 0x41a12f1b    # 20.148f

    const v13, 0x415a9c0f

    const v14, 0x41a12f1b    # 20.148f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x412bebee    # 10.7451f

    const v5, 0x41a12f1b    # 20.148f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41278588

    const v10, 0x41a12f1b    # 20.148f

    const v11, 0x4123068e

    const v12, 0x419f70a4    # 19.93f

    const v13, 0x4121f007

    const v14, 0x419d4fdf    # 19.664f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x411a6f00

    const v5, 0x418ec28f    # 17.845f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41195461

    const v10, 0x418c9fbe    # 17.578f

    const v11, 0x4110ac71    # 9.0421f

    const v12, 0x4188df3b    # 17.109f

    const v13, 0x410de3bd

    const v14, 0x4187f9db    # 16.997f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x410b1b09

    const v10, 0x41871687    # 16.886f

    const v11, 0x41055c92

    const v12, 0x4186d4fe    # 16.854f

    const v13, 0x41011f21

    const v14, 0x41876c8b    # 16.928f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40c8a4a9

    const v5, 0x418b70a4    # 17.43f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x40c029c7

    const v10, 0x418c0831    # 17.504f

    const v11, 0x40b5a29c

    const v12, 0x418af3b6    # 17.369f

    const v13, 0x40b1404f

    const v14, 0x41890c4a    # 17.131f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x408287fd

    const v5, 0x416974bc    # 14.591f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x407c3afb

    const v10, 0x4165a5e3    # 14.353f

    const v11, 0x407f4d6a    # 3.9891f

    const/high16 v12, 0x41600000    # 14.0f

    const v13, 0x4085ec57    # 4.1851f

    const v14, 0x415ce560    # 13.806f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40b09c78

    const v5, 0x4147db23    # 12.491f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x40b6e219

    const v10, 0x4144c49c    # 12.298f

    const v11, 0x40bb9e84    # 5.8631f

    const v12, 0x413f851f    # 11.97f

    const v13, 0x40bb2bd4

    const v14, 0x413c3958    # 11.764f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40bb2bd4

    const v5, 0x413624dd    # 11.384f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x40bb9e84    # 5.8631f

    const v10, 0x4132d917    # 11.178f

    const v11, 0x40b6e219

    const v12, 0x412d999a    # 10.85f

    const v13, 0x40b09c78

    const v14, 0x412a8312    # 10.657f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4085e426

    const v5, 0x411578d5    # 9.342f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x407f4d6a    # 3.9891f

    const v10, 0x4112624e    # 9.149f

    const v11, 0x407c3afb

    const v12, 0x410cbc6a    # 8.796f

    const v13, 0x40827fcc

    const v14, 0x4108e979    # 8.557f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40b1404f

    const v5, 0x40c08b44    # 6.017f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x40b5a29c

    const v10, 0x40b8e560    # 5.778f

    const v11, 0x40c029c7

    const v12, 0x40b49ba6    # 5.644f

    const v13, 0x40c8a4a9

    const v14, 0x40b6f9db    # 5.718f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41011f21

    const v5, 0x40c70a3d    # 6.22f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41055c92

    const v10, 0x40c96042    # 6.293f

    const v11, 0x41102546    # 9.0091f

    const v12, 0x40c1db23    # 6.058f

    const v13, 0x411316f0    # 9.1931f

    const v14, 0x40bec8b4    # 5.962f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x4116089a    # 9.3771f

    const v10, 0x40bbb646    # 5.866f

    const v11, 0x41195461

    const v12, 0x40b2353f    # 5.569f

    const v13, 0x411a6f00

    const v14, 0x40a9b22d    # 5.303f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4121ebee    # 10.1201f

    const v5, 0x405ef9db    # 3.484f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v9, 0x41230275

    const v10, 0x404df3b6    # 3.218f

    const v11, 0x41278588

    const/high16 v12, 0x40400000    # 3.0f

    const v13, 0x412bebee    # 10.7451f

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const v1, 0x414341f2    # 12.2036f

    const v5, 0x410d70a4    # 8.84f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v9, 0x412b1d15

    const v10, 0x410d70a4    # 8.84f

    const v11, 0x41178794

    const v12, 0x41210625    # 10.064f

    const v13, 0x41178794

    const v14, 0x41392f1b    # 11.574f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x41178794

    const v10, 0x415153f8    # 13.083f

    const v11, 0x412b1d15

    const v12, 0x4164ed91    # 14.308f

    const v13, 0x414341f2    # 12.2036f

    const v14, 0x4164ed91    # 14.308f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x415b6ae8

    const v10, 0x4164ed91    # 14.308f

    const v11, 0x416f0069

    const v12, 0x415153f8    # 13.083f

    const v13, 0x416f0069

    const v14, 0x41392f1b    # 11.574f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x416f0069

    const v10, 0x41210625    # 10.064f

    const v11, 0x415b6ae8

    const v12, 0x410d70a4    # 8.84f

    const v13, 0x414341f2    # 12.2036f

    const v14, 0x410d70a4    # 8.84f

    invoke-virtual/range {v8 .. v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v8, 0x40800000    # 4.0f

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method
