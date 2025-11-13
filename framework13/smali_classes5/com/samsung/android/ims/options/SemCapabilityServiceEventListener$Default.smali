.class public Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Default;
.super Ljava/lang/Object;
.source "SemCapabilityServiceEventListener.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V
    .locals 0
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemImsUri;
    .param p2, "capa"    # Lcom/samsung/android/ims/options/SemCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/ims/options/SemCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/util/SemImsUri;>;"
    .local p2, "capaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ims/options/SemCapabilities;>;"
    return-void
.end method

.method public blacklist onOwnCapabilitiesChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
