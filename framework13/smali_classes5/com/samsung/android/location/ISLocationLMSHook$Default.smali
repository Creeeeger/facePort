.class public Lcom/samsung/android/location/ISLocationLMSHook$Default;
.super Ljava/lang/Object;
.source "ISLocationLMSHook.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationLMSHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationLMSHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHWGeofence()Landroid/location/IGpsGeofenceHardware;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidForeground(I)Z
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "isRequest"    # Z
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;
    .param p6, "isSingleshot"    # Z
    .param p7, "callbackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
