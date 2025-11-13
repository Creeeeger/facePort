.class public final Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
.super Landroid/media/projection/MediaProjection$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field public final mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public final mCaptureRegion:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInputSurface:Landroid/view/Surface;

.field public final mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

.field public mMediaProjection:Landroid/media/projection/MediaProjection;

.field public mMediaRecorder:Landroid/media/MediaRecorder;

.field public mTempAudioFile:Ljava/io/File;

.field public mTempVideoFile:Ljava/io/File;

.field public final mUid:I

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUid:I

    iput-object p5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mCaptureRegion:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    iput-object p6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 4

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;-><init>(I)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRecorder;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRecorder;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    new-instance v1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string p0, "ScreenMediaRecorder"

    const-string v0, "end recording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "ScreenMediaRecorder"

    const-string v1, "The system notified about stopping the projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

    check-cast p0, Lcom/android/systemui/screenrecord/RecordingService;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping recording because the system requested the stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->stopService(I)V

    :cond_0
    return-void
.end method

.method public final save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    .locals 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'screen-\'yyyyMMdd-HHmmss\'.mp4\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "datetaken"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_primary"

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenMediaRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v2, v4, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "muxing recording"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "temp"

    const-string v4, ".mp4"

    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mux()V

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "muxing recording "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_3

    const v5, 0x10502e2

    goto :goto_1

    :cond_3
    const v5, 0x10502e1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v3, :cond_4

    const v3, 0x10502e4

    goto :goto_2

    :cond_4
    const v3, 0x10502e3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;Landroid/net/Uri;Ljava/io/File;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method public final start()V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "ScreenMediaRecorder"

    const-string/jumbo v2, "start recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "media_projection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUid:I

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mCaptureRegion:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjection;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mCaptureRegion:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    iget v2, v2, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjection;->setTaskId(I)V

    :cond_0
    new-instance v2, Landroid/media/projection/MediaProjection;

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    iput-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const-string v2, ".mp4"

    const-string/jumbo v3, "temp"

    invoke-static {v3, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v2, v5, :cond_1

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRefreshRate()F

    move-result v6

    float-to-int v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v9

    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v12

    rem-int v12, v7, v12

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v12

    rem-int v12, v7, v12

    sub-int v12, v7, v12

    goto :goto_0

    :cond_2
    move v12, v7

    :goto_0
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v13

    rem-int v13, v8, v13

    if-eqz v13, :cond_3

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v13

    rem-int v13, v8, v13

    sub-int v13, v8, v13

    goto :goto_1

    :cond_3
    move v13, v8

    :goto_1
    const-string v14, "ScreenMediaRecorder"

    if-lt v10, v12, :cond_5

    if-lt v11, v13, :cond_5

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    if-ge v7, v6, :cond_4

    move v6, v7

    :cond_4
    const-string v7, "Screen size supported at rate "

    invoke-static {v6, v7, v14}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v12, v13, v6}, [I

    move-result-object v6

    move-object v10, v3

    move v2, v4

    move-object/from16 v16, v5

    goto :goto_2

    :cond_5
    int-to-double v12, v10

    move-object v10, v3

    int-to-double v2, v7

    div-double/2addr v12, v2

    move-object/from16 v16, v5

    int-to-double v4, v11

    int-to-double v7, v8

    div-double/2addr v4, v7

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-double/2addr v7, v4

    double-to-int v3, v7

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v7

    rem-int v7, v2, v7

    if-eqz v7, :cond_6

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v7

    rem-int v7, v2, v7

    sub-int/2addr v2, v7

    :cond_6
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v7

    rem-int v7, v3, v7

    if-eqz v7, :cond_7

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v7

    rem-int v7, v3, v7

    sub-int/2addr v3, v7

    :cond_7
    invoke-virtual {v9, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v7

    if-ge v7, v6, :cond_8

    move v6, v7

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Resized by "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v2, v3, v6}, [I

    move-result-object v6

    const/4 v2, 0x0

    :goto_2
    aget v3, v6, v2

    const/4 v4, 0x1

    aget v5, v6, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-int v8, v3, v5

    mul-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x1e

    mul-int/lit8 v8, v8, 0x6

    iget-object v9, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9, v7}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v9, 0x8

    const/16 v11, 0x100

    invoke-virtual {v7, v9, v11}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v3, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v7, 0x36ee80

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v7, 0x12a05f200L

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-object/from16 v7, v16

    if-ne v6, v7, :cond_9

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v7, 0x2fda0

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v7, 0xac44

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_9
    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v8, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$1;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;)V

    iget-object v9, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    const-string v18, "Recording Display"

    const/16 v22, 0x10

    move-object/from16 v17, v7

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v1

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-virtual/range {v17 .. v25}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v3, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v1, v3, :cond_a

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v5, :cond_c

    :cond_a
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, ".aac"

    invoke-static {v10, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    new-instance v5, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v8, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v7, v8, :cond_b

    move v2, v4

    :cond_b
    invoke-direct {v5, v1, v6, v2}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;-><init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V

    iput-object v5, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v1, v3, :cond_d

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v2, :cond_11

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    const-string v0, "channel count "

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mStarted:Z

    if-eqz v2, :cond_f

    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recording stopped and can\'t restart (single use)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recording already started"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput-boolean v4, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mStarted:Z

    iget-object v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    iget-boolean v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    :cond_10
    const-string v2, "ScreenAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_11
    return-void

    :cond_12
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Audio recording failed to start"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v1

    throw v0
.end method
