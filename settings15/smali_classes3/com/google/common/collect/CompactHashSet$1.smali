.class public final Lcom/google/common/collect/CompactHashSet$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public currentIndex:I

.field public expectedMetadata:I

.field public indexToRemove:I

.field public final synthetic this$0:Lcom/google/common/collect/CompactHashSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/CompactHashSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v0, p1, Lcom/google/common/collect/CompactHashSet;->metadata:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedMetadata:I

    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v0, v0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedMetadata:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v1, v1, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v0, v0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedMetadata:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(Ljava/lang/Object;Z)V

    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedMetadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedMetadata:I

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->requireElements()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/CompactHashSet$1;->currentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
