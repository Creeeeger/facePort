.class public final Landroidx/core/animation/AnimatorSet$AnimationEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEvent:I

.field public final mNode:Landroidx/core/animation/AnimatorSet$Node;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iput p2, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 5

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget p0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez p0, :cond_0

    iget-wide v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    iget-wide v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {p0}, Landroidx/core/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v3, v1

    :goto_0
    return-wide v3

    :cond_2
    iget-wide v0, v0, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v0, :cond_0

    const-string v0, "start"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string v0, "end"

    :goto_0
    const-string v1, " "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$AnimationEvent;->mNode:Landroidx/core/animation/AnimatorSet$Node;

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
