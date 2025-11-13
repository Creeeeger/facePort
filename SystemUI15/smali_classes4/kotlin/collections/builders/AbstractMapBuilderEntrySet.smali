.class public abstract Lkotlin/collections/builders/AbstractMapBuilderEntrySet;
.super Lkotlin/collections/AbstractMutableSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->containsEntry(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public abstract containsEntry(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->remove(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public bridge remove(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
