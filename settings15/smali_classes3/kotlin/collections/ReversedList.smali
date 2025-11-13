.class public final Lkotlin/collections/ReversedList;
.super Lkotlin/collections/AbstractMutableList;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final delegate:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    iput-object p1, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->access$reversePositionIndex(ILjava/util/List;)I

    move-result p0

    invoke-interface {v0, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->access$reverseElementIndex(ILjava/util/List;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lkotlin/collections/ReversedList$listIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/collections/ReversedList$listIterator$1;-><init>(Lkotlin/collections/ReversedList;I)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lkotlin/collections/ReversedList$listIterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/collections/ReversedList$listIterator$1;-><init>(Lkotlin/collections/ReversedList;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lkotlin/collections/ReversedList$listIterator$1;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/ReversedList$listIterator$1;-><init>(Lkotlin/collections/ReversedList;I)V

    return-object v0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->access$reverseElementIndex(ILjava/util/List;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ReversedList;->delegate:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->access$reverseElementIndex(ILjava/util/List;)I

    move-result p0

    invoke-interface {v0, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
