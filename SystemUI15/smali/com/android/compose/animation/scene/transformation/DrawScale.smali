.class public final Lcom/android/compose/animation/scene/transformation/DrawScale;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# instance fields
.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;

.field public final pivot:J

.field public final scaleX:F

.field public final scaleY:F


# direct methods
.method private constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput p2, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->scaleX:F

    iput p3, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->scaleY:F

    iput-wide p4, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->pivot:J

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    sget-object p4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p4, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    :cond_0
    move-wide v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/compose/animation/scene/transformation/DrawScale;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/compose/animation/scene/transformation/DrawScale;-><init>(Lcom/android/compose/animation/scene/ElementMatcher;FFJ)V

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method

.method public final transform(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;Lcom/android/compose/animation/scene/TransitionState$Transition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p6, Lcom/android/compose/animation/scene/Scale;

    new-instance p6, Lcom/android/compose/animation/scene/Scale;

    iget-wide p3, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->pivot:J

    const/4 p5, 0x0

    iget p1, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->scaleX:F

    iget p2, p0, Lcom/android/compose/animation/scene/transformation/DrawScale;->scaleY:F

    move-object p0, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p6
.end method
