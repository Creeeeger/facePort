.class final Landroid/media/Spatializer$SpatializerInfoDispatcherStub;
.super Landroid/media/ISpatializerCallback$Stub;
.source "Spatializer.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerInfoDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method public static synthetic blacklist $r8$lambda$HugCpuxBiTKWS1Loy0WOEiHqhJA(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KvmtC-ypIdf-7Wn5x1yaJrjEtv8(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerInfoDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchSpatializerAvailableChanged$1(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchSpatializerEnabledChanged$0(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchSpatializerAvailableChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public blacklist dispatchSpatializerEnabledChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public blacklist register(Z)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method
