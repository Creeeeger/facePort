.class Lcom/google/common/collect/HashBiMap$Inverse;
.super Ljava/util/AbstractMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TV;TK;>;",
        "Lcom/google/common/collect/BiMap;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final forward:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public transient inverseEntrySet:Lcom/google/common/collect/HashBiMap$InverseEntrySet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    iput-object p0, p1, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->inverseEntrySet:Lcom/google/common/collect/HashBiMap$InverseEntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$InverseEntrySet;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/HashBiMap$View;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->inverseEntrySet:Lcom/google/common/collect/HashBiMap$InverseEntrySet;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final inverse()Lcom/google/common/collect/BiMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Lcom/google/common/collect/HashBiMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Lcom/google/common/collect/HashBiMap$KeySet;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->forward:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
