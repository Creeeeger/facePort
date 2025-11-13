.class public Landroid/media/IResourceManagerService$Default;
.super Ljava/lang/Object;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addMediaInfo(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "mediaInfo"    # [Lcom/samsung/android/media/MediaInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist addResource(IIJLandroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist config([Landroid/media/MediaResourcePolicyParcel;)V
    .locals 0
    .param p1, "policies"    # [Landroid/media/MediaResourcePolicyParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist createResourceObserver(Lcom/samsung/android/media/IResourceManagerObserverClient;)Lcom/samsung/android/media/IResourceManagerObserver;
    .locals 1
    .param p1, "client"    # Lcom/samsung/android/media/IResourceManagerObserverClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRemainedFrameRateFor(Ljava/lang/String;II)F
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedFrameRateFor(Ljava/lang/String;II)F
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markClientForPendingRemoval(IJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "clientId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist overridePid(II)V
    .locals 0
    .param p1, "originalPid"    # I
    .param p2, "newPid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V
    .locals 0
    .param p1, "client"    # Landroid/media/IResourceManagerClient;
    .param p2, "pid"    # I
    .param p3, "procState"    # I
    .param p4, "oomScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist reclaimResource(I[Landroid/media/MediaResourceParcel;)Z
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reclaimResourcesFromClientsPendingRemoval(I)V
    .locals 0
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist removeClient(IJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "clientId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist removeResource(IJ[Landroid/media/MediaResourceParcel;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "clientId"    # J
    .param p4, "resources"    # [Landroid/media/MediaResourceParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist sendCapacityError(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "mediaInfo"    # [Lcom/samsung/android/media/MediaInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public blacklist setCodecState(IIJLandroid/media/IResourceManagerClient;I)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "clientId"    # J
    .param p5, "client"    # Landroid/media/IResourceManagerClient;
    .param p6, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method
