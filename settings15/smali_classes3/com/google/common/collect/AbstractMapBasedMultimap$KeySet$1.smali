.class public final Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public entry:Ljava/lang/Object;

.field public final synthetic this$1:Ljava/lang/Object;

.field public final val$entryIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->refreshIfEmpty()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Lcom/google/common/collect/AbstractSetMultimap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    check-cast v0, Ljava/util/Set;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    new-instance p0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0$1:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget v1, v0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;->removeIfEmpty()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v1, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
