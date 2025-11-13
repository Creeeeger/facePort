.class public final Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/datastore/SharedPreferencesStorage;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/datastore/SharedPreferencesStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;->this$0:Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;->this$0:Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->$$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

    iget-object p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable;->observers:Ljava/util/WeakHashMap;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-entries>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    iget-object p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable;->keyedObservers:Landroidx/collection/MutableScatterMap;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable;->keyedObservers:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p2}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/WeakHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit p1

    if-nez p0, :cond_1

    new-array p0, v1, [Ljava/util/Map$Entry;

    :cond_1
    array-length p1, v0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v4, p2, v6, v7}, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;-><init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/lang/Object;IB)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length p1, p0

    :goto_2
    if-ge v1, p1, :cond_4

    aget-object v0, p0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v2, p2, v4, v5}, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;-><init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/lang/Object;IB)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_3
    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;->this$0:Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->notifyChange(I)V

    :cond_4
    return-void
.end method
