.class public final Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/Object;

.field public final synthetic $observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

.field public final synthetic $r8$classId:I

.field public final synthetic $reason:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iput-object p2, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$key:Ljava/lang/Object;

    iput p3, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$reason:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/lang/Object;IB)V
    .locals 0

    iput p3, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iput-object p2, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$key:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$key:Ljava/lang/Object;

    iget p0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$reason:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->onKeyChanged(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$key:Ljava/lang/Object;

    iget p0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$reason:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->onKeyChanged(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$observer:Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    iget-object v1, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$key:Ljava/lang/Object;

    iget p0, p0, Lcom/android/settingslib/datastore/KeyedDataObservable$notifyChange$2;->$reason:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->onKeyChanged(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
