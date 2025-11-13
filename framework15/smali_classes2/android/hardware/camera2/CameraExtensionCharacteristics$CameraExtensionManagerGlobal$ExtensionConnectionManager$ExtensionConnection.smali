.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionConnection"
.end annotation


# instance fields
.field public blacklist mConnection:Landroid/content/ServiceConnection;

.field public blacklist mConnectionCount:I

.field public blacklist mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

.field public blacklist mSupportsAdvancedExtensions:Z

.field final synthetic blacklist this$1:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->this$1:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnection:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mSupportsAdvancedExtensions:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;)V

    return-void
.end method
