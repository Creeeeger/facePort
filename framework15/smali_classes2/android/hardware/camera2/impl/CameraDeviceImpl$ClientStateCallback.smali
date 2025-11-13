.class Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientStateCallback"
.end annotation


# instance fields
.field private final blacklist mClientExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$3;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$2;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$ClientStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
