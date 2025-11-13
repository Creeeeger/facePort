.class public Lcom/samsung/android/allshare/extension/UniqueItemArray;
.super Ljava/util/ArrayList;
.source "UniqueItemArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/allshare/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist mAccessLock:Ljava/lang/Object;

.field private blacklist mCurrentItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/allshare/Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist generateKey(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist isItemContained(Lcom/samsung/android/allshare/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->generateKey(Lcom/samsung/android/allshare/Item;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 180
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/allshare/Item;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, 0x1

    return v2

    .line 182
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/allshare/Item;>;"
    :cond_0
    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist add(ILcom/samsung/android/allshare/Item;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/samsung/android/allshare/Item;

    .line 53
    if-nez p2, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/samsung/android/allshare/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 60
    :cond_1
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lcom/samsung/android/allshare/Item;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->add(ILcom/samsung/android/allshare/Item;)V

    return-void
.end method

.method public whitelist add(Lcom/samsung/android/allshare/Item;)Z
    .locals 3
    .param p1, "object"    # Lcom/samsung/android/allshare/Item;

    .line 71
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 72
    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/samsung/android/allshare/Item;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 78
    :cond_1
    monitor-exit v1

    .line 80
    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Lcom/samsung/android/allshare/Item;

    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->add(Lcom/samsung/android/allshare/Item;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    .line 123
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/samsung/android/allshare/Item;>;"
    if-nez p2, :cond_0

    .line 124
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 127
    return v1

    .line 131
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/samsung/android/allshare/Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    .line 134
    .local v2, "item":Lcom/samsung/android/allshare/Item;
    invoke-direct {p0, v2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/samsung/android/allshare/Item;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 136
    .end local v2    # "item":Lcom/samsung/android/allshare/Item;
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/samsung/android/allshare/Item;>;"
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    return v1

    .line 101
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/samsung/android/allshare/Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    .line 104
    .local v2, "item":Lcom/samsung/android/allshare/Item;
    invoke-direct {p0, v2}, Lcom/samsung/android/allshare/extension/UniqueItemArray;->isItemContained(Lcom/samsung/android/allshare/Item;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 106
    .end local v2    # "item":Lcom/samsung/android/allshare/Item;
    :cond_2
    goto :goto_0

    .line 109
    :cond_3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/UniqueItemArray;->mCurrentItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
