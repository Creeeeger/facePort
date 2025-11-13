.class public final Landroidx/core/animation/AnimatorSet$2;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$anim:Landroidx/core/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/AnimatorSet;)V
    .locals 0

    iput-object p2, p0, Landroidx/core/animation/AnimatorSet$2;->val$anim:Landroidx/core/animation/AnimatorSet;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$2;->val$anim:Landroidx/core/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/AnimatorSet$Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Error: animation ended is not in the node map"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
