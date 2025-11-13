.class public final Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
.super Landroidx/compose/animation/core/KeyframesSpecBaseConfig;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 7

    new-instance v6, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->keyframes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-object v6
.end method
