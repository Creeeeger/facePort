.class public final Lcom/android/compose/animation/scene/DraggableHandlerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public dragController:Lcom/android/compose/animation/scene/DragControllerImpl;

.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/DraggableHandlerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/DraggableHandlerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final computeSwipes-_UaWb3I(Lcom/android/compose/animation/scene/Scene;Landroidx/compose/ui/geometry/Offset;I)Lcom/android/compose/animation/scene/Swipes;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v2, v1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

    iget-object p1, p1, Lcom/android/compose/animation/scene/Scene;->targetSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v3, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-wide p1, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    iget-object v8, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-interface/range {v2 .. v8}, Lcom/android/compose/animation/scene/SwipeSourceDetector;->source-NDhlJko(JJLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance p2, Lcom/android/compose/animation/scene/Swipe;

    sget-object v1, Lcom/android/compose/animation/scene/DraggableHandlerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    iget-object p0, p0, Lcom/android/compose/animation/scene/DraggableHandlerImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/compose/animation/scene/SwipeDirection;->Up:Lcom/android/compose/animation/scene/SwipeDirection;

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object v2, Lcom/android/compose/animation/scene/SwipeDirection;->Left:Lcom/android/compose/animation/scene/SwipeDirection;

    :goto_1
    invoke-direct {p2, v2, p3, p1}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    new-instance v2, Lcom/android/compose/animation/scene/Swipe;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_3

    sget-object p0, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    goto :goto_2

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    sget-object p0, Lcom/android/compose/animation/scene/SwipeDirection;->Right:Lcom/android/compose/animation/scene/SwipeDirection;

    :goto_2
    invoke-direct {v2, p0, p3, p1}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    if-nez p1, :cond_5

    new-instance p0, Lcom/android/compose/animation/scene/Swipes;

    invoke-direct {p0, v0, v0, p2, v2}, Lcom/android/compose/animation/scene/Swipes;-><init>(Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/android/compose/animation/scene/Swipes;

    invoke-static {p2}, Lcom/android/compose/animation/scene/Swipe;->copy$default(Lcom/android/compose/animation/scene/Swipe;)Lcom/android/compose/animation/scene/Swipe;

    move-result-object p1

    invoke-static {v2}, Lcom/android/compose/animation/scene/Swipe;->copy$default(Lcom/android/compose/animation/scene/Swipe;)Lcom/android/compose/animation/scene/Swipe;

    move-result-object p3

    invoke-direct {p0, p2, v2, p1, p3}, Lcom/android/compose/animation/scene/Swipes;-><init>(Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;)V

    :goto_3
    return-object p0
.end method
