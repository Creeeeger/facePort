.class public final Lcom/facebook/rebound/Spring;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static ID:I


# instance fields
.field public final mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mDisplacementFromRestThreshold:D

.field public mEndValue:D

.field public final mId:Ljava/lang/String;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mRestSpeedThreshold:D

.field public mSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field public final mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

.field public mTimeAccumulator:D

.field public mWasAtRest:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "spring:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/facebook/rebound/Spring;->ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/Spring;->ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    sget-object p1, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addListener(Lcom/facebook/rebound/SpringListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAtRest()Z
    .locals 5

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    iget-wide v1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-wide v3, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, p0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeAllListeners()V
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final setAtRest()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-object p0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v1, p0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    return-void
.end method

.method public final setCurrentValue(D)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object p2, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/SpringListener;

    invoke-interface {p2, p0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->setAtRest()V

    return-void
.end method

.method public final setEndValue(D)V
    .locals 2

    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object p2, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/SpringListener;

    invoke-interface {p2, p0}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setVelocity(D)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    iget-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object p0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    return-void
.end method
