.class public abstract Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemCameraDeviceStateCallback"
.end annotation


# static fields
.field public static final whitelist CAMERA_FACING_BACK:I = 0x0

.field public static final whitelist CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final whitelist CAMERA_FACING_FRONT:I = 0x1

.field public static final whitelist CAMERA_STATE_ACTIVE:I = 0x1

.field public static final whitelist CAMERA_STATE_CLOSED:I = 0x3

.field public static final whitelist CAMERA_STATE_IDLE:I = 0x2

.field public static final whitelist CAMERA_STATE_OPEN:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .line 1691
    return-void
.end method
