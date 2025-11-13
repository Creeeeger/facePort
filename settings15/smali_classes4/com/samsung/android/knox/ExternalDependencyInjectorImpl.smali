.class public Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/knox/ExternalDependencyInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public storageVolumeGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
