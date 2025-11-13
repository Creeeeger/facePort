.class public final Lcom/facebook/rebound/SpringChain;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# static fields
.field public static id:I

.field public static final registry:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field public final mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public mControlSpringIndex:I

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field public final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public final mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/rebound/SpringConfigRegistry;->INSTANCE:Lcom/facebook/rebound/SpringConfigRegistry;

    sput-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/SpringChain;->id:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x46

    const/16 v1, 0xa

    const/16 v2, 0x28

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    int-to-double v0, p1

    int-to-double p1, p2

    new-instance v2, Lcom/facebook/rebound/SpringConfig;

    invoke-static {v0, v1}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p1

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v2, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    int-to-double p1, p3

    int-to-double p3, p4

    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    invoke-static {p1, p2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "main spring "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    invoke-virtual {p1, v2, p0}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "attachment spring "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)V

    return-void
.end method

.method public static create()Lcom/facebook/rebound/SpringChain;
    .locals 5

    new-instance v0, Lcom/facebook/rebound/SpringChain;

    const/16 v1, 0x96

    const/16 v2, 0x14

    const/16 v3, 0xc8

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {p0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {p0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public final onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/rebound/SpringListener;

    invoke-interface {p0, p1}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    iget v2, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    move v2, v0

    :goto_0
    if-le v0, v3, :cond_3

    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    iget-object v4, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_3
    if-le v2, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/rebound/Spring;

    iget-object v0, p1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    invoke-virtual {p0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_4
    invoke-interface {v1, p1}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    return-void
.end method

.method public final setControlSpringIndex()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    iget-object v0, v0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "springConfig is required"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    iget-object v3, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    if-eqz v3, :cond_2

    iput-object v3, v1, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    iget-object p0, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    if-eqz p0, :cond_4

    iput-object p0, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
