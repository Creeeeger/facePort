.class public final Landroid/companion/virtual/camera/VirtualCamera;
.super Ljava/lang/Object;
.source "VirtualCamera.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/IVirtualDevice;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mCameraId:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/camera/VirtualCameraConfig;

    iput-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDevice;->unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist getConfig()Landroid/companion/virtual/camera/VirtualCameraConfig;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCamera;->mCameraId:Ljava/lang/String;

    return-object v0
.end method
