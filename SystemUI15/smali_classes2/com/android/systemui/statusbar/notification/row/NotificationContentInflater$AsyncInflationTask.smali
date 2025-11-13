.class public final Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;
.implements Lcom/android/systemui/statusbar/InflationTask;


# instance fields
.field public final mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mContext:Landroid/content/Context;

.field public final mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

.field public final mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mError:Ljava/lang/Exception;

.field public final mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

.field public final mInflateSynchronously:Z

.field public final mInflationExecutor:Ljava/util/concurrent/Executor;

.field public final mIsAllowPrivateNotificationsWhenUnsecure:Z

.field public final mIsMinimized:Z

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

.field public final mReInflateFlags:I

.field public final mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final mRemoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field public final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mSmartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

.field public final mUsesIncreasedHeadsUpHeight:Z

.field public final mUsesIncreasedHeight:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/widget/RemoteViews$InteractionHandler;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Z)V
    .locals 4

    move-object v0, p0

    move-object v1, p5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflationExecutor:Ljava/util/concurrent/Executor;

    move v3, p2

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflateSynchronously:Z

    move v3, p3

    iput v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSmartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    invoke-virtual {p7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    move v2, p8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsMinimized:Z

    move v2, p9

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    move v2, p10

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsAllowPrivateNotificationsWhenUnsecure:Z

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Z)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/widget/RemoteViews$InteractionHandler;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Z)V

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "cancelling inflate"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "cancelling apply"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "aborted"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/Void;

    sget p1, Lcom/android/app/tracing/TraceUtils;->$r8$clinit:I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "NotificationContentInflater.AsyncInflationTask#doInBackground"

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackgroundInternal()Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "inflating"

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-object p0

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public final doInBackgroundInternal()Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v2, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    :catch_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->usesTemplate()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask$RtlEnabledContext;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask$RtlEnabledContext;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v2, v3, v9, v4}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->processNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_1
    iget v6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsMinimized:Z

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsAllowPrivateNotificationsWhenUnsecure:Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    move-object v4, v2

    move-object v15, v1

    invoke-direct/range {v4 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;ZLandroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;ZZLcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Landroid/content/Context;)V

    sget v3, Lcom/android/app/tracing/TraceUtils;->$r8$clinit:I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "NotificationContentInflater.createRemoteViews"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v5, "getting existing smart reply state (on wrong thread!)"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v15, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v5, "inflating smart reply views"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget v11, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSmartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v10, v2

    move-object v14, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    sget v1, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v4, "getting row image resolver (on wrong thread!)"

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string/jumbo v4, "waiting for preloaded images"

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->hasCache()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;J)V

    invoke-interface {v0, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw v1
.end method

.method public getReInflateFlags()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    return p0
.end method

.method public final handleError(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t inflate view for notification "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CentralSurfaces"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v2, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t inflate contentViews"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->cancelRunningTasks()V

    return-void
.end method

.method public final handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationUpdated()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->hasCache()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mImageCache:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$ImageCache;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;->mResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageCache$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->cancelRunningTasks()V

    return-void
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    const-string p1, "NotificationContentInflater.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public final onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V
    .locals 12

    const-string v0, "NotificationContentInflater.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflateSynchronously:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsMinimized:Z

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v4, p1

    move-object v10, p0

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    const-string v0, "NotificationContentInflater.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
