.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$PictureCanvas;
    }
.end annotation


# static fields
.field private static final greylist-max-o WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field private greylist-max-p mNativePicture:J

.field private greylist-max-o mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

.field private greylist-max-o mRequiresHwAcceleration:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/graphics/Picture;->mNativePicture:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Picture;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Picture;->mNativePicture:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeConstructor(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(J)V

    return-void
.end method

.method public static greylist createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Picture;-><init>(J)V

    return-object v0
.end method

.method private static native greylist-max-o nativeBeginRecording(JII)J
.end method

.method private static native greylist-max-o nativeConstructor(J)J
.end method

.method private static native greylist-max-o nativeCreateFromStream(Ljava/io/InputStream;[B)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeDraw(JJ)V
.end method

.method private static native greylist-max-o nativeEndRecording(J)V
.end method

.method private static native greylist-max-o nativeGetHeight(J)I
.end method

.method private static native greylist-max-o nativeGetWidth(J)I
.end method

.method private static native greylist-max-o nativeWriteToStream(JLjava/io/OutputStream;[B)Z
.end method

.method private blacklist verifyValid()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picture is destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist beginRecording(II)Landroid/graphics/Canvas;
    .locals 3

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(JII)J

    move-result-wide v0

    new-instance v2, Landroid/graphics/Picture$PictureCanvas;

    invoke-direct {v2, p0, v0, v1}, Landroid/graphics/Picture$PictureCanvas;-><init>(Landroid/graphics/Picture;J)V

    iput-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    iget-object v2, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picture already recording, must call #endRecording()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDestructor(J)V

    iput-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    :cond_0
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering not supported for Pictures that require hardware acceleration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Picture;->nativeDraw(JJ)V

    return-void
.end method

.method public whitelist endRecording()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    iget-boolean v0, v0, Landroid/graphics/Picture$PictureCanvas;->mUsesHwFeature:Z

    iput-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Picture$PictureCanvas;

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeEndRecording(J)V

    :cond_0
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
    invoke-virtual {p0}, Landroid/graphics/Picture;->close()V
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

.method public whitelist getHeight()I
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 2

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist requiresHardwareAcceleration()Z
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    iget-boolean v0, p0, Landroid/graphics/Picture;->mRequiresHwAcceleration:Z

    return v0
.end method

.method public greylist writeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/graphics/Picture;->verifyValid()V

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroid/graphics/Picture;->mNativePicture:J

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Picture;->nativeWriteToStream(JLjava/io/OutputStream;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
