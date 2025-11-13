.class public Lcom/samsung/android/ims/options/SemImsCapabilityService$Default;
.super Ljava/lang/Object;
.source "SemImsCapabilityService.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemImsCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemImsCapabilityService;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "delay"    # Z
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)Ljava/lang/String;
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterListener(Ljava/lang/String;I)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
