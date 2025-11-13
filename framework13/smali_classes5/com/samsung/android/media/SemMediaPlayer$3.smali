.class Lcom/samsung/android/media/SemMediaPlayer$3;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic blacklist val$fFormat:Landroid/media/MediaFormat;

.field final synthetic blacklist val$fIs:Ljava/io/InputStream;

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/SemMediaPlayer;

    .line 4577
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .locals 9

    .line 4579
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 4584
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-nez v0, :cond_1

    .line 4585
    return v1

    .line 4589
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 4590
    .local v2, "availableSize":I
    const/high16 v3, 0x1400000

    if-le v2, v3, :cond_2

    .line 4591
    const-string v3, "SemMediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrack() unsupported size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4592
    return v1

    .line 4597
    .end local v2    # "availableSize":I
    :cond_2
    nop

    .line 4600
    const/4 v2, 0x0

    .line 4601
    .local v2, "scanner":Ljava/util/Scanner;
    const/4 v3, 0x0

    .line 4603
    .local v3, "contents":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/util/Scanner;

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v4

    .line 4604
    const-string v4, "\\A"

    invoke-virtual {v2, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4609
    .end local v3    # "contents":Ljava/lang/String;
    .local v4, "contents":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    .line 4610
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4611
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4613
    nop

    .line 4614
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4618
    if-nez v4, :cond_3

    .line 4619
    return v1

    .line 4622
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3

    .line 4623
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIndexTrackPairs(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4624
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4627
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4631
    .local v1, "h":Landroid/os/Handler;
    nop

    .line 4633
    const/4 v3, 0x2

    .line 4634
    .local v3, "what":I
    const/4 v5, 0x4

    .line 4635
    .local v5, "arg1":I
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 4636
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4637
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4638
    const/16 v8, 0x323

    return v8

    .line 4628
    .end local v1    # "h":Landroid/os/Handler;
    .end local v3    # "what":I
    .end local v5    # "arg1":I
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "m":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 4629
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v5, "SemMediaPlayer"

    const-string v6, "handleMessage is NullPointerException e : "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4630
    return v1

    .line 4624
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 4611
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 4609
    .end local v4    # "contents":Ljava/lang/String;
    .local v3, "contents":Ljava/lang/String;
    :catchall_2
    move-exception v1

    goto :goto_0

    .line 4605
    :catch_1
    move-exception v4

    .line 4606
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "SemMediaPlayer"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 4607
    nop

    .line 4609
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    .line 4610
    :try_start_8
    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v6}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4611
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4613
    if-eqz v2, :cond_4

    .line 4614
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4607
    :cond_4
    return v1

    .line 4611
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    .line 4609
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v4}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 4610
    :try_start_a
    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v5}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOpenSubtitleSources(Lcom/samsung/android/media/SemMediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 4611
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 4613
    if-eqz v2, :cond_5

    .line 4614
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 4616
    :cond_5
    throw v1

    .line 4611
    :catchall_4
    move-exception v1

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1

    .line 4594
    .end local v2    # "scanner":Ljava/util/Scanner;
    .end local v3    # "contents":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 4595
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "SemMediaPlayer"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4596
    return v1

    .line 4580
    .end local v0    # "track":Landroid/media/SubtitleTrack;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 4642
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$3;->addTrack()I

    move-result v0

    .line 4643
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4644
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4645
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4647
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 4648
    return-void
.end method
