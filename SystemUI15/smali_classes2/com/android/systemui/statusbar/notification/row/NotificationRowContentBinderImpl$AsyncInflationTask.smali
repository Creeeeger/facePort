.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;
.implements Lcom/android/systemui/statusbar/InflationTask;


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field public cancellationSignal:Landroid/os/CancellationSignal;

.field public final conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

.field public final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

.field public final inflateSynchronously:Z

.field public final inflationExecutor:Ljava/util/concurrent/Executor;

.field public final isMinimized:Z

.field public final logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

.field public final reInflateFlags:I

.field public final remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field public final row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

.field public final usesIncreasedHeadsUpHeight:Z

.field public final usesIncreasedHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 3

    move-object v0, p0

    move-object v1, p5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->inflationExecutor:Ljava/util/concurrent/Executor;

    move v2, p2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->inflateSynchronously:Z

    move v2, p3

    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->reInflateFlags:I

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v2, p8

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->isMinimized:Z

    move v2, p9

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->usesIncreasedHeight:Z

    move v2, p10

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->usesIncreasedHeadsUpHeight:Z

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    move-object v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    return-void
.end method

.method public static final access$doInBackgroundInternal(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

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
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->usesTemplate()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask$RtlEnabledContext;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask$RtlEnabledContext;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    iget v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->reInflateFlags:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->isMinimized:Z

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->usesIncreasedHeight:Z

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->usesIncreasedHeadsUpHeight:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v4, v2

    move-object v11, v1

    move-object/from16 v16, v3

    invoke-static/range {v4 .. v16}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$beginInflationAsync(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v6, "getting existing smart reply state (on wrong thread!)"

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v14, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v6, "inflating smart reply views"

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->reInflateFlags:I

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v8, v2

    move-object v9, v3

    move-object v13, v1

    move-object/from16 v16, v4

    invoke-static/range {v8 .. v16}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v4, "getting row image resolver (on wrong thread!)"

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string/jumbo v4, "waiting for preloaded images"

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->hasCache()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;J)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-object v3
.end method


# virtual methods
.method public final abort()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "cancelling inflate"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v2, "cancelling apply"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->cancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "aborted"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->doInBackground-IoAF18A()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method public final varargs doInBackground-IoAF18A()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "NotificationContentInflater.AsyncInflationTask#doInBackground"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->access$doInBackgroundInternal(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v3, "inflating"

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-object p0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public final getReInflateFlags()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->reInflateFlags:I

    return p0
.end method

.method public final handleError$1(Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/0x"

    invoke-static {v1, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t inflate view for notification "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifContentInflater"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->cancelRunningTasks()V

    return-void
.end method

.method public final handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->handleError$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationUpdated()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->cancelRunningTasks()V

    return-void
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "NotificationRowContentBinderImpl.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 13

    const-string v0, "NotificationRowContentBinderImpl.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lkotlin/Result$Failure;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->inflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->inflateSynchronously:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->isMinimized:Z

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->reInflateFlags:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->remoteViewClickHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v11, p0

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$apply(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->cancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->handleError$1(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    const-string v0, "NotificationRowContentBinderImpl.AsyncInflationTask"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
