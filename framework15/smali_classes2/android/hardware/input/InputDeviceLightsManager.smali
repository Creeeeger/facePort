.class Landroid/hardware/input/InputDeviceLightsManager;
.super Landroid/hardware/lights/LightsManager;
.source "InputDeviceLightsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InputDeviceLightsManager"


# instance fields
.field private final blacklist mDeviceId:I

.field private final blacklist mGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlobal(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManagerGlobal;
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    return-object p0
.end method

.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager;-><init>()V

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iput p1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManagerGlobal;->getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLights()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getLights(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openSession()Landroid/hardware/lights/LightsManager$LightsSession;
    .locals 5

    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;-><init>(Landroid/hardware/input/InputDeviceLightsManager;Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession-IA;)V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mGlobal:Landroid/hardware/input/InputManagerGlobal;

    iget v2, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputDeviceLightsManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManagerGlobal;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public blacklist openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
