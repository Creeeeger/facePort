.class public abstract Lkotlin/collections/AbstractMutableMap;
.super Ljava/util/AbstractMap;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public abstract getEntries()Ljava/util/Set;
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    return p0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 0

    invoke-super {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getSize()I

    move-result p0

    return p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
