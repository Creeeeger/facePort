.class public final synthetic Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_2
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_3
    return-void

    :pswitch_0
    check-cast p0, Landroid/media/projection/MediaProjection;

    invoke-virtual {p0}, Landroid/media/projection/MediaProjection;->stop()V

    return-void

    :pswitch_1
    check-cast p0, Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    return-void

    :pswitch_2
    check-cast p0, Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
