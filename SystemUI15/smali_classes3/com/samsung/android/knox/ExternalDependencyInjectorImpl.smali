.class public Lcom/samsung/android/knox/ExternalDependencyInjectorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
