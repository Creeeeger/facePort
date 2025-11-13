.class public final Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

.field public final synthetic $reason:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$1;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iput p2, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$1;->$reason:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$1;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$1;->$reason:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->onKeyChanged(ILjava/lang/Object;)V

    return-void
.end method
