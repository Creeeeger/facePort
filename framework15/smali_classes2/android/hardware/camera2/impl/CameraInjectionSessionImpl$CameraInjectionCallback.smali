.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
.super Landroid/hardware/camera2/ICameraInjectionCallback$Stub;
.source "CameraInjectionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraInjectionCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist onInjectionError(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->onInjectionError(I)V

    return-void
.end method
