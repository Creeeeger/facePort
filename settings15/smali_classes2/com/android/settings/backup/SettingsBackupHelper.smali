.class public Lcom/android/settings/backup/SettingsBackupHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v3, v3, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    instance-of v5, v3, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    if-eqz v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4, v3}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/settingslib/datastore/BackupRestoreFileArchiver;

    iget-object v0, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->application:Landroid/app/Application;

    const-string v3, "file_archiver"

    invoke-direct {v2, v0, v1, v3}, Lcom/android/settingslib/datastore/BackupRestoreFileArchiver;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/settingslib/datastore/BackupRestoreFileArchiver;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onRestoreFinished()V
    .locals 4

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v1, v1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    instance-of v2, v1, Lcom/android/settingslib/datastore/KeyedObservable;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/settingslib/datastore/KeyedObservable;

    invoke-interface {v1, v3}, Lcom/android/settingslib/datastore/KeyedObservable;->notifyChange(I)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/settingslib/datastore/Observable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settingslib/datastore/Observable;

    invoke-interface {v1, v3}, Lcom/android/settingslib/datastore/Observable;->notifyChange(I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->updateRestoredShortcuts(Landroid/content/Context;)V

    return-void
.end method
