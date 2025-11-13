.class public final Lcom/android/compose/animation/scene/CommunalSwipeDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/SwipeSourceDetector;
.implements Lcom/android/compose/animation/scene/SwipeDetector;


# instance fields
.field public lastDirection:Lcom/android/compose/animation/scene/SwipeSource;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/compose/animation/scene/CommunalSwipeDetector;-><init>(Lcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/SwipeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/CommunalSwipeDetector;->lastDirection:Lcom/android/compose/animation/scene/SwipeSource;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/compose/animation/scene/CommunalSwipeDetector;-><init>(Lcom/android/compose/animation/scene/SwipeSource;)V

    return-void
.end method


# virtual methods
.method public final detectSwipe(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/compose/animation/scene/Edge;->Left:Lcom/android/compose/animation/scene/Edge;

    iput-object v1, p0, Lcom/android/compose/animation/scene/CommunalSwipeDetector;->lastDirection:Lcom/android/compose/animation/scene/SwipeSource;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/compose/animation/scene/Edge;->Right:Lcom/android/compose/animation/scene/Edge;

    iput-object v1, p0, Lcom/android/compose/animation/scene/CommunalSwipeDetector;->lastDirection:Lcom/android/compose/animation/scene/SwipeSource;

    :goto_0
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final source-NDhlJko(JJLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeSource;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/CommunalSwipeDetector;->lastDirection:Lcom/android/compose/animation/scene/SwipeSource;

    return-object p0
.end method
