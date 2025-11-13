.class public abstract Landroid/hardware/camera2/CameraManager$TorchCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TorchCallback"
.end annotation


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mDevicePolicy:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDevicePolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceId(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDevicePolicy(Landroid/hardware/camera2/CameraManager$TorchCallback;I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/CameraManager$TorchCallback;->mDevicePolicy:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public whitelist onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
