.class public interface abstract Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;
.super Ljava/lang/Object;
.source "ISCloudQBNRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuickBackupListener"
.end annotation


# virtual methods
.method public abstract complete(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSuccess"
        }
    .end annotation
.end method

.method public abstract onProgress(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proc",
            "total"
        }
    .end annotation
.end method
