.class public Lcom/facebook/rebound/BaseSpringSystem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActiveSprings:Ljava/util/Set;

.field public mIdle:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mSpringLooper:Lcom/facebook/rebound/SpringLooper;

.field public final mSpringRegistry:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/SpringLooper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    iput-object p0, p1, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "springLooper is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final activateSpring(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    iget-object p0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {p0}, Lcom/facebook/rebound/SpringLooper;->start()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "springId "

    const-string v1, " does not reference a registered spring"

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createSpring()Lcom/facebook/rebound/Spring;
    .locals 3

    new-instance v0, Lcom/facebook/rebound/Spring;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/Spring;-><init>(Lcom/facebook/rebound/BaseSpringSystem;)V

    iget-object v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "spring is already registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
