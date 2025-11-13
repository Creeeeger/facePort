.class final Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/FastForwardKt$FastForward$2;

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
    .locals 13

    new-instance p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "FastForward"

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x42200000    # 40.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xffffffffL

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

    const v1, 0x41107ae1    # 9.03f

    const v2, 0x41d8680a

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v10, 0x41255f70

    const/high16 v11, 0x41e40000    # 28.5f

    const v6, 0x41107ae1    # 9.03f

    const v7, 0x41e005bc    # 28.0028f

    const v8, 0x411af972

    const/high16 v9, 0x41e40000    # 28.5f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x413348e9

    const v11, 0x41e1cccd    # 28.225f

    const v6, 0x412a0f28

    const/high16 v7, 0x41e40000    # 28.5f

    const v8, 0x412eb852    # 10.92f

    const v9, 0x41e3432d

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41ac16bc

    const v12, 0x41a2da1d

    invoke-virtual {v0, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x41d593de

    invoke-virtual {v0, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41ad4c64

    const v11, 0x41e12bd4

    const v6, 0x41a2da1d

    const v7, 0x41dd3190

    const v8, 0x41a81653

    const v9, 0x41e12bd4

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41b44120

    const v11, 0x41def8a1

    const v6, 0x41afa752

    const v7, 0x41e12bd4

    const v8, 0x41b1fbe7    # 22.248f

    const v9, 0x41e06f00

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41f79e1b    # 30.9522f

    const v6, 0x41aa1518

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41fd92d7

    const/high16 v11, 0x41a00000    # 20.0f

    const v6, 0x41fb69e2

    const v7, 0x41a7a9fc    # 20.958f

    const v8, 0x41fd92d7

    const v9, 0x41a3fd56

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41f79e1b    # 30.9522f

    const v11, 0x4195e7d5

    const v6, 0x41fd92d7

    const v7, 0x419c02aa

    const v8, 0x41fb69e2

    const v9, 0x41985604    # 19.042f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41b44120

    const v6, 0x414214e4

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41ad4c64

    const v11, 0x413da858

    const v6, 0x41b1fbe7    # 22.248f

    const v7, 0x413f21ff

    const v8, 0x41afa752

    const v9, 0x413da858

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41a2da1d

    const v11, 0x4154d1b7    # 13.3012f

    const v6, 0x41a81653

    const v7, 0x413da858

    const v8, 0x41a2da1d

    const v9, 0x41459ce0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4193e632    # 18.4874f

    invoke-virtual {v0, v12, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x413348e9

    const v6, 0x413c6c8b

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41255f70

    const/high16 v11, 0x41380000    # 11.5f

    const v6, 0x412ebee0

    const v7, 0x413979a7

    const v8, 0x412a0f28

    const/high16 v9, 0x41380000    # 11.5f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41107ae1    # 9.03f

    const v11, 0x414f295f

    const v6, 0x411af972

    const/high16 v7, 0x41380000    # 11.5f

    const v8, 0x41107ae1    # 9.03f

    const v9, 0x413ff488    # 11.9972f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method
