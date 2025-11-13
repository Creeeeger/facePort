.class public final synthetic Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v0, [B

    iget-boolean v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v3, :cond_0

    div-int/lit8 v4, v0, 0x2

    new-array v5, v4, [S

    new-array v4, v4, [S

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v4, v5

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_1
    if-eqz v3, :cond_8

    iget-object v9, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v10, v5

    sub-int/2addr v10, v7

    invoke-virtual {v9, v5, v7, v10}, Landroid/media/AudioRecord;->read([SII)I

    move-result v9

    iget-object v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    array-length v13, v4

    sub-int/2addr v13, v8

    invoke-virtual {v10, v4, v8, v13}, Landroid/media/AudioRecord;->read([SII)I

    move-result v10

    if-gez v9, :cond_1

    if-gez v10, :cond_1

    goto/16 :goto_7

    :cond_1
    if-gez v9, :cond_2

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([SS)V

    move v7, v8

    move v9, v10

    :cond_2
    if-gez v10, :cond_3

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([SS)V

    move v8, v7

    move v10, v9

    :cond_3
    add-int/2addr v9, v7

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v13

    mul-int/lit8 v14, v13, 0x2

    move v15, v6

    :goto_2
    const/16 v11, 0x7fff

    const/16 v12, -0x8000

    if-ge v15, v13, :cond_4

    aget-short v6, v4, v15

    int-to-float v6, v6

    const v18, 0x3fb33333    # 1.4f

    mul-float v6, v6, v18

    float-to-int v6, v6

    invoke-static {v6, v12, v11}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v4, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_5

    aget-short v15, v5, v6

    aget-short v18, v4, v6

    add-int v15, v15, v18

    invoke-static {v15, v12, v11}, Landroid/util/MathUtils;->constrain(III)I

    move-result v15

    int-to-short v15, v15

    mul-int/lit8 v18, v6, 0x2

    and-int/lit16 v11, v15, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v18

    add-int/lit8 v18, v18, 0x1

    shr-int/lit8 v11, v15, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v18

    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0x7fff

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_4
    sub-int v11, v7, v13

    if-ge v6, v11, :cond_6

    add-int v11, v13, v6

    aget-short v11, v5, v11

    aput-short v11, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_5
    sub-int v7, v8, v13

    if-ge v6, v7, :cond_7

    add-int v7, v13, v6

    aget-short v7, v4, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    sub-int v7, v9, v13

    sub-int v8, v10, v13

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    iget-object v6, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v14

    :goto_6
    if-gez v14, :cond_9

    const-string v0, "read error "

    const-string v2, ", shorts internal: "

    const-string v3, ", shorts mic: "

    invoke-static {v14, v9, v0, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenAudioRecorder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    iget-object v4, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    iget-wide v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    return-void

    :cond_9
    move v6, v11

    :goto_8
    if-lez v14, :cond_c

    iget-object v12, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    move v13, v3

    move-object v15, v4

    const-wide/16 v3, 0x1f4

    invoke-virtual {v12, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-gez v12, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    goto :goto_a

    :cond_a
    iget-object v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v14, v4, :cond_b

    goto :goto_9

    :cond_b
    move v4, v14

    :goto_9
    sub-int/2addr v14, v4

    invoke-virtual {v3, v2, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v4

    iget-object v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    move/from16 v17, v12

    iget-wide v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-wide/from16 v20, v11

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-wide v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    int-to-long v3, v4

    add-long/2addr v11, v3

    iput-wide v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    const-wide/16 v3, 0x2

    div-long/2addr v11, v3

    const-wide/32 v3, 0xf4240

    mul-long/2addr v11, v3

    iget-object v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    iget v3, v3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    int-to-long v3, v3

    div-long/2addr v11, v3

    iput-wide v11, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    move v3, v13

    move-object v4, v15

    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    move v13, v3

    move-object v15, v4

    :goto_a
    move v3, v13

    move-object v4, v15

    const/4 v6, 0x0

    goto/16 :goto_1
.end method
