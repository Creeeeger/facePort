.class public final Landroidx/core/animation/AnimatorSet$SeekState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mPlayTime:J

.field public mSeekingInReverse:Z

.field public final synthetic this$0:Landroidx/core/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet;)V
    .locals 2

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->this$0:Landroidx/core/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    return-void
.end method


# virtual methods
.method public final updateSeekDirection(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$SeekState;->this$0:Landroidx/core/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Cannot reverse infinite animator set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Landroidx/core/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/core/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mPlayTime:J

    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet$SeekState;->mSeekingInReverse:Z

    :cond_2
    return-void
.end method
