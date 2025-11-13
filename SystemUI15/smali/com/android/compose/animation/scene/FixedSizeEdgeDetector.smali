.class public final Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/SwipeSourceDetector;


# instance fields
.field public final size:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;->size:F

    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final source-NDhlJko(JJLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeSource;
    .locals 2

    sget-object v0, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p6, v0, p6

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    sget-object p6, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    and-long p2, p3, v0

    long-to-int p2, p2

    sget-object p3, Lcom/android/compose/animation/scene/Edge;->Top:Lcom/android/compose/animation/scene/Edge;

    sget-object p4, Lcom/android/compose/animation/scene/Edge;->Bottom:Lcom/android/compose/animation/scene/Edge;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p6, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 p6, 0x20

    shr-long/2addr p1, p6

    long-to-int p1, p1

    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long p2, p3, p6

    long-to-int p2, p2

    sget-object p3, Lcom/android/compose/animation/scene/Edge;->Left:Lcom/android/compose/animation/scene/Edge;

    sget-object p4, Lcom/android/compose/animation/scene/Edge;->Right:Lcom/android/compose/animation/scene/Edge;

    :goto_0
    iget p0, p0, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;->size:F

    invoke-interface {p5, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    int-to-float p2, p2

    cmpg-float p5, p2, p0

    if-gtz p5, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p1, p1

    sub-float/2addr p1, p0

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_3

    move-object p3, p4

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    return-object p3
.end method
