.class final Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/SkipNextKt$SkipNext$2;

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

    const-string v1, "SkipNext"

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

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v3, v4, v5, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

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

    const v1, 0x41cfc505

    const v2, 0x4139999a    # 11.6f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v10, 0x41c4bd3c

    const v11, 0x414dc28f    # 12.86f

    const v6, 0x41c9aa65

    const v7, 0x4139999a    # 11.6f

    const v8, 0x41c4bd3c

    const v9, 0x4142a1cb

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4196ed91    # 18.866f

    const v2, 0x41c4bd3c

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41c435a8

    const v11, 0x41968659

    const v6, 0x41c48866

    const v7, 0x4196cb29

    const v8, 0x41c46a4b

    const v9, 0x4196a546    # 18.8307f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x416dd0e5

    const v5, 0x41446e98    # 12.277f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x415fb22d    # 13.981f

    const v11, 0x414051ec    # 12.02f

    const v6, 0x41693a2a

    const v7, 0x4141b7e9    # 12.1074f

    const v8, 0x416475f7    # 14.2788f

    const v9, 0x414051ec    # 12.02f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x414a6666    # 12.65f

    const v11, 0x415617c2

    const v6, 0x415513a9

    const v7, 0x414051ec    # 12.02f

    const v8, 0x414a6666    # 12.65f

    const v9, 0x4147cac1    # 12.487f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x414a6666    # 12.65f

    const v5, 0x41d4f41f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x415fb22d    # 13.981f

    const v11, 0x41dfd70a    # 27.98f

    const v6, 0x414a6666    # 12.65f

    const v7, 0x41dc1aa0    # 27.513f

    const v8, 0x415513a9

    const v9, 0x41dfd70a    # 27.98f

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x416dd0e5

    const v11, 0x41ddc8b4    # 27.723f

    const v6, 0x416475f7    # 14.2788f

    const v7, 0x41dfd70a    # 27.98f

    const v8, 0x41693261

    const v9, 0x41df2787

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41c435a8

    const v5, 0x41a9762b

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41c4bd3c

    const v11, 0x41a9126f    # 21.134f

    const v6, 0x41c46a4b

    const v7, 0x41a9573f

    const v8, 0x41c48866

    const v9, 0x41a9315b

    move-object v5, v0

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41d91eb8    # 27.14f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41cfc505

    const v11, 0x41e33333    # 28.4f

    const v6, 0x41c4bd3c

    const v7, 0x41deaf1b

    const v8, 0x41c9aa65

    const v9, 0x41e33333    # 28.4f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41dacccd    # 27.35f

    const v11, 0x41d91eb8    # 27.14f

    const v6, 0x41d5dbc0

    const v7, 0x41e33333    # 28.4f

    const v8, 0x41dacccd    # 27.35f

    const v9, 0x41deaf1b

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41dacccd    # 27.35f

    const v2, 0x414dc28f    # 12.86f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41cfc505

    const v11, 0x4139999a    # 11.6f

    const v6, 0x41dacccd    # 27.35f

    const v7, 0x4142a1cb

    const v8, 0x41d5dbc0

    const v9, 0x4139999a    # 11.6f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method
