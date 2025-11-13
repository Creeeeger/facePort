.class public final Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Landroidx/core/animation/AnimationHandler;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/core/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;->this$0:Landroidx/core/animation/AnimationHandler;

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2, p1, p2}, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    iget-object p2, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Landroidx/core/animation/AnimationHandler;->mListDirty:Z

    :cond_4
    iget-object p1, p0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p0, p0, Landroidx/core/animation/AnimationHandler;->mProvider:Landroidx/core/animation/AnimationHandler$AnimationFrameCallbackProvider;

    check-cast p0, Landroidx/core/animation/AnimationHandler$FrameCallbackProvider16;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    return-void
.end method
