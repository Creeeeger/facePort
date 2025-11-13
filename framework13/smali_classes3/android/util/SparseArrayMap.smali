.class public Landroid/util/SparseArrayMap;
.super Ljava/lang/Object;
.source "SparseArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/SparseArrayMap$TriConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 40
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 42
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public blacklist clear()V
    .locals 2

    .line 49
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist contains(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)Z"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist delete(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 79
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 80
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist delete(I)V
    .locals 1
    .param p1, "key"    # I

    .line 61
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 62
    return-void
.end method

.method public blacklist deleteAt(I)V
    .locals 1
    .param p1, "keyIndex"    # I

    .line 69
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 70
    return-void
.end method

.method public blacklist forEach(Landroid/util/SparseArrayMap$TriConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArrayMap$TriConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Landroid/util/SparseArrayMap$TriConsumer;, "Landroid/util/SparseArrayMap$TriConsumer<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "iIdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 194
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 195
    .local v1, "i":I
    iget-object v2, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 196
    .local v2, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "kIdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 197
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/SparseArrayMap$TriConsumer;->accept(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 193
    .end local v1    # "i":I
    .end local v2    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v3    # "kIdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    .end local v0    # "iIdx":I
    :cond_1
    return-void
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 171
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 172
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 173
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 172
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 170
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 91
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 92
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 104
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 106
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 110
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    :cond_0
    return-object p3
.end method

.method public blacklist indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 115
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public blacklist indexOfKey(ILjava/lang/Object;)I
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)I"
        }
    .end annotation

    .line 124
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 125
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 128
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 133
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist keyAt(II)Ljava/lang/Object;
    .locals 1
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist numElementsForKey(I)I
    .locals 2
    .param p1, "key"    # I

    .line 149
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 150
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blacklist numElementsForKeyAt(I)I
    .locals 2
    .param p1, "keyIndex"    # I

    .line 158
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 159
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public blacklist numMaps()I
    .locals 1

    .line 144
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public blacklist valueAt(II)Ljava/lang/Object;
    .locals 1
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 165
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
