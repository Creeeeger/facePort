.class public abstract Lcom/samsung/vekit/Animation/Animation;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Animation.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Animation/Animation$AnimationStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Listener/AnimationStatusListener;"
    }
.end annotation


# instance fields
.field protected blacklist animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

.field protected blacklist duration:J

.field protected blacklist enableRollback:Z

.field protected blacklist firstTarget:Lcom/samsung/vekit/Common/Object/Element;

.field protected blacklist fromLoop:I

.field protected blacklist keyFrameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected blacklist listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field protected blacklist repeatCount:I

.field protected blacklist rollbackValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected blacklist startTime:J

.field protected blacklist toLoop:I


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/AnimationType;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/samsung/vekit/Animation/Animation;->setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private blacklist calculateDuration()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    iget-object v3, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v5}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    iget v1, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    return-void
.end method

.method static synthetic blacklist lambda$sortKeyFrameList$0(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist sortKeyFrameList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/vekit/Animation/Animation$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/vekit/Animation/Animation$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public blacklist addKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    return-object p0
.end method

.method public blacklist clearKeyFrameList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    return-void
.end method

.method public blacklist getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    return-object v0
.end method

.method public blacklist getBezierControlPoint()Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->duration:J

    return-wide v0
.end method

.method public blacklist getFirstKeyFrame()Lcom/samsung/vekit/Common/Object/KeyFrame;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Object/KeyFrame;

    return-object v0
.end method

.method public blacklist getFrom()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFromLoop()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    return v0
.end method

.method public blacklist getInterpolationType()Lcom/samsung/vekit/Common/Type/InterpolationType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastKeyFrame()Lcom/samsung/vekit/Common/Object/KeyFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid KeyFrame size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    return-object v1
.end method

.method public blacklist getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    return v0
.end method

.method public blacklist getRollbackValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    return-wide v0
.end method

.method public blacklist getTarget()Lcom/samsung/vekit/Common/Object/Element;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object v0
.end method

.method public blacklist getTo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getToLoop()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    return v0
.end method

.method public blacklist isEnableRollback()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onAnimationCanceled(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationCanceled(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationFinished(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationStarted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onAnimationUpdated(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnimationStatusListener;->onAnimationUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist removeKeyFrame(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyFrame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rollback()V
    .locals 0

    return-void
.end method

.method protected blacklist setAnimationType(Lcom/samsung/vekit/Common/Type/AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->animationType:Lcom/samsung/vekit/Common/Type/AnimationType;

    return-void
.end method

.method public blacklist setBezierControlPoint(FFFF)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/vekit/Common/Object/KeyFrame;->setBezierControlPoint(FFFF)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist setDuration(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setFrom(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)Lcom/samsung/vekit/Animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Common/Object/KeyFrame;

    invoke-virtual {v1, p1}, Lcom/samsung/vekit/Common/Object/KeyFrame;->setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist setKeyFrame(Lcom/samsung/vekit/Common/Object/KeyFrame;Lcom/samsung/vekit/Common/Object/KeyFrame;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    return-object p0
.end method

.method public blacklist setKeyFrameList(Ljava/util/ArrayList;)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/KeyFrame<",
            "TT;>;>;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/vekit/Animation/Animation;->keyFrameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->sortKeyFrameList()V

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    return-object p0
.end method

.method public blacklist setListener(Lcom/samsung/vekit/Listener/AnimationStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->listener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    return-void
.end method

.method public blacklist setRepeat(III)Lcom/samsung/vekit/Animation/Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->fromLoop:I

    invoke-virtual {p0}, Lcom/samsung/vekit/Animation/Animation;->getKeyFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/vekit/Animation/Animation;->toLoop:I

    iput p3, p0, Lcom/samsung/vekit/Animation/Animation;->repeatCount:I

    invoke-direct {p0}, Lcom/samsung/vekit/Animation/Animation;->calculateDuration()V

    return-object p0
.end method

.method public blacklist setRollbackValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Animation/Animation;->enableRollback:Z

    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->rollbackValue:Ljava/lang/Object;

    return-void
.end method

.method public blacklist setStartTime(J)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/vekit/Animation/Animation;->startTime:J

    return-object p0
.end method

.method public blacklist setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            ")",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Animation/Animation;->firstTarget:Lcom/samsung/vekit/Common/Object/Element;

    return-object p0
.end method

.method public blacklist setTo(Ljava/lang/Object;)Lcom/samsung/vekit/Animation/Animation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public blacklist updateTargetValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
