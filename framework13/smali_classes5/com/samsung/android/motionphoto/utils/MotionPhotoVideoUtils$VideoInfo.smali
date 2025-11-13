.class public final Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;
.super Ljava/lang/Object;
.source "MotionPhotoVideoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoInfo"
.end annotation


# instance fields
.field private blacklist videoLength:J

.field private blacklist videoOffset:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoOffset",
            "videoLength"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-wide p1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoOffset:J

    .line 358
    iput-wide p3, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoLength:J

    return-void
.end method


# virtual methods
.method public final blacklist getVideoLength()J
    .locals 2

    .line 353
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoLength:J

    return-wide v0
.end method

.method public final blacklist getVideoOffset()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoOffset:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfo(videoOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;->videoLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
