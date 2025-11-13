.class public abstract Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final toBackupRestoreEntity(Lcom/android/settingslib/datastore/BackupRestoreFileStorage;)Lcom/android/settingslib/datastore/BackupRestoreEntity;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/datastore/BackupRestoreFileArchiverKt$toBackupRestoreEntity$1;-><init>(Lcom/android/settingslib/datastore/BackupRestoreFileStorage;)V

    return-object v0
.end method
