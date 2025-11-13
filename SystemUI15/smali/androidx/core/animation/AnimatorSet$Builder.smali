.class public final Landroidx/core/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

.field public final synthetic this$0:Landroidx/core/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V
    .locals 1

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$Builder;->this$0:Landroidx/core/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    invoke-virtual {p1, p2}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

    return-void
.end method
