.class final Lcom/android/framework/protobuf/FieldSet$Builder;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist fields:Lcom/android/framework/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist hasLazyField:Z

.field private blacklist hasNestedBuilders:Z

.field private blacklist isMutable:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/FieldSet$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    return-void
.end method

.method private blacklist buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->emptySet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    iget-boolean v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v2, v0}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V

    :cond_1
    new-instance v0, Lcom/android/framework/protobuf/FieldSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/FieldSet$1;)V

    iget-boolean v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/FieldSet;->access$302(Lcom/android/framework/protobuf/FieldSet;Z)Z

    return-object v0
.end method

.method private blacklist ensureIsMutable()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    iput-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    :cond_0
    return-void
.end method

.method public static blacklist fromFieldSet(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/FieldSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/FieldSet$Builder;

    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->access$300(Lcom/android/framework/protobuf/FieldSet;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    return-object v0
.end method

.method private blacklist mergeFromField(Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    instance-of v3, v2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/MessageLite$Builder;

    move-object v4, v1

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v3, v4}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    goto :goto_1

    :cond_5
    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v3, v4}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private static blacklist replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    if-ne v0, p1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    :cond_1
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeated field should contains a List but actually contains type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    return-object p1
.end method

.method private static blacklist replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static blacklist replaceBuilders(Ljava/util/Map$Entry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/framework/protobuf/FieldSet;->access$500(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :goto_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Lcom/android/framework/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    :cond_0
    return-void
.end method

.method public blacklist getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public blacklist getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method blacklist getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public blacklist getRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->getRepeatedFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method blacklist getRepeatedFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRepeatedFieldCount(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedFieldCount() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isInitialized()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    :goto_2
    iput-boolean v5, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_3
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    :cond_5
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
