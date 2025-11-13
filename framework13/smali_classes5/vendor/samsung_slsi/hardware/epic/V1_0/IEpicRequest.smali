.class public interface abstract Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
.super Ljava/lang/Object;
.source "IEpicRequest.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest$Stub;,
        Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic@1.0::IEpicRequest"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 14
    return-object v0

    .line 17
    :cond_0
    nop

    .line 18
    const-string/jumbo v1, "vendor.samsung_slsi.hardware.epic@1.0::IEpicRequest"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    if-eqz v3, :cond_1

    .line 21
    move-object v0, v2

    check-cast v0, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    return-object v0

    .line 24
    :cond_1
    new-instance v3, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest$Proxy;

    invoke-direct {v3, p0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    :try_start_0
    invoke-interface {v3}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 33
    :cond_3
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 35
    :goto_1
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getService()Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const-string v0, "default"

    invoke-static {v0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->getService(Ljava/lang/String;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic@1.0::IEpicRequest"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic@1.0::IEpicRequest"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;->getService(Ljava/lang/String;Z)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist acquire_lock(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist acquire_lock_conditional(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist acquire_lock_multi_option(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist acquire_lock_option(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist hint_release(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist init(I)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist init_multi(Ljava/util/ArrayList;)Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist perf_hint(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist release_lock(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist release_lock_conditional(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist update_handle_id(Lvendor/samsung_slsi/hardware/epic/V1_0/IEpicHandle;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
