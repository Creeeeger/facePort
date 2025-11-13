.class public abstract Landroid/companion/CompanionDeviceService;
.super Landroid/app/Service;
.source "CompanionDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceService$Stub;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CDM_CompanionDeviceService"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.companion.CompanionDeviceService"


# instance fields
.field private final blacklist mRemote:Landroid/companion/CompanionDeviceService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/companion/CompanionDeviceService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-void
.end method


# virtual methods
.method public final whitelist attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, v2}, Landroid/companion/CompanionDeviceManager;->attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public final whitelist detachSystemDataTransport(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V

    return-void
.end method

.method public final blacklist dispatchMessageToSystem(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "CDM_CompanionDeviceService"

    const-string v1, "Replaced by attachSystemDataTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceService;->onBindCompanionDeviceService(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.companion.CompanionDeviceService): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBindCompanionDeviceService(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public whitelist onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist onDeviceAppeared(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist onDeviceDisappeared(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .locals 0

    return-void
.end method

.method public blacklist onMessageDispatchedFromSystem(II[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "CDM_CompanionDeviceService"

    const-string v1, "Replaced by attachSystemDataTransport"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
