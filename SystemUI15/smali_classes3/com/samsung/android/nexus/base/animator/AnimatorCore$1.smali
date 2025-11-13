.class public final Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-wide v1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    sub-long v1, p1, v1

    iget-wide v3, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x1

    if-ltz v1, :cond_5

    iput-wide p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    iget p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-object p1, p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-object p2, p2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/nexus/base/animator/Animator;

    iget-boolean p2, p2, Lcom/samsung/android/nexus/base/animator/Animator;->mAlive:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-object p2, p2, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-object p1, p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

    if-eqz p0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidatorInstance:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :catch_0
    :cond_6
    :goto_3
    return-void
.end method
