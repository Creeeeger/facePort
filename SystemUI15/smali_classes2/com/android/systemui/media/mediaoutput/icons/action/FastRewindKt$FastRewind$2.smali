.class final Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/FastRewindKt$FastRewind$2;

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
    .locals 12

    new-instance p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "FastRewind"

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

    const v1, 0x4192acda

    const v2, 0x413da858

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v10, 0x418bb81d

    const v11, 0x414214e4

    const v6, 0x419054fe    # 18.0415f

    const v7, 0x413da858

    const v8, 0x418dfa10

    const v9, 0x413f21ff

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4110b5dd

    const v2, 0x4195e7d5

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x4104cccd    # 8.3f

    const/high16 v11, 0x41a00000    # 20.0f

    const v6, 0x41091eb8    # 8.57f

    const v7, 0x419852bd

    const v8, 0x4104cccd    # 8.3f

    const v9, 0x419c02aa

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x4110b5dd

    const v11, 0x41aa1518

    const v6, 0x4104cccd    # 8.3f

    const v7, 0x41a3fa44    # 20.4972f

    const v8, 0x41091eb8    # 8.57f

    const v9, 0x41a7a3d7    # 20.955f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x418bb81d

    const v2, 0x41def8a1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x4192acda

    const v11, 0x41e128c1

    const v6, 0x418dfd22    # 17.7486f

    const v7, 0x41e06f00

    const v8, 0x419054fe    # 18.0415f

    const v9, 0x41e128c1

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x419d1f21

    const v11, 0x41d590cb

    const v6, 0x4197e2eb

    const v7, 0x41e128c1

    const v8, 0x419d1f21

    const v9, 0x41dd2e7d

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41ac16bc

    const v2, 0x419d1f21

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41e654ca

    const v5, 0x41e1cccd    # 28.225f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41ed4986

    const/high16 v11, 0x41e40000    # 28.5f

    const v6, 0x41e89ce0

    const v7, 0x41e3432d

    const v8, 0x41eaee98

    const/high16 v9, 0x41e40000    # 28.5f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41f7bbcd

    const v11, 0x41d8680a

    const v6, 0x41f27f63

    const/high16 v7, 0x41e40000    # 28.5f

    const v8, 0x41f7bbcd

    const v9, 0x41e005bc    # 28.0028f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41f7bbcd

    const v5, 0x414f295f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41ed4986

    const/high16 v11, 0x41380000    # 11.5f

    const v6, 0x41f7bbcd

    const v7, 0x413ff488    # 11.9972f

    const v8, 0x41f27f63

    const/high16 v9, 0x41380000    # 11.5f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41e654ca

    const v11, 0x413c6666    # 11.775f

    const v6, 0x41eaee98

    const/high16 v7, 0x41380000    # 11.5f

    const v8, 0x41e899ce    # 29.0751f

    const v9, 0x41397382

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4193e632    # 18.4874f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x4154d1b7    # 13.3012f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x4192acda

    const v11, 0x413da858

    const v6, 0x419d1f21

    const v7, 0x41459ce0

    const v8, 0x4197e2eb

    const v9, 0x413da858

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

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
