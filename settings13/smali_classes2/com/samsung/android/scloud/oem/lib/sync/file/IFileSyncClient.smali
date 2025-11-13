.class public interface abstract Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;
.super Ljava/lang/Object;
.source "IFileSyncClient.java"


# virtual methods
.method public abstract createLocal(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "dataVersion",
            "syncKey",
            "timestamp",
            "content",
            "arrayDownloadAttFileMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract deleteLocal(Landroid/content/Context;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "localId"
        }
    .end annotation
.end method

.method public abstract getAttachmentFileInfo(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/FileInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "dataVersion",
            "localId"
        }
    .end annotation
.end method

.method public abstract getLocalChange(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "dataVersion",
            "localId",
            "toUploadAttFileList",
            "outputFDMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getLocalItems(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "syncKeys",
            "timestamp",
            "tags",
            "accountType",
            "accountName",
            "isColdStart"
        }
    .end annotation
.end method

.method public abstract isColdStartable(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract isComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "localId",
            "syncKey",
            "timestamp",
            "rCode"
        }
    .end annotation
.end method

.method public abstract prepareToSync(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract updateLocal(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "dataVersion",
            "localId",
            "syncKey",
            "timestamp",
            "content",
            "arrayDownloadAttFileMap",
            "toDeleteAttFileList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
