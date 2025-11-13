.class public final Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/recordissue/IssueRecordingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recordissue/IssueRecordingService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iput-object p2, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    sget-object v1, Lcom/android/systemui/recordissue/IssueRecordingService;->Companion:Lcom/android/systemui/recordissue/IssueRecordingService$Companion;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationId:I

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object v3, v3, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->$intent:Landroid/content/Intent;

    const-string v1, "extra_path"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object v1, v1, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object v1, v1, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "key_takeBugReport"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->iActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->requestBugReportWithExtraAttachment(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;->this$0:Lcom/android/systemui/recordissue/IssueRecordingService;

    iget-object v1, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Messenger;

    new-instance v4, Lcom/android/systemui/recordissue/TraceurMessageSender$TraceurMessageHandler;

    iget-object v5, v1, Lcom/android/systemui/recordissue/TraceurMessageSender;->backgroundLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v0, v5}, Lcom/android/systemui/recordissue/TraceurMessageSender$TraceurMessageHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Looper;)V

    invoke-direct {v2, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 p0, 0x2

    invoke-static {v1, p0, v3, v2, p0}, Lcom/android/systemui/recordissue/TraceurMessageSender;->notifyTraceur$default(Lcom/android/systemui/recordissue/TraceurMessageSender;ILandroid/os/Bundle;Landroid/os/Messenger;I)V

    :goto_0
    return-void
.end method
