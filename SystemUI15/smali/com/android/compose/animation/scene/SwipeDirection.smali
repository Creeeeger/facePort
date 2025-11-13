.class public final enum Lcom/android/compose/animation/scene/SwipeDirection;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/compose/animation/scene/SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/compose/animation/scene/SwipeDirection;

.field public static final enum Down:Lcom/android/compose/animation/scene/SwipeDirection;

.field public static final enum Left:Lcom/android/compose/animation/scene/SwipeDirection;

.field public static final enum Right:Lcom/android/compose/animation/scene/SwipeDirection;

.field public static final enum Up:Lcom/android/compose/animation/scene/SwipeDirection;


# instance fields
.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/compose/animation/scene/SwipeDirection;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const-string v2, "Up"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/compose/animation/scene/SwipeDirection;-><init>(Ljava/lang/String;ILandroidx/compose/foundation/gestures/Orientation;)V

    sput-object v0, Lcom/android/compose/animation/scene/SwipeDirection;->Up:Lcom/android/compose/animation/scene/SwipeDirection;

    new-instance v2, Lcom/android/compose/animation/scene/SwipeDirection;

    const-string v3, "Down"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lcom/android/compose/animation/scene/SwipeDirection;-><init>(Ljava/lang/String;ILandroidx/compose/foundation/gestures/Orientation;)V

    sput-object v2, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    new-instance v1, Lcom/android/compose/animation/scene/SwipeDirection;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const-string v4, "Left"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v3}, Lcom/android/compose/animation/scene/SwipeDirection;-><init>(Ljava/lang/String;ILandroidx/compose/foundation/gestures/Orientation;)V

    sput-object v1, Lcom/android/compose/animation/scene/SwipeDirection;->Left:Lcom/android/compose/animation/scene/SwipeDirection;

    new-instance v4, Lcom/android/compose/animation/scene/SwipeDirection;

    const-string v5, "Right"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/android/compose/animation/scene/SwipeDirection;-><init>(Ljava/lang/String;ILandroidx/compose/foundation/gestures/Orientation;)V

    sput-object v4, Lcom/android/compose/animation/scene/SwipeDirection;->Right:Lcom/android/compose/animation/scene/SwipeDirection;

    filled-new-array {v0, v2, v1, v4}, [Lcom/android/compose/animation/scene/SwipeDirection;

    move-result-object v0

    sput-object v0, Lcom/android/compose/animation/scene/SwipeDirection;->$VALUES:[Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/compose/animation/scene/SwipeDirection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/compose/animation/scene/SwipeDirection;
    .locals 1

    const-class v0, Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/SwipeDirection;

    return-object p0
.end method

.method public static values()[Lcom/android/compose/animation/scene/SwipeDirection;
    .locals 1

    sget-object v0, Lcom/android/compose/animation/scene/SwipeDirection;->$VALUES:[Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/compose/animation/scene/SwipeDirection;

    return-object v0
.end method


# virtual methods
.method public final getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SwipeDirection;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method
