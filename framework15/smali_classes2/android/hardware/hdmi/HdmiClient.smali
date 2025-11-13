.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;
.source "HdmiClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HdmiClient"

.field private static final blacklist UNKNOWN_VENDOR_ID:I = 0xffffff


# instance fields
.field private greylist-max-o mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final greylist-max-o mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    return-void
.end method

.method private static blacklist getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;I)V

    return-object v0
.end method

.method private static greylist-max-o getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o getDeviceType()I
.end method

.method public whitelist selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1, p2, p3}, Landroid/hardware/hdmi/HdmiClient;->getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendKeyEvent(IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "sendKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist sendVendorCommand(I[BZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist sendVolumeKeyEvent(IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendVolumeKeyEvent(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "sendVolumeKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .locals 1

    const v0, 0xffffff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/hdmi/HdmiClient;->setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V

    return-void
.end method

.method public whitelist setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0, p2}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to set vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
