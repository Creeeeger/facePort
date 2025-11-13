.class public final Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/List;


# instance fields
.field public final mInputEvents:Ljava/util/List;

.field public final mMaxAgeMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mMaxAgeMs:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/view/InputEvent;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/view/InputEvent;

    iget-object v0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->ejectOldEvents()V

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->ejectOldEvents()V

    return p1
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final ejectOldEvents()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v1

    :cond_1
    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    iget-wide v7, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mMaxAgeMs:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;->remove()V

    invoke-virtual {v4}, Landroid/view/InputEvent;->recycle()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputEvent;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;-><init>(Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer$Iter;-><init>(Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputEvent;

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/view/InputEvent;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
