.class public interface abstract Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/IHwInterface;


# direct methods
.method public static getService()Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
    .locals 8

    const-string v0, "default"

    const-string v1, "android.hardware.dumpstate@1.0::IDumpstateDevice"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v4, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v4, Landroid/os/HwParcel;

    invoke-direct {v4}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v3, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v6, 0xf43484e

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v4, v7}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v4}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v4}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/HwParcel;->release()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method
