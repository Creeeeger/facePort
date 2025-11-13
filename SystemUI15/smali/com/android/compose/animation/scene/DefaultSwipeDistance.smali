.class public final Lcom/android/compose/animation/scene/DefaultSwipeDistance;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/UserActionDistance;


# static fields
.field public static final INSTANCE:Lcom/android/compose/animation/scene/DefaultSwipeDistance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/DefaultSwipeDistance;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/DefaultSwipeDistance;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/DefaultSwipeDistance;->INSTANCE:Lcom/android/compose/animation/scene/DefaultSwipeDistance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final absoluteDistance-JVtK1S4(Lcom/android/compose/animation/scene/UserActionDistanceScope;JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    sget-object p0, Lcom/android/compose/animation/scene/DefaultSwipeDistance$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide p0, 0xffffffffL

    and-long/2addr p0, p2

    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 p0, 0x20

    shr-long p0, p2, p0

    goto :goto_0

    :goto_1
    int-to-float p0, p0

    return p0
.end method
