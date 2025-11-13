.class public final Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;


# instance fields
.field public final conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

.field public final headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

.field public inflateSynchronously:Z

.field public final inflationExecutor:Ljava/util/concurrent/Executor;

.field public final logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

.field public final remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final smartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflationExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->smartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    sget-object p0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget p1, Lcom/android/systemui/statusbar/notification/row/shared/NotificationRowContentBinderRefactor;->$r8$clinit:I

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "New code path expects com.android.systemui.notification_row_content_binder_refactor to be enabled."

    invoke-static {p0}, Lcom/android/systemui/flags/RefactorFlagUtils;->assertOnEngBuild(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v4, p3

    move-object/from16 v1, p4

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logBinding$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logBinding$2;

    const-string v7, "NotificationRowContentBinder"

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v3, v5, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v3

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v4, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v2, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->preloadImages(Landroid/app/Notification;)V

    if-eqz p5, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_1
    :goto_0
    and-int/lit8 v2, v4, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_2
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_3
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_4
    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_5

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    new-instance v12, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflateSynchronously:Z

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v11, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->smartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object/from16 v17, v13

    move-object v13, v1

    move-object v1, v12

    move/from16 v4, p3

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 p1, v12

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflateSynchronously:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->doInBackground-IoAF18A()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$AsyncInflationTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move-object/from16 v2, p1

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflationExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public final cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logCancelBindAbortedTask$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logCancelBindAbortedTask$2;

    const-string v3, "NotificationRowContentBinder"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return v0
.end method

.method public final inflateNotificationViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZILandroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v11, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-boolean v12, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v13, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->notifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->headsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    sget-object v20, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->Companion:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->conversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object/from16 v7, v20

    move/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v7 .. v19}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$beginInflationAsync(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;

    move-result-object v11

    move-object/from16 v12, p2

    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object/from16 v2, v20

    move-object v3, v11

    move/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/16 v24, 0x0

    move-object/from16 v14, v20

    move/from16 v16, p4

    move/from16 v17, v1

    move-object/from16 v18, v11

    move/from16 v19, p5

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-static/range {v14 .. v25}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;->access$apply(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$Companion;Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;

    return-object v11
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->inflateSynchronously:Z

    return-void
.end method

.method public final unbindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;->logger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logUnbinding$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logUnbinding$2;

    const-string v3, "NotificationRowContentBinder"

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p3, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p3, :cond_6

    and-int v2, p3, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    goto :goto_1

    :cond_1
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;

    invoke-direct {v4, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$3;

    invoke-direct {v4, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$3;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$2;

    invoke-direct {v3, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$1;

    invoke-direct {v4, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl$freeNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    :cond_5
    :goto_1
    not-int v2, v1

    and-int/2addr p3, v2

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
