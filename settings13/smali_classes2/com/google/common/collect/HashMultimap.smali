.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/HashMultimapGwtSerializationDependencies;
.source "HashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/HashMultimapGwtSerializationDependencies<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashMultimap;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/google/common/collect/Platform;->newHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashMultimapGwtSerializationDependencies;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 57
    iput p1, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 109
    iput p2, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x2

    .line 142
    iput v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 143
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0xc

    .line 144
    invoke-static {v1}, Lcom/google/common/collect/Platform;->newHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->setMap(Ljava/util/Map;)V

    .line 146
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 136
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method createCollection()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 126
    iget p0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {p0}, Lcom/google/common/collect/Platform;->newHashSetWithExpectedSize(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic size()I
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
