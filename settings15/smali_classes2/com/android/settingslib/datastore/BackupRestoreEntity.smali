.class public interface abstract Lcom/android/settingslib/datastore/BackupRestoreEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract backup(Lcom/android/settingslib/datastore/BackupContext;Ljava/io/OutputStream;)Lcom/android/settingslib/datastore/EntityBackupResult;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract restore(Lcom/android/settingslib/datastore/RestoreContext;Ljava/io/InputStream;)V
.end method
