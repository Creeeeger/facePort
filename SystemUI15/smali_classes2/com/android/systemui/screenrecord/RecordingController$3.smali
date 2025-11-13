.class public final Lcom/android/systemui/screenrecord/RecordingController$3;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingController;

.field public final synthetic val$startIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;JJLandroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->val$startIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    const-string v0, "RecordingController"

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    iget-object v1, v1, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    invoke-interface {v2}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdownEnd()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->val$startIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v2, v2, Lcom/android/systemui/screenrecord/RecordingController;->mInteractiveBroadcastOption:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v2, v1, Lcom/android/systemui/screenrecord/RecordingController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v3, v1, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, v1, Lcom/android/systemui/screenrecord/RecordingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.screenrecord.UPDATE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v1, v4, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    const-string/jumbo p0, "sent start intent"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pending intent was cancelled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final onTick(J)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController$3;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdown(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
