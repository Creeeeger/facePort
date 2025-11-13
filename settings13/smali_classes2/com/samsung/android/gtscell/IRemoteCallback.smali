.class public interface abstract Lcom/samsung/android/gtscell/IRemoteCallback;
.super Ljava/lang/Object;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/IRemoteCallback$Stub;,
        Lcom/samsung/android/gtscell/IRemoteCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract sendResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
