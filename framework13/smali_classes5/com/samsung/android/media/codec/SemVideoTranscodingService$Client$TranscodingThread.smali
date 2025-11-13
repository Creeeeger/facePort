.class Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;
.super Ljava/lang/Thread;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscodingThread"
.end annotation


# static fields
.field private static final blacklist THREAD_PREFIX:Ljava/lang/String; = "transcoding"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transcoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->setName(Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 18

    .line 123
    move-object/from16 v1, p0

    const-string v2, "Task("

    const-string v0, "]"

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoTranscodingService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ")"

    const-string v7, "Unsupported mode ("

    if-eqz v5, :cond_9

    .line 129
    :try_start_1
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 130
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    iget-object v9, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v9}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmInputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 131
    const/16 v9, 0x12

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "width":Ljava/lang/String;
    const/16 v10, 0x13

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "height":Ljava/lang/String;
    const/16 v12, 0x403

    invoke-virtual {v5, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "hdr10bit":Ljava/lang/String;
    const/16 v13, 0x404

    invoke-virtual {v5, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "bitDepth":Ljava/lang/String;
    const/16 v14, 0x3fe

    invoke-virtual {v5, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, "recording_mode":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    METADATA_KEY_VIDEO_WIDTH["

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    METADATA_KEY_VIDEO_HEIGHT["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_HDR10_VIDEO["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_VIDEO_BIT_DEPTH["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    SEM_METADATA_KEY_RECORDINGMODE["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "w":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "h":I
    const/4 v15, 0x0

    .line 146
    .local v15, "isValid":Z
    const/16 v16, 0x4

    .line 147
    .local v16, "dstVideoCodecType":I
    const/4 v10, 0x2

    .line 148
    .local v10, "dstAudioCodecType":I
    iget-object v8, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v8}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I

    move-result v8

    move-object/from16 v17, v5

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v17, "retriever":Landroid/media/MediaMetadataRetriever;
    const/16 v5, 0x8

    packed-switch v8, :pswitch_data_0

    .line 181
    goto :goto_0

    .line 164
    :pswitch_0
    if-nez v14, :cond_0

    .line 165
    goto :goto_1

    .line 167
    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 168
    .local v6, "i":I
    const/16 v7, 0x15

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1

    const/16 v8, 0xc

    if-eq v6, v8, :cond_1

    const/16 v8, 0xd

    if-eq v6, v8, :cond_1

    const/16 v8, 0xf

    if-eq v6, v8, :cond_1

    const/16 v8, 0x13

    if-eq v6, v8, :cond_1

    if-eq v6, v7, :cond_1

    .line 172
    goto :goto_1

    .line 174
    :cond_1
    if-ne v6, v7, :cond_2

    .line 175
    const/16 v16, 0x5

    .line 177
    :cond_2
    const/4 v15, 0x1

    .line 178
    move/from16 v6, v16

    goto :goto_2

    .line 150
    .end local v6    # "i":I
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->-$$Nest$smisSupportedHdrToSdr()Z

    move-result v6

    if-nez v6, :cond_3

    .line 151
    goto :goto_1

    .line 153
    :cond_3
    if-eqz v12, :cond_6

    if-nez v13, :cond_4

    .line 154
    goto :goto_1

    .line 156
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "bit":I
    const-string/jumbo v7, "yes"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-gt v6, v5, :cond_5

    .line 158
    goto :goto_1

    .line 160
    :cond_5
    const/4 v15, 0x1

    .line 161
    move/from16 v6, v16

    goto :goto_2

    .line 181
    .end local v6    # "bit":I
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v8}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_6
    :goto_1
    move/from16 v6, v16

    .end local v16    # "dstVideoCodecType":I
    .local v6, "dstVideoCodecType":I
    :goto_2
    if-eqz v15, :cond_8

    .line 187
    iget-object v7, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v7}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v8}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmOutputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmInputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v0, v3, v5}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 188
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v7}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    .line 189
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    .line 190
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v10}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    .line 191
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I

    move-result v5

    if-nez v5, :cond_7

    .line 192
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5

    const/4 v7, 0x4

    const/16 v8, 0x8

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    .line 194
    :cond_7
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V

    .line 195
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->encode()V

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v7}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") has been finished"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :cond_8
    const-string v5, "Invalid argument"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v5, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V

    .line 201
    .end local v0    # "w":I
    .end local v3    # "h":I
    .end local v6    # "dstVideoCodecType":I
    .end local v9    # "width":Ljava/lang/String;
    .end local v10    # "dstAudioCodecType":I
    .end local v11    # "height":Ljava/lang/String;
    .end local v12    # "hdr10bit":Ljava/lang/String;
    .end local v13    # "bitDepth":Ljava/lang/String;
    .end local v14    # "recording_mode":Ljava/lang/String;
    .end local v15    # "isValid":Z
    .end local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_3
    goto :goto_5

    .line 202
    :cond_9
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 216
    goto :goto_4

    .line 204
    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V

    .line 205
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onStarted()V

    .line 206
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmInputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmOutputPath(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/media/codec/ImgCsConverter;->convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 207
    .local v0, "ret":Z
    if-eqz v0, :cond_a

    .line 208
    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v3

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onProgressChanged(I)V

    .line 209
    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onCompleted()V

    goto :goto_5

    .line 211
    :cond_a
    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V

    .line 213
    goto :goto_5

    .line 216
    .end local v0    # "ret":Z
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmMode(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V

    .line 237
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscodingService(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 235
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    .line 222
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") has been terminated unexpectedly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmIgnoreError(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client has stopped "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Ignore this error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 229
    :cond_b
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmProgressCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    goto :goto_6

    .line 230
    :catch_1
    move-exception v0

    .line 231
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V

    .line 237
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscodingService(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 240
    :goto_7
    goto :goto_8

    .line 238
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    nop

    .line 242
    :goto_8
    return-void

    .line 235
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fputmIsRunning(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;Z)V

    .line 237
    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmTranscodingService(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client$TranscodingThread;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    invoke-static {v3}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->-$$Nest$fgetmID(Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 240
    goto :goto_a

    .line 238
    :catch_3
    move-exception v0

    .line 239
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
    .end packed-switch
.end method
