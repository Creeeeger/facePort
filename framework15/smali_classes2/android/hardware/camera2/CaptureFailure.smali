.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureFailure$FailureReason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_ERROR:I = 0x0

.field public static final whitelist REASON_FLUSHED:I = 0x1


# instance fields
.field private final blacklist mErrorPhysicalCameraId:Ljava/lang/String;

.field private final greylist-max-o mFrameNumber:J

.field private final greylist-max-o mReason:I

.field private final greylist-max-o mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final greylist-max-o mSequenceId:I

.field private final blacklist mWasImageCaptured:Z


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mWasImageCaptured:Z

    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    iput-object p7, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getFrameNumber()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    return-wide v0
.end method

.method public whitelist getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mErrorPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReason()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public whitelist getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public whitelist getSequenceId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public whitelist wasImageCaptured()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mWasImageCaptured:Z

    return v0
.end method
