.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdListNoLazy()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2089
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$2;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCameraAccessPrioritiesChanged()V
    .locals 0

    .line 2106
    return-void
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 2112
    return-void
.end method

.method public blacklist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 2116
    return-void
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 2109
    return-void
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "physicalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    return-void
.end method

.method public blacklist onStatusChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2092
    return-void
.end method

.method public blacklist onTorchStatusChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2099
    return-void
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    return-void
.end method
