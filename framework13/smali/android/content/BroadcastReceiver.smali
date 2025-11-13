.class public abstract Landroid/content/BroadcastReceiver;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/BroadcastReceiver$PendingResult;
    }
.end annotation


# instance fields
.field private greylist-max-o mDebugUnregister:Z

.field private greylist mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method


# virtual methods
.method public final whitelist abortBroadcast()V
    .locals 2

    .line 589
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 590
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 591
    return-void
.end method

.method greylist-max-o checkSynchronousHint()V
    .locals 3

    .line 687
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_2

    .line 694
    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BroadcastReceiver trying to return result during a non-ordered broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 700
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    return-void

    .line 695
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 688
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call while result is not pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist clearAbortBroadcast()V
    .locals 2

    .line 598
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    .line 599
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    .line 601
    :cond_0
    return-void
.end method

.method public final whitelist getAbortBroadcast()Z
    .locals 1

    .line 571
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist getDebugUnregister()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    return v0
.end method

.method public final greylist getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    .line 642
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method

.method public final whitelist getResultCode()I
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist getResultData()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final whitelist getResultExtras(Z)Landroid/os/Bundle;
    .locals 3
    .param p1, "makeMap"    # Z

    .line 526
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-nez v0, :cond_0

    .line 527
    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_0
    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 530
    .local v0, "e":Landroid/os/Bundle;
    if-nez p1, :cond_1

    return-object v0

    .line 531
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    iput-object v2, v1, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 532
    :cond_2
    return-object v0
.end method

.method public final whitelist getSendingUser()Landroid/os/UserHandle;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 656
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSendingUserId()I
    .locals 1

    .line 661
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iget v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mSendingUser:I

    return v0
.end method

.method public final whitelist goAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 5

    .line 392
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 393
    .local v0, "res":Landroid/content/BroadcastReceiver$PendingResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 395
    if-eqz v0, :cond_0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver#goAsync#ClassName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/BroadcastReceiver$PendingResult;->mReceiverClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 402
    :cond_0
    return-object v0
.end method

.method public final whitelist isInitialStickyBroadcast()Z
    .locals 1

    .line 618
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isOrderedBroadcast()Z
    .locals 1

    .line 608
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mOrderedHint:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public whitelist peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "myContext"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 420
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 421
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 423
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 424
    nop

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 424
    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-interface {v0, p2, v2, v3}, Landroid/app/IActivityManager;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 427
    goto :goto_0

    .line 426
    :catch_0
    move-exception v2

    .line 428
    :goto_0
    return-object v1
.end method

.method public final whitelist setDebugUnregister(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 676
    iput-boolean p1, p0, Landroid/content/BroadcastReceiver;->mDebugUnregister:Z

    .line 677
    return-void
.end method

.method public final whitelist setOrderedHint(Z)V
    .locals 0
    .param p1, "isOrdered"    # Z

    .line 627
    return-void
.end method

.method public final greylist setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .line 634
    iput-object p1, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 635
    return-void
.end method

.method public final whitelist setResult(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 558
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 559
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 560
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p3, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 562
    return-void
.end method

.method public final whitelist setResultCode(I)V
    .locals 1
    .param p1, "code"    # I

    .line 449
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 450
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultCode:I

    .line 451
    return-void
.end method

.method public final whitelist setResultData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 478
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 479
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultData:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public final whitelist setResultExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 510
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->checkSynchronousHint()V

    .line 511
    iget-object v0, p0, Landroid/content/BroadcastReceiver;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p1, v0, Landroid/content/BroadcastReceiver$PendingResult;->mResultExtras:Landroid/os/Bundle;

    .line 512
    return-void
.end method
