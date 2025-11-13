.class public Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;
.super Landroid/hardware/IDeviceInjectorCallback$Stub;
.source "DeviceInjectorSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInjectorCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-direct {p0}, Landroid/hardware/IDeviceInjectorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist onError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionError(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V

    return-void
.end method

.method public blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionPendingStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionPendingStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$monInjectionStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSessionCreated(Landroid/hardware/IDeviceInjectorSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;->this$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->-$$Nest$msetRemoteInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V

    return-void
.end method
