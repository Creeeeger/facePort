.class public final Landroidx/core/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p1}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/core/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    const/4 v4, 0x1

    if-nez p0, :cond_1

    iget p0, p2, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget p1, p1, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int p2, p0, p1

    if-ne p2, v4, :cond_0

    sub-int v4, p1, p0

    goto :goto_0

    :cond_0
    sub-int v4, p0, p1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    cmp-long p2, v2, p0

    const/4 v5, -0x1

    if-nez p2, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    cmp-long p0, v0, p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sub-long/2addr v0, v2

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_2

    :goto_0
    return v4
.end method
