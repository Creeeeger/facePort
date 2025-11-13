.class public final Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;

.field public final x:Lkotlin/jvm/functions/Function1;

.field public final y:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/ElementMatcher;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->x:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->y:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate$1;->INSTANCE:Lcom/android/compose/animation/scene/transformation/OverscrollTranslate$1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate$2;->INSTANCE:Lcom/android/compose/animation/scene/transformation/OverscrollTranslate$2;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p6, Landroidx/compose/ui/geometry/Offset;

    iget-wide p1, p6, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    check-cast p5, Lcom/android/compose/animation/scene/SwipeTransition;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p3

    iget-object p4, p5, Lcom/android/compose/animation/scene/SwipeTransition;->overscrollScope:Lcom/android/compose/animation/scene/SwipeTransition$overscrollScope$1;

    iget-object p5, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->x:Lkotlin/jvm/functions/Function1;

    invoke-interface {p5, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    add-float/2addr p5, p3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/OverscrollTranslate;->y:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    add-float/2addr p0, p1

    invoke-static {p5, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0
.end method
