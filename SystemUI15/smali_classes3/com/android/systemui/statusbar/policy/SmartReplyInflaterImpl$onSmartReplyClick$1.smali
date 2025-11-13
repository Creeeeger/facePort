.class final Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $button:Landroid/widget/Button;

.field final synthetic $choice:Ljava/lang/CharSequence;

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $replyIndex:I

.field final synthetic $smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

.field final synthetic $smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Landroid/widget/Button;Ljava/lang/CharSequence;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$button:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$choice:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$replyIndex:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "SmartReplyViewInflater"

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v3}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mEditChoicesBeforeSending:Z

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$button:Landroid/widget/Button;

    new-array v8, v5, [Landroid/app/RemoteInput;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object v9, v8, v4

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$choice:Ljava/lang/CharSequence;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$replyIndex:I

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    goto/16 :goto_5

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->smartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget v8, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$replyIndex:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$button:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v10

    iget-object v4, v0, Lcom/android/systemui/statusbar/SmartReplyController;->mCallback:Lcom/android/systemui/statusbar/SmartReplyController$Callback;

    invoke-interface {v4, v3, v9}, Lcom/android/systemui/statusbar/SmartReplyController$Callback;->onSmartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    const-string v12, "QPN001"

    const-string v13, "QPNE0011"

    const-string/jumbo v14, "type"

    const-string/jumbo v15, "reply texts"

    const-string v16, "app"

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v12 .. v17}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    :try_start_1
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->notifManager:Landroid/app/INotificationManager;

    if-eqz v6, :cond_3

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const-string v11, "NOUI_2023"

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x1

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->addReplyHistory(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$choice:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->access$createRemoteInputIntent(Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    iget-object v6, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;

    iget-object v7, v3, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_2
    const-string v3, "Unable to write smart reply to history"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    const-string v3, "Unable to send smart reply"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$onSmartReplyClick$1;->$smartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
