.class public interface abstract Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;
.super Ljava/lang/Object;
.source "IServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResultReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
