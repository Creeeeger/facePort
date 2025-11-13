.class public interface abstract Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;
.super Ljava/lang/Object;
.source "SamsungCloudRPCCallback.java"


# virtual methods
.method public abstract onComplete(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "status"
        }
    .end annotation
.end method

.method public abstract onProgress(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "progress"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authority"
        }
    .end annotation
.end method
