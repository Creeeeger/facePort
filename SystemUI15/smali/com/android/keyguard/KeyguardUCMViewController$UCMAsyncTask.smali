.class public final Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final opCode:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, [Ljava/lang/String;

    iget p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_8

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    monitor-enter v3

    :try_start_0
    const-string v4, "KeyguardUCMPinView"

    const-string v5, "getAgentInfoAndUpdateStatus called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    const/4 v5, -0x1

    const-wide/16 v6, 0x3e8

    if-nez v4, :cond_1

    const-string v2, "KeyguardUCMPinView"

    const-string v4, "failed to get UCM service"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v2, "KeyguardUCMPinView"

    const-string v4, "failed to get getStatus"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_2
    :try_start_2
    const-string v10, "errorresponse"

    invoke-virtual {v9, v10, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_5

    const-string v10, "KeyguardUCMPinView"

    const-string v12, "Boot init condition"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    move v10, p1

    :goto_1
    if-ge v10, v2, :cond_5

    invoke-interface {v4, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v12, "errorresponse"

    invoke-virtual {v9, v12, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eq v12, v11, :cond_3

    goto :goto_2

    :cond_3
    const-string v12, "KeyguardUCMPinView"

    const-string v13, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string v2, "KeyguardUCMPinView"

    const-string v4, "failed to get getStatus"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :cond_5
    :goto_2
    :try_start_5
    const-string/jumbo v2, "state"

    invoke-virtual {v9, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string v2, "lockscreen_message"

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    const-string v2, "miscInfo"

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    const-string v2, "minPinLength"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    const-string v2, "maxPinLength"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    const-string v2, "minPukLength"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    const-string v2, "maxPukLength"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    const-string v2, "remainCnt"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string v2, "errorresponse"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pin puk "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "misc : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pin remain : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    monitor-exit v3

    :goto_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget v3, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    if-eq v3, v5, :cond_6

    goto :goto_8

    :cond_6
    iget v2, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    if-eqz v2, :cond_7

    goto :goto_8

    :cond_7
    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    const-string v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetStatus thread result : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget v4, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_7
    monitor-exit v3

    throw p0

    :cond_8
    :goto_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_9
    sget-object p1, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    monitor-exit p1

    :goto_9
    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    iget v1, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    iget p1, p1, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mstopProgress(Lcom/android/keyguard/KeyguardUCMViewController;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;->opCode:I

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mstartProgress(Lcom/android/keyguard/KeyguardUCMViewController;Z)V

    return-void
.end method
