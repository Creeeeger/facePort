.class public Landroid/hardware/camera2/CameraAccessException;
.super Landroid/util/AndroidException;
.source "CameraAccessException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraAccessException$AccessError;
    }
.end annotation


# static fields
.field public static final greylist-max-o CAMERA_DEPRECATED_HAL:I = 0x3e8

.field public static final whitelist CAMERA_DISABLED:I = 0x1

.field public static final whitelist CAMERA_DISCONNECTED:I = 0x2

.field public static final whitelist CAMERA_ERROR:I = 0x3

.field public static final whitelist CAMERA_IN_USE:I = 0x4

.field public static final whitelist MAX_CAMERAS_IN_USE:I = 0x5

.field private static final whitelist serialVersionUID:J = 0x4e22fb28f3a4e7dbL


# instance fields
.field private final greylist-max-o mReason:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/hardware/camera2/CameraAccessException;->getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Landroid/hardware/camera2/CameraAccessException;->getDefaultMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return-void
.end method

.method private static greylist-max-o getCombinedMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/hardware/camera2/CameraAccessException;->getProblemString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s (%d): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getDefaultMessage(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed."

    return-object v0

    :pswitch_1
    const-string v0, "The camera device is in use already"

    return-object v0

    :pswitch_2
    const-string v0, "The camera device is currently in the error state; no further calls to it will succeed."

    return-object v0

    :pswitch_3
    const-string v0, "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device."

    return-object v0

    :pswitch_4
    const-string v0, "The camera is disabled due to a device policy, and cannot be opened."

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o getProblemString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "<UNKNOWN ERROR>"

    goto :goto_0

    :sswitch_0
    const-string v0, "CAMERA_DEPRECATED_HAL"

    goto :goto_0

    :sswitch_1
    const-string v0, "MAX_CAMERAS_IN_USE"

    goto :goto_0

    :sswitch_2
    const-string v0, "CAMERA_IN_USE"

    goto :goto_0

    :sswitch_3
    const-string v0, "CAMERA_ERROR"

    goto :goto_0

    :sswitch_4
    const-string v0, "CAMERA_DISCONNECTED"

    goto :goto_0

    :sswitch_5
    const-string v0, "CAMERA_DISABLED"

    nop

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final whitelist getReason()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CameraAccessException;->mReason:I

    return v0
.end method
