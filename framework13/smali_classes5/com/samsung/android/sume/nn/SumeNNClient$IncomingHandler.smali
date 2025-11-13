.class public final Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;
.super Landroid/os/Handler;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncomingHandler"
.end annotation


# instance fields
.field private blacklist looper:Landroid/os/Looper;

.field private blacklist weak_ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/nn/SumeNNClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper_"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "weak_ref",
            "looper_"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/nn/SumeNNClient;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 264
    .local p1, "weak_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sume/nn/SumeNNClient;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;->weak_ref:Ljava/lang/ref/WeakReference;

    .line 266
    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;->looper:Landroid/os/Looper;

    .line 267
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/os/Bundle;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Landroid/os/Bundle;

    .line 288
    const-string/jumbo v0, "runtimes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$1(I)Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "it"    # I

    .line 289
    const-class v0, Lcom/samsung/android/sume/op/OpRuntime;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$10(Lcom/samsung/android/sume/ContentStat;Ljava/util/HashSet;)V
    .locals 1
    .param p0, "partStat"    # Lcom/samsung/android/sume/ContentStat;
    .param p1, "it"    # Ljava/util/HashSet;

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/sume/ContentStat;->getRuntimeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$11(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 368
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 369
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$12(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 373
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 374
    const-string v0, "content-part-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$13(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 382
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 383
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$2([I)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "e"    # [I

    .line 289
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$3(I)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "x$0"    # I

    .line 291
    new-array v0, p0, [Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$4(Landroid/os/Bundle;)Lcom/samsung/android/sume/op/OpRuntimeStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 319
    const-class v0, Lcom/samsung/android/sume/op/OpRuntimeStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 320
    const-string/jumbo v0, "runtime-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntimeStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$5(Lcom/samsung/android/sume/op/OpRuntimeStat;)V
    .locals 2
    .param p0, "it"    # Lcom/samsung/android/sume/op/OpRuntimeStat;

    .line 321
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runtime-pool"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/op/OpRuntimeStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$6(Landroid/os/Bundle;)[I
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 329
    const-string v0, "contents-list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$7(Lcom/samsung/android/sume/nn/SumeNNClient;[I)V
    .locals 4
    .param p0, "nn"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "it"    # [I

    .line 331
    invoke-static {p0}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->setId([I)V

    .line 332
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "content-ids: %s(#%d)"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$8(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 342
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 343
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$9(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .locals 1
    .param p0, "it"    # Landroid/os/Bundle;

    .line 348
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 349
    const-string v0, "content-part-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 270
    move-object/from16 v1, p1

    const-string v0, "ImageLength"

    const-string v2, "ImageWidth"

    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Lcom/samsung/android/sume/Event;

    iget v6, v1, Landroid/os/Message;->what:I

    .line 271
    invoke-static {v5, v6}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget v5, v1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    .line 270
    const-string v5, "handleMessage: what=%s, arg1=%d, arg2=%d, data=%s"

    invoke-static {v5, v4}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sume/Reply;->from(Landroid/os/Message;)Lcom/samsung/android/sume/Reply;

    move-result-object v3

    .line 274
    .local v3, "reply":Lcom/samsung/android/sume/Reply;
    const/4 v4, 0x0

    .line 276
    .local v4, "outBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v5, p0

    iget-object v9, v5, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;->weak_ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 277
    .local v9, "nn":Lcom/samsung/android/sume/nn/SumeNNClient;
    if-eqz v9, :cond_16

    .line 278
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reply-data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v10, 0x0

    .line 281
    .local v10, "needToWakeup":Z
    sget-object v11, Lcom/samsung/android/sume/nn/SumeNNClient$3;->$SwitchMap$com$samsung$android$sume$Event:[I

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sume/Event;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const-string/jumbo v12, "rows"

    const-string v13, "cols"

    packed-switch v11, :pswitch_data_0

    .line 491
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .local v16, "outBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 492
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 493
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "change to error state"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v10, 0x1

    move-object/from16 v4, v16

    goto/16 :goto_15

    .line 484
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_0
    :try_start_0
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->remove(I)V
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    move-object/from16 v16, v4

    goto/16 :goto_14

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/io/InvalidObjectException;
    invoke-virtual {v0}, Ljava/io/InvalidObjectException;->printStackTrace()V

    .line 488
    .end local v0    # "e":Ljava/io/InvalidObjectException;
    move-object/from16 v16, v4

    goto/16 :goto_14

    .line 477
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const-string v6, "nn destroyed[id=${nnId}]!!!"

    invoke-static {v0, v6, v2}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 478
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 479
    const/4 v10, 0x1

    .line 480
    goto/16 :goto_15

    .line 424
    :pswitch_2
    invoke-static {v9, v7}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1000(Lcom/samsung/android/sume/nn/SumeNNClient;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 425
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "src"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 427
    .local v6, "src":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "path"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v8}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 428
    .local v7, "dst":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 429
    .local v8, "imgWidth":I
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 432
    .local v11, "imgHeight":I
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_8

    .line 433
    const-string v12, ".(jpg|jpeg)$"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/samsung/android/sume/Utils;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, "ifs":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 437
    .local v13, "ofs":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v12, v14

    .line 438
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string/jumbo v15, "rw"

    invoke-direct {v14, v7, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v14

    .line 440
    invoke-static {v12}, Lcom/samsung/android/sume/MetaDataUtil;->getAppNMetadata(Ljava/io/FileInputStream;)Ljava/util/ArrayList;

    move-result-object v14

    .line 441
    .local v14, "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v15, :cond_0

    .line 442
    :try_start_2
    invoke-static {v14, v13}, Lcom/samsung/android/sume/MetaDataUtil;->setAppNMetadata(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 459
    .end local v14    # "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v4

    goto/16 :goto_6

    .line 456
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_2

    .line 444
    .restart local v14    # "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v12, v13}, Lcom/samsung/android/sume/MetaDataUtil;->copyExif(Ljava/io/FileInputStream;Ljava/io/RandomAccessFile;)Landroid/media/ExifInterface;

    move-result-object v15

    .line 445
    .local v15, "result":Landroid/media/ExifInterface;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v15, v2}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    nop

    .line 450
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {v15, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_1
    invoke-virtual {v15, v0}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    nop

    .line 454
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {v15, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_2
    invoke-virtual {v15}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 460
    .end local v14    # "meta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    .end local v15    # "result":Landroid/media/ExifInterface;
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 463
    goto :goto_1

    .line 461
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 462
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    .line 456
    :catch_3
    move-exception v0

    goto :goto_2

    .line 459
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    move-object v1, v0

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    goto :goto_6

    .line 456
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 457
    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 460
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v12, :cond_3

    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 461
    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 463
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    nop

    .line 466
    :goto_4
    if-eqz v13, :cond_4

    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 467
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 468
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 470
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 469
    :cond_4
    :goto_5
    goto :goto_b

    .line 459
    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 460
    :goto_6
    if-eqz v12, :cond_5

    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    .line 461
    :catch_7
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 463
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_7
    nop

    .line 466
    :goto_8
    if-eqz v13, :cond_6

    :try_start_b
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    .line 467
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 468
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_9
    nop

    .line 470
    :goto_a
    throw v1

    .line 433
    .end local v12    # "ifs":Ljava/io/FileInputStream;
    .end local v13    # "ofs":Ljava/io/RandomAccessFile;
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    goto :goto_b

    .line 432
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    move-object/from16 v16, v4

    .line 473
    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "dst":Ljava/lang/String;
    .end local v8    # "imgWidth":I
    .end local v11    # "imgHeight":I
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    :goto_b
    goto/16 :goto_14

    .line 424
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_9
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    goto/16 :goto_14

    .line 409
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_3
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all done[id=${nnId}]!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v7, [Ljava/lang/Object;

    .line 412
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    aput-object v2, v1, v6

    .line 411
    const-string v2, "[%s]state should be in \"RUNNING\" before \"IDLE\", when nn finish run"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state changed \"RUNNING\" -> \"IDLE\""

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 417
    :try_start_c
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$700(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 419
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 420
    nop

    .line 421
    goto/16 :goto_14

    .line 419
    :catchall_3
    move-exception v0

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 420
    throw v0

    .line 379
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_4
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-ne v0, v1, :cond_a

    move v0, v7

    goto :goto_c

    :cond_a
    move v0, v6

    :goto_c
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "[%s]state should be in \"RUNNING\", when nn full done"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/ContentStat;

    .line 386
    .local v1, "contentStat":Lcom/samsung/android/sume/ContentStat;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$900(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 387
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "handle output buffer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v1}, Lcom/samsung/android/sume/ContentStat;->getBuffer()Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaBuffer;

    .line 390
    .local v0, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 392
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v5

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v5

    invoke-virtual {v2, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/ColorFormat;->getValue()I

    move-result v5

    const-string v6, "color-format"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    .line 386
    .end local v0    # "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_b
    move-object/from16 v4, v16

    .line 399
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :goto_d
    :try_start_d
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->remove(I)V
    :try_end_d
    .catch Ljava/io/InvalidObjectException; {:try_start_d .. :try_end_d} :catch_9

    .line 402
    goto :goto_e

    .line 400
    :catch_9
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/InvalidObjectException;
    invoke-virtual {v0}, Ljava/io/InvalidObjectException;->printStackTrace()V

    .line 404
    .end local v0    # "e":Ljava/io/InvalidObjectException;
    :goto_e
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$800(Lcom/samsung/android/sume/nn/SumeNNClient;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 405
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "full-done"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/ContentStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 363
    .end local v1    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    :pswitch_5
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-ne v0, v1, :cond_c

    move v0, v7

    goto :goto_f

    :cond_c
    move v0, v6

    :goto_f
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "[%s]state should be in \"RUNNING\", when nn partial done"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success to partial processing"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    .line 372
    .local v0, "contentStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 375
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/ContentStat;

    .line 376
    .local v1, "blockStat":Lcom/samsung/android/sume/ContentStat;
    goto/16 :goto_14

    .line 338
    .end local v0    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    .end local v1    # "blockStat":Lcom/samsung/android/sume/ContentStat;
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_6
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-ne v0, v1, :cond_d

    move v0, v7

    goto :goto_10

    :cond_d
    move v0, v6

    :goto_10
    new-array v1, v7, [Ljava/lang/Object;

    .line 339
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    aput-object v2, v1, v6

    .line 338
    const-string v2, "[%s]state should be in \"RUNNING\", when nn partial start"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    .line 347
    .restart local v0    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 350
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/ContentStat;

    .line 351
    .local v1, "partStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/ContentStat;->setParent(Lcom/samsung/android/sume/ContentStat;)V

    .line 354
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$500(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sume/ContentStat;->getOpRuntime()Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/ContentStat;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 358
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$800(Lcom/samsung/android/sume/nn/SumeNNClient;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 359
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "partial-start"

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/ContentStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 326
    .end local v0    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    .end local v1    # "partStat":Lcom/samsung/android/sume/ContentStat;
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_7
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-eq v0, v1, :cond_f

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move v0, v6

    goto :goto_12

    :cond_f
    :goto_11
    move v0, v7

    :goto_12
    new-array v1, v7, [Ljava/lang/Object;

    .line 327
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    aput-object v2, v1, v6

    .line 326
    const-string v2, "[%s]state should be in \"IDLE\" before \"RUNNING\", when nn start run"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda10;-><init>()V

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, v9}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;)V

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 334
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const-string/jumbo v2, "state changed \"IDLE\" -> \"RUNNING\""

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 335
    goto/16 :goto_14

    .line 316
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_8
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$800(Lcom/samsung/android/sume/nn/SumeNNClient;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 317
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda8;-><init>()V

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda9;-><init>()V

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_14

    .line 283
    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    :pswitch_9
    move-object/from16 v16, v4

    .end local v4    # "outBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 285
    :try_start_e
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-eq v0, v1, :cond_12

    .line 286
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getNNId()I

    move-result v0

    invoke-static {v9, v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$302(Lcom/samsung/android/sume/nn/SumeNNClient;I)I

    .line 287
    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda6;-><init>()V

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda13;-><init>()V

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler$$ExternalSyntheticLambda7;-><init>()V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/op/OpRuntime;

    .line 287
    invoke-static {v9, v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$402(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/op/OpRuntime;)[Lcom/samsung/android/sume/op/OpRuntime;

    .line 293
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$400(Lcom/samsung/android/sume/nn/SumeNNClient;)[Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_13
    if-ge v2, v1, :cond_10

    aget-object v4, v0, v2

    .line 294
    .local v4, "rt":Lcom/samsung/android/sume/op/OpRuntime;
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$500(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    nop

    .end local v4    # "rt":Lcom/samsung/android/sume/op/OpRuntime;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 297
    :cond_10
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nn created[id=%d, runtimes=%s]!!!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$300(Lcom/samsung/android/sume/nn/SumeNNClient;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$400(Lcom/samsung/android/sume/nn/SumeNNClient;)[Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v1, v2}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 298
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[%s]state should be in \"CONNECTED\" before \"IDLE\", when nn created"

    new-array v2, v7, [Ljava/lang/Object;

    .line 299
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    aput-object v4, v2, v6

    .line 298
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state changed \"CONNECTED\" -> \"IDLE\""

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->getContentValues()[Landroid/content/ContentValues;

    move-result-object v0

    .line 303
    .local v0, "cv":[Landroid/content/ContentValues;
    if-eqz v0, :cond_11

    invoke-virtual {v9, v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->run([Landroid/content/ContentValues;)V

    .line 305
    :cond_11
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->getMediaBuffers()[Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v1

    .line 306
    .local v1, "mb":[Lcom/samsung/android/sume/MediaBuffer;
    if-eqz v1, :cond_12

    invoke-virtual {v9, v1}, Lcom/samsung/android/sume/nn/SumeNNClient;->run([Lcom/samsung/android/sume/MediaBuffer;)V

    .line 308
    .end local v0    # "cv":[Landroid/content/ContentValues;
    .end local v1    # "mb":[Lcom/samsung/android/sume/MediaBuffer;
    :cond_12
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->clear()V

    .line 309
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$700(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 311
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 312
    nop

    .line 313
    goto :goto_14

    .line 311
    :catchall_4
    move-exception v0

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 312
    throw v0

    .line 499
    :cond_13
    :goto_14
    move-object/from16 v4, v16

    .end local v16    # "outBuffer":Ljava/nio/ByteBuffer;
    .local v4, "outBuffer":Ljava/nio/ByteBuffer;
    :cond_14
    :goto_15
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1100(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 500
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$1100(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    move-result-object v0

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v2

    invoke-virtual {v3}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 502
    :cond_15
    if-eqz v10, :cond_17

    .line 503
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    :try_start_f
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$700(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 507
    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    goto :goto_16

    .line 507
    :catchall_5
    move-exception v0

    invoke-static {v9}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw v0

    .line 277
    .end local v10    # "needToWakeup":Z
    :cond_16
    move-object/from16 v16, v4

    .line 511
    :cond_17
    :goto_16
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNNClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
