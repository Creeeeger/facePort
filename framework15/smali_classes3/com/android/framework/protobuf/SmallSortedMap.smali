.class Lcom/android/framework/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$Entry;,
        Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private blacklist entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private blacklist isImmutable:Z

.field private volatile blacklist lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.DescendingEntrySet;"
        }
    .end annotation
.end field

.field private volatile blacklist lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final blacklist maxArraySize:I

.field private blacklist overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/framework/protobuf/SmallSortedMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/android/framework/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist binarySearchInArray(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v1, 0x2

    neg-int v3, v3

    return v3

    :cond_0
    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_0
    if-gt v0, v1, :cond_4

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private blacklist checkMutable()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private blacklist ensureEntryArrayMutable()V
    .locals 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private blacklist getOverflowEntriesMutable()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static blacklist newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method static blacklist newInstanceForTest(I)Lcom/android/framework/protobuf/SmallSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/SmallSortedMap;-><init>(I)V

    return-object v0
.end method

.method private blacklist removeArrayEntryAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method blacklist descendingEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/SmallSortedMap;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v5

    if-eq v3, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v1, v5}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eq v3, v2, :cond_6

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_6
    return v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getArrayEntryAt(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public blacklist getNumArrayEntries()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getNumOverflowEntries()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getOverflowEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method blacklist getOverflowEntriesDescending()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    return v0
.end method

.method public blacklist isImmutable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public blacklist makeImmutable()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_2

    nop

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    nop

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    :cond_2
    return-void
.end method

.method public blacklist put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v1, p2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    iget v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    iget v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api size()I
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
