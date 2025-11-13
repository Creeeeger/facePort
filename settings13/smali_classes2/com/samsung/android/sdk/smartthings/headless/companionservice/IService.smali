.class public interface abstract Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;
.super Ljava/lang/Object;
.source "IService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(ILjava/lang/String;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IServiceCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
