.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private greylist-max-o mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic blacklist this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor blacklist <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0
    .param p2, "ae"    # Landroid/media/audiofx/AudioEffect;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1310
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 1311
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1312
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 1313
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1317
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1320
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1380
    const-string v0, "AudioEffect-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() Unknown event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1369
    :pswitch_0
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v0, v0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmErrorListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnErrorListener;

    move-result-object v1

    .line 1371
    .local v1, "errorListener":Landroid/media/audiofx/AudioEffect$OnErrorListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    if-eqz v1, :cond_1

    .line 1373
    const-string v0, "AudioEffect-JAVA"

    const-string v2, "NATIVE_EVENT_ERROR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-interface {v1}, Landroid/media/audiofx/AudioEffect$OnErrorListener;->onError()V

    .line 1377
    .end local v1    # "errorListener":Landroid/media/audiofx/AudioEffect$OnErrorListener;
    :cond_1
    goto/16 :goto_2

    .line 1371
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1342
    :pswitch_1
    const/4 v0, 0x0

    .line 1343
    .local v0, "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v1, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1344
    :try_start_2
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmParameterChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    move-result-object v1

    move-object v0, v1

    .line 1345
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1346
    if-eqz v0, :cond_4

    .line 1349
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1350
    .local v1, "vOffset":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 1353
    .local v3, "p":[B
    invoke-static {v3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 1354
    .local v4, "status":I
    const/4 v5, 0x4

    invoke-static {v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    .line 1355
    .local v5, "psize":I
    const/16 v6, 0x8

    invoke-static {v3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    .line 1356
    .local v6, "vsize":I
    new-array v7, v5, [B

    .line 1357
    .local v7, "param":[B
    new-array v8, v6, [B

    .line 1358
    .local v8, "value":[B
    const/16 v9, 0xc

    invoke-static {v3, v9, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    invoke-static {v3, v1, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    iget-object v2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v0, v2, v4, v7, v8}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    .line 1363
    .end local v1    # "vOffset":I
    .end local v3    # "p":[B
    .end local v4    # "status":I
    .end local v5    # "psize":I
    .end local v6    # "vsize":I
    .end local v7    # "param":[B
    .end local v8    # "value":[B
    goto :goto_2

    .line 1345
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1322
    .end local v0    # "parameterChangeListener":Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :pswitch_2
    const/4 v0, 0x0

    .line 1323
    .local v0, "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1324
    :try_start_4
    iget-object v4, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmEnableStatusChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    move-result-object v4

    move-object v0, v4

    .line 1325
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1326
    if-eqz v0, :cond_4

    .line 1327
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {v0, v3, v1}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_2

    .line 1325
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 1332
    .end local v0    # "enableStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :pswitch_3
    const/4 v0, 0x0

    .line 1333
    .local v0, "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1334
    :try_start_6
    iget-object v4, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->-$$Nest$fgetmControlChangeStatusListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    move-result-object v4

    move-object v0, v4

    .line 1335
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1336
    if-eqz v0, :cond_4

    .line 1337
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-interface {v0, v3, v1}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_2

    .line 1335
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 1383
    .end local v0    # "controlStatusChangeListener":Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
