.class public final Lcom/android/compose/animation/scene/Swipe;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/UserAction;


# static fields
.field public static final Companion:Lcom/android/compose/animation/scene/Swipe$Companion;

.field public static final Left:Lcom/android/compose/animation/scene/Swipe;

.field public static final Up:Lcom/android/compose/animation/scene/Swipe;


# instance fields
.field public final direction:Lcom/android/compose/animation/scene/SwipeDirection;

.field public final fromSource:Lcom/android/compose/animation/scene/SwipeSource;

.field public final pointerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/compose/animation/scene/Swipe$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/Swipe$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Swipe;->Companion:Lcom/android/compose/animation/scene/Swipe$Companion;

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    sget-object v3, Lcom/android/compose/animation/scene/SwipeDirection;->Left:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Swipe;->Left:Lcom/android/compose/animation/scene/Swipe;

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    sget-object v9, Lcom/android/compose/animation/scene/SwipeDirection;->Up:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Swipe;->Up:Lcom/android/compose/animation/scene/Swipe;

    new-instance v1, Lcom/android/compose/animation/scene/Swipe;

    sget-object v2, Lcom/android/compose/animation/scene/SwipeDirection;->Right:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lcom/android/compose/animation/scene/Swipe;

    sget-object v8, Lcom/android/compose/animation/scene/SwipeDirection;->Down:Lcom/android/compose/animation/scene/SwipeDirection;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    iput p2, p0, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    iput-object p3, p0, Lcom/android/compose/animation/scene/Swipe;->fromSource:Lcom/android/compose/animation/scene/SwipeSource;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    return-void
.end method

.method public static copy$default(Lcom/android/compose/animation/scene/Swipe;)Lcom/android/compose/animation/scene/Swipe;
    .locals 3

    new-instance v0, Lcom/android/compose/animation/scene/Swipe;

    iget-object v1, p0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    iget p0, p0, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/compose/animation/scene/Swipe;-><init>(Lcom/android/compose/animation/scene/SwipeDirection;ILcom/android/compose/animation/scene/SwipeSource;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/compose/animation/scene/Swipe;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/compose/animation/scene/Swipe;

    iget-object v1, p1, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    iget-object v3, p0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    iget v3, p1, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/compose/animation/scene/Swipe;->fromSource:Lcom/android/compose/animation/scene/SwipeSource;

    iget-object p1, p1, Lcom/android/compose/animation/scene/Swipe;->fromSource:Lcom/android/compose/animation/scene/SwipeSource;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/compose/animation/scene/Swipe;->fromSource:Lcom/android/compose/animation/scene/SwipeSource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Swipe(direction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/compose/animation/scene/Swipe;->direction:Lcom/android/compose/animation/scene/SwipeDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pointerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/compose/animation/scene/Swipe;->pointerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/compose/animation/scene/Swipe;->fromSource:Lcom/android/compose/animation/scene/SwipeSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
