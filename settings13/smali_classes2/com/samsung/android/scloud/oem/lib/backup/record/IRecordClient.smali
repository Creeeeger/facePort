.class public interface abstract Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;
.super Ljava/lang/Object;
.source "IRecordClient.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;


# virtual methods
.method public abstract addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
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

.method public abstract backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "helper",
            "uploadList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "recordReader",
            "totalCount",
            "helper"
        }
    .end annotation
.end method
