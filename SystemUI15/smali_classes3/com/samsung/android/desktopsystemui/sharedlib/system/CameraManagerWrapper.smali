.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public setTorchMode(Ljava/lang/String;ZI)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/CameraManagerWrapper;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
