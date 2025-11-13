.class public final Lcom/google/common/collect/Sets$3$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final itr:Ljava/util/Iterator;

.field public next:Ljava/lang/Object;

.field public state:Lcom/google/common/collect/AbstractIterator$State;

.field public final synthetic this$0:Lcom/google/common/collect/Sets$3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Sets$3$1;->this$0:Lcom/google/common/collect/Sets$3;

    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    iget-object p1, p1, Lcom/google/common/collect/Sets$3;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    iput-object v1, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/collect/Sets$3$1;->this$0:Lcom/google/common/collect/Sets$3;

    iget-object v3, v3, Lcom/google/common/collect/Sets$3;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/Sets$3$1;->next:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    return v2

    :cond_3
    return v4

    :cond_4
    return v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$3$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/Sets$3$1;->state:Lcom/google/common/collect/AbstractIterator$State;

    iget-object v0, p0, Lcom/google/common/collect/Sets$3$1;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Sets$3$1;->next:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
