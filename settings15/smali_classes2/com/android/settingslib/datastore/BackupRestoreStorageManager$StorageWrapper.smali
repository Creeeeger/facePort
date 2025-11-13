.class public final Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0002\u0008\u0081\u0004\u0018\u0000\u00a8\u0006\u0001"
    }
    d2 = {
        "com/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper",
        "frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

.field public final synthetic this$0:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager;Lcom/android/settingslib/datastore/BackupRestoreStorage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->this$0:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    iput-object p2, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    instance-of v0, p2, Lcom/android/settingslib/datastore/KeyedObservable;

    const-string v1, "access$getExecutor$p(...)"

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/settingslib/datastore/KeyedObservable;

    iget-object p1, p1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/android/settingslib/datastore/KeyedObservable;->addObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/settingslib/datastore/Observable;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/settingslib/datastore/Observable;

    iget-object p1, p1, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/android/settingslib/datastore/Observable;->addObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement either KeyedObservable or Observable"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onKeyChanged(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    invoke-virtual {v0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, " key="

    const-string v3, "BackupRestoreStorage"

    if-ne p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Notify BackupManager dataChanged ignored for restore: storage="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Notify BackupManager dataChanged: storage="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/backup/BackupManager;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->this$0:Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->application:Landroid/app/Application;

    invoke-direct {p1, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    :goto_0
    return-void
.end method
