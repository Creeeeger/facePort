.class public interface abstract Lcom/android/internal/util/function/pooled/PooledLambda;
.super Ljava/lang/Object;
.source "PooledLambda.java"


# direct methods
.method public static blacklist __()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    return-object v0
.end method

.method public static blacklist __(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/util/function/pooled/PooledLambda;->__()Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v4, 0xc

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v6, 0x1

    const/16 v18, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Landroid/os/Message;"
        }
    .end annotation

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuadPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadPredicate<",
            "-TA;-TB;-TC;-TD;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintPredicate<",
            "-TA;-TB;-TC;-TD;-TE;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriPredicate<",
            "-TA;-TB;-TC;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TA;>;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TA;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiPredicate<",
            "-TA;-TB;>;TA;",
            "Lcom/android/internal/util/function/pooled/ArgumentPlaceholder<",
            "TB;>;)",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TB;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledPredicate;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/DodecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;-T",
            "L;",
            ">;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;T",
            "L;",
            ")",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v2, 0xc

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HeptConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;>;TA;TB;TC;TD;TE;TF;TG;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/HexConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;>;TA;TB;TC;TD;TE;TF;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/NonaConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/OctConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;>;TA;TB;TC;TD;TE;TF;TG;TH;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "-TA;-TB;-TC;-TD;>;TA;TB;TC;TD;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "-TA;-TB;-TC;-TD;-TE;>;TA;TB;TC;TD;TE;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "-TA;-TB;-TC;>;TA;TB;TC;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "G:",
            "Ljava/lang/Object;",
            "H:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            "J:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/function/UndecConsumer<",
            "-TA;-TB;-TC;-TD;-TE;-TF;-TG;-TH;-TI;-TJ;-TK;>;TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v4, 0x1

    const/16 v16, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;TA;TB;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TA;>;TA;)",
            "Lcom/android/internal/util/function/pooled/PooledRunnable;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledRunnable;

    return-object v0
.end method

.method public static blacklist obtainSupplier(D)Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-object v0
.end method

.method public static blacklist obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-object v0
.end method

.method public static blacklist obtainSupplier(J)Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    iput-wide p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-object v0
.end method

.method public static blacklist obtainSupplier(Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/android/internal/util/function/pooled/PooledSupplier<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    iput-object p0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist recycle()V
.end method

.method public abstract blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
.end method
