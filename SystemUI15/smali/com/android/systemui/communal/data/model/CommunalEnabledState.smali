.class public final Lcom/android/systemui/communal/data/model/CommunalEnabledState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final disabledReasons:Ljava/util/EnumSet;


# direct methods
.method private synthetic constructor <init>(Ljava/util/EnumSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    return-void
.end method

.method public static final synthetic box-impl(Ljava/util/EnumSet;)Lcom/android/systemui/communal/data/model/CommunalEnabledState;
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/data/model/CommunalEnabledState;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/communal/data/model/DisabledReason;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/systemui/communal/data/model/DisabledReason;

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    instance-of v0, p1, Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    iget-object p1, p1, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    iget-object p1, p1, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v1, v0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/communal/data/model/DisabledReason;->getLoggingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    sget-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v1, v0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :goto_0
    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-virtual {v0}, Lcom/android/systemui/communal/data/model/DisabledReason;->getLoggingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->size()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->disabledReasons:Ljava/util/EnumSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunalEnabledState(disabledReasons="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
