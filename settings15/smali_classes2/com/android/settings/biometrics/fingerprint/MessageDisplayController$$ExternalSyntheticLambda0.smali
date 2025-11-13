.class public final synthetic Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMessageList:Ljava/util/Deque;

    if-eqz v4, :cond_1

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMessageList:Ljava/util/Deque;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;

    iget-wide v4, v4, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;->mTimeStamp:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressMessageList:Ljava/util/Deque;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mLastProgressMessageDisplayed:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    if-eqz v5, :cond_0

    iget v6, v4, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->mRemaining:I

    iget v5, v5, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;->mRemaining:I

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mMustDisplayProgress:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mMustDisplayProgress:Z

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    move-object v2, v3

    goto/16 :goto_5

    :cond_3
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mLastProgressMessageDisplayed:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    if-eqz v4, :cond_4

    move-object v2, v4

    goto/16 :goto_5

    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v7, v2

    :goto_2
    iget-object v8, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMessageList:Ljava/util/Deque;

    if-eqz v8, :cond_5

    check-cast v8, Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMessageList:Ljava/util/Deque;

    check-cast v8, Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;

    iget-wide v8, v8, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;->mTimeStamp:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_5

    iget-object v7, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mHelpMessageList:Ljava/util/Deque;

    check-cast v7, Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;

    iget-object v8, v7, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;->mHelpString:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mPrioritizeAcquireMessages:Z

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    move v7, v6

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v7, v9, :cond_6

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, v8

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;

    invoke-direct {v0, p0, v6, v1}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$HelpMessage;-><init>(Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;ILjava/lang/CharSequence;)V

    move-object v7, v0

    goto :goto_4

    :cond_8
    move-object v7, v2

    :cond_9
    :goto_4
    if-nez v7, :cond_a

    if-eqz v3, :cond_d

    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mProgressPriorityOverHelp:Z

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    goto/16 :goto_1

    :cond_b
    if-eqz v7, :cond_2

    if-eqz v3, :cond_c

    iput-boolean v5, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mMustDisplayProgress:Z

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mLastProgressMessageDisplayed:Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$ProgressMessage;

    :cond_c
    move-object v2, v7

    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController$Message;->display()V

    goto :goto_6

    :cond_e
    iput-boolean v5, p0, Lcom/android/settings/biometrics/fingerprint/MessageDisplayController;->mWaitingForMessage:Z

    :goto_6
    return-void
.end method
