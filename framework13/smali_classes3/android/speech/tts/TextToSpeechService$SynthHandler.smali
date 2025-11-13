.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private greylist-max-o mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private greylist-max-o mFlushAll:I

.field private greylist-max-o mFlushedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mendFlushingSpeechItems(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 0

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 485
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 486
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 471
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 482
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    .line 483
    const/4 p1, 0x0

    iput p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    .line 487
    return-void
.end method

.method private greylist-max-o endFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 500
    if-nez p1, :cond_0

    .line 501
    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    :goto_0
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized greylist-max-o getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 514
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 3
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 508
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 509
    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized greylist-max-o maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 544
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 545
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit p0

    return-object v0

    .line 549
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 541
    .end local p1    # "callerIdentity":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 537
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-object v0

    .line 535
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 1
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    monitor-enter p0

    .line 528
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 531
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 527
    .end local p1    # "speechItem":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o startFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 491
    if-nez p1, :cond_0

    .line 492
    :try_start_0
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_0

    .line 494
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :goto_0
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist-max-o enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .locals 7
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v1, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v1, :cond_0

    .line 575
    move-object v0, p2

    check-cast v0, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 578
    :cond_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 579
    if-eqz v0, :cond_1

    .line 580
    const/4 v1, -0x8

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 583
    :cond_1
    return v2

    .line 586
    :cond_2
    if-nez p1, :cond_3

    .line 587
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    goto :goto_0

    .line 588
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 589
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    .line 591
    :cond_4
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 603
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 609
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    const-string v5, "TextToSpeechService"

    if-eqz v4, :cond_6

    .line 616
    :try_start_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerUid()I

    move-result v2

    .line 617
    .local v2, "uid":I
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmTTSList(Landroid/speech/tts/TextToSpeechService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 618
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmTTSList(Landroid/speech/tts/TextToSpeechService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmIActivityManager(Landroid/speech/tts/TextToSpeechService;)Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->setTTSPkgInfo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v2    # "uid":I
    :cond_5
    goto :goto_1

    .line 621
    :catch_0
    move-exception v2

    .line 622
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueSpeech"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 627
    :cond_6
    const-string v4, "SynthThread has quit"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz v0, :cond_7

    .line 629
    const/4 v4, -0x4

    invoke-interface {v0, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 631
    :cond_7
    return v2
.end method

.method public greylist-max-o isSpeaking()Z
    .locals 1

    .line 553
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o quit()V
    .locals 1

    .line 558
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 560
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 561
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 565
    :cond_0
    return-void
.end method

.method public greylist-max-o stopAll()I
    .locals 3

    .line 678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 681
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 682
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 686
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 689
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    .line 695
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 698
    const/4 v2, 0x0

    return v2
.end method

.method public greylist-max-o stopForApp(Ljava/lang/Object;)I
    .locals 3
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 v0, -0x1

    return v0

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 657
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 658
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 663
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 666
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 672
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 673
    const/4 v2, 0x0

    return v2
.end method
