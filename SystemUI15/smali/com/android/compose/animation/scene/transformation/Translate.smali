.class public final Lcom/android/compose/animation/scene/transformation/Translate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;

.field public final x:F

.field public final y:F


# direct methods
.method private constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/Translate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput p2, p0, Lcom/android/compose/animation/scene/transformation/Translate;->x:F

    iput p3, p0, Lcom/android/compose/animation/scene/transformation/Translate;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    int-to-float p2, v0

    sget-object p5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    int-to-float p3, v0

    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    :cond_1
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/compose/animation/scene/transformation/Translate;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/transformation/Translate;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;FF)V

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/Translate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p6, Landroidx/compose/ui/geometry/Offset;

    iget-wide p2, p6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p4

    iget p5, p0, Lcom/android/compose/animation/scene/transformation/Translate;->x:F

    invoke-interface {p1, p5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p5

    add-float/2addr p5, p4

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    iget p0, p0, Lcom/android/compose/animation/scene/transformation/Translate;->y:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    add-float/2addr p0, p2

    invoke-static {p5, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method
