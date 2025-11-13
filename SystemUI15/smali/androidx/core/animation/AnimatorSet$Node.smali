.class public final Landroidx/core/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mAnimation:Landroidx/core/animation/Animator;

.field public mChildNodes:Ljava/util/ArrayList;

.field public mEndTime:J

.field public mEnded:Z

.field public mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

.field public mParents:Ljava/util/ArrayList;

.field public mParentsAdded:Z

.field public mSiblings:Ljava/util/ArrayList;

.field public mStartTime:J

.field public mTotalDuration:J


# direct methods
.method public constructor <init>(Landroidx/core/animation/Animator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mLatestParent:Landroidx/core/animation/AnimatorSet$Node;

    iput-boolean v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mParentsAdded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mStartTime:J

    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mTotalDuration:J

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    return-void
.end method


# virtual methods
.method public final addParent(Landroidx/core/animation/AnimatorSet$Node;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/core/animation/AnimatorSet$Node;->addParent(Landroidx/core/animation/AnimatorSet$Node;)V

    :cond_2
    return-void
.end method

.method public final addSibling(Landroidx/core/animation/AnimatorSet$Node;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/core/animation/AnimatorSet$Node;->addSibling(Landroidx/core/animation/AnimatorSet$Node;)V

    :cond_1
    return-void
.end method

.method public final clone()Landroidx/core/animation/AnimatorSet$Node;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/AnimatorSet$Node;

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    invoke-virtual {v1}, Landroidx/core/animation/Animator;->clone()Landroidx/core/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mAnimation:Landroidx/core/animation/Animator;

    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/AnimatorSet$Node;->clone()Landroidx/core/animation/AnimatorSet$Node;

    move-result-object p0

    return-object p0
.end method
