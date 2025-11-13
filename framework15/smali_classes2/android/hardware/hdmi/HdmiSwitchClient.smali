.class public Landroid/hardware/hdmi/HdmiSwitchClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiSwitchClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HdmiSwitchClient"


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-void
.end method

.method private static blacklist getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiSwitchClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiSwitchClient$1;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "Failed to call getDeviceList():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDeviceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public whitelist getPortInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "Failed to call getPortInfo():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist selectDevice(ILandroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .locals 3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HdmiSwitchClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/hardware/hdmi/HdmiSwitchClient$2;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HdmiSwitchClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist selectPort(ILandroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiSwitchClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HdmiSwitchClient"

    const-string v2, "failed to select port: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist selectPort(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    new-instance v1, Landroid/hardware/hdmi/HdmiSwitchClient$3;

    invoke-direct {v1, p0, p2, p3}, Landroid/hardware/hdmi/HdmiSwitchClient$3;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HdmiSwitchClient"

    const-string v2, "failed to select port: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
