.class public final Lcom/samsung/android/nexus/base/animator/AnimatorCore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatorList:Ljava/util/List;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

.field public final mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

.field public mFrameRate:I

.field public mFrameStartTime:J

.field public mFrameTime:J

.field public mRenderMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;-><init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    const-string v1, "AnimatorCore"

    const-string v2, "AnimatorCore() : create AnimatorCore"

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    iput v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    add-int/lit8 v1, v1, 0x1

    const v2, 0x3b9aca00

    div-int/2addr v2, v1

    int-to-long v1, v2

    iput-wide v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final startAnimator()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAnimator() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimatorCore"

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
