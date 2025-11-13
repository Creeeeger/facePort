.class public Lcom/samsung/android/smartface/ISmartFaceService$Default;
.super Ljava/lang/Object;
.source "ISmartFaceService.java"

# interfaces
.implements Lcom/samsung/android/smartface/ISmartFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/ISmartFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedServices()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/smartface/ISmartFaceClient;
    .param p2, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    .locals 0
    .param p1, "client"    # Lcom/samsung/android/smartface/ISmartFaceClient;
    .param p2, "serviceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "client"    # Lcom/samsung/android/smartface/ISmartFaceClient;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    .locals 0
    .param p1, "client"    # Lcom/samsung/android/smartface/ISmartFaceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    .locals 0
    .param p1, "client"    # Lcom/samsung/android/smartface/ISmartFaceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
