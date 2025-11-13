.class public final Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;
.super Landroid/hardware/lights/LightsManager$LightsSession;
.source "InputDeviceLightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceLightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputDeviceLightsSession"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceLightsManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputDeviceLightsManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "InputDeviceLightsSession.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputDeviceLightsManager;Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;-><init>(Landroid/hardware/input/InputDeviceLightsManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v0}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmGlobal(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v1}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->closeLightSession(ILandroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    :cond_0
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist requestLights(Landroid/hardware/lights/LightsRequest;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v0}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmGlobal(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v1}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/input/InputManagerGlobal;->requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V

    return-void
.end method
