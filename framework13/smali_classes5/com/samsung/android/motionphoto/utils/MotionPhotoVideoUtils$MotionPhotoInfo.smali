.class public final Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;
.super Ljava/lang/Object;
.source "MotionPhotoVideoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionPhotoInfo"
.end annotation


# instance fields
.field private blacklist isMotionPhotoV2:Z

.field private blacklist length:J

.field private blacklist offset:J


# direct methods
.method public constructor blacklist <init>(JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "offset",
            "length",
            "isMotionPhotoV2"
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-wide p1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->offset:J

    .line 386
    iput-wide p3, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->length:J

    .line 387
    iput-boolean p5, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2:Z

    return-void
.end method


# virtual methods
.method public final blacklist getLength()J
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->length:J

    return-wide v0
.end method

.method public final blacklist getOffset()J
    .locals 2

    .line 373
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->offset:J

    return-wide v0
.end method

.method public final blacklist isMotionPhotoV2()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionPhotoInfo(offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMotionPhotoV2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
