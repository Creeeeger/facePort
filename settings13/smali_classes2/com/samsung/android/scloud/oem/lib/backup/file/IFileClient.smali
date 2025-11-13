.class public interface abstract Lcom/samsung/android/scloud/oem/lib/backup/file/IFileClient;
.super Ljava/lang/Object;
.source "IFileClient.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;


# virtual methods
.method public abstract backupFileMetaAndRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientHelper;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "helper"
        }
    .end annotation
.end method

.method public abstract getFileList(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestoreFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "backupFilePath"
        }
    .end annotation
.end method

.method public abstract transactionBegin(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "record",
            "transactionKey"
        }
    .end annotation
.end method

.method public abstract transactionEnd(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "record",
            "transactionKey"
        }
    .end annotation
.end method
