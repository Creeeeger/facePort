.class final Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/MusicShareKt$MusicShare$2;

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
    .locals 22

    const v0, 0x40e16388

    const v1, 0x411f4ea5

    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    double-to-float v5, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v3, "IcBadgeMusicShare"

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

    sget v8, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v3, -0x3f000000    # -8.0f

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)V

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v7, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    const/high16 v3, -0x3e800000    # -16.0f

    invoke-virtual {v2, v7, v7, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v10, 0x40800000    # 4.0f

    move-object v2, v14

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v5, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v16, 0x40d947ae    # 6.79f

    const v17, 0x4121bda5    # 10.1088f

    const v18, 0x40d0ebee    # 6.5288f

    const v19, 0x4123205c

    const v20, 0x40c8c986    # 6.2746f

    const v21, 0x4123205c

    move-object v15, v2

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x40b0f007

    const v17, 0x4123205c

    const v18, 0x409d559b

    const v19, 0x41195326    # 9.5828f

    const v20, 0x409d559b

    const v21, 0x410d65fe

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x409d559b

    const v17, 0x4101793e

    const v18, 0x40b0f007

    const v19, 0x40ef5810

    const v20, 0x40c8c986    # 6.2746f

    const v21, 0x40ef5810

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x40d1d639

    const v17, 0x40ef5810

    const v18, 0x40da7a10

    const v19, 0x40f21bda

    const v20, 0x40e19b3d    # 7.0502f

    const v21, 0x40f6daba    # 7.7142f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41135e9e

    const v4, 0x40ceb6ae

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v16, 0x41135810    # 9.209f

    const v17, 0x40ce5aee

    const v18, 0x41135254

    const v19, 0x40cdfd8b    # 6.4372f

    const v20, 0x41134dd3    # 9.2065f

    const v21, 0x40cd9e84    # 6.4256f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x41133a93

    const v17, 0x40cc1ff3    # 6.3789f

    const v18, 0x4113367a    # 9.2008f

    const v19, 0x40caf41f    # 6.3423f

    const v20, 0x4113367a    # 9.2008f

    const v21, 0x40c8c986    # 6.2746f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x4113367a    # 9.2008f

    const v17, 0x40b0f007

    const v18, 0x411d03b0

    const v19, 0x409d559b

    const v20, 0x4128f06f

    const v21, 0x409d559b

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x4134dd98    # 11.3041f

    const v17, 0x409d559b

    const v18, 0x413eaace

    const v19, 0x40b0f007

    const v20, 0x413eaace

    const v21, 0x40c8c986    # 6.2746f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x413eaace

    const v17, 0x40e0a305

    const v18, 0x4134dd98    # 11.3041f

    const v19, 0x40f43d71

    const v20, 0x4128f06f

    const v21, 0x40f43d71

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x41246a7f    # 10.276f

    const v17, 0x40f43d71

    const v18, 0x41201893    # 10.006f

    const v19, 0x40f17a78

    const v20, 0x411c8794

    const v21, 0x40ecbac7    # 7.3978f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x40f3edfa

    const v4, 0x410a6f69

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v16, 0x40f3fb16

    const v17, 0x410a9d49

    const v18, 0x40f405bc    # 7.6257f

    const v19, 0x410acbfb    # 8.6748f

    const v20, 0x40f40f91

    const v21, 0x410afb7f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x40f43611    # 7.6316f

    const v17, 0x410bbb30    # 8.7332f

    const v18, 0x40f43d71

    const v19, 0x410c50b1    # 8.7697f

    const v20, 0x40f43d71

    const v21, 0x410d65fe

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x40f43d71

    const v17, 0x410e7bb3    # 8.9052f

    const v18, 0x40f43611    # 7.6316f

    const v19, 0x410f1134    # 8.9417f

    const v20, 0x40f40f91

    const v21, 0x410fd07d

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x40f405bc    # 7.6257f

    const v17, 0x41100069    # 9.0001f

    const v18, 0x40f3fb16

    const v19, 0x41102f1b

    const v20, 0x40f3edfa

    const v21, 0x41105c92

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x411ca36e

    const v4, 0x41247efa    # 10.281f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v16, 0x4120b1c4

    const v17, 0x41220ff9

    const v18, 0x4124dfa4

    const v19, 0x4120ad43

    const v20, 0x4128f06f

    const v21, 0x4120ad43

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x4134dd98    # 11.3041f

    const v17, 0x4120ad43

    const v18, 0x413eaace

    const v19, 0x412a7a78

    const v20, 0x413eaace

    const v21, 0x413667a1    # 11.4003f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x413eaace

    const v17, 0x41425461

    const v18, 0x4134dd98    # 11.3041f

    const v19, 0x414c2196

    const v20, 0x4128f06f

    const v21, 0x414c2196

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x411d03b0

    const v17, 0x414c2196

    const v18, 0x4113367a    # 9.2008f

    const v19, 0x41425461

    const v20, 0x4113367a    # 9.2008f

    const v21, 0x413667a1    # 11.4003f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x4113367a    # 9.2008f

    const v17, 0x413551ec

    const v18, 0x41133a93

    const v19, 0x4134bc6a    # 11.296f

    const v20, 0x41134dd3    # 9.2065f

    const v21, 0x4133fd22    # 11.2493f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x41135254

    const v17, 0x4133cd36

    const v18, 0x41135810    # 9.209f

    const v19, 0x41339e84

    const v20, 0x41135e9e

    const v21, 0x4133710d

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

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

    move-result-object v0

    return-object v0
.end method
