.class public interface abstract Lcom/samsung/android/smartface/ISmartFaceService;
.super Ljava/lang/Object;
.source "ISmartFaceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/ISmartFaceService$Stub;,
        Lcom/samsung/android/smartface/ISmartFaceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartface.ISmartFaceService"


# virtual methods
.method public abstract blacklist getSupportedServices()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
