.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;


# instance fields
.field public final mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

.field public final mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

.field public mInflateSynchronously:Z

.field public final mInflationExecutor:Ljava/util/concurrent/Executor;

.field public final mIsMediaInQS:Z

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

.field public final mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field public final mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/media/controls/util/MediaFeatureFlag;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    sget v0, Lcom/android/systemui/statusbar/notification/row/shared/NotificationRowContentBinderRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-object p1, p4, Lcom/android/systemui/media/controls/util/MediaFeatureFlag;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsMediaInQS:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    return-void
.end method

.method public static apply(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;
    .locals 23

    move-object/from16 v15, p3

    move/from16 v13, p4

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    move-object/from16 v10, p10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v0, "NotificationContentInflater#apply"

    invoke-static/range {p7 .. p7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v4, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v3, v11, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    and-int/lit8 v0, v13, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    move-object/from16 v5, p5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v5, v12, v6}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;

    invoke-direct {v0, v10, v12, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    const-string v14, "applying contracted view"

    invoke-virtual {v10, v12, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v14, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    const/16 v17, 0x1

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v20, v2

    move/from16 v2, p2

    move-object/from16 v21, v3

    move-object/from16 v3, p3

    move-object/from16 v22, v4

    move/from16 v4, p4

    move-object/from16 v6, v19

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, v16

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, v22

    move-object/from16 v13, v18

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, p10

    invoke-static/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    move/from16 v15, p4

    const/4 v13, 0x2

    goto :goto_0

    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v15, p4

    move v13, v7

    :goto_0
    and-int/lit8 v0, v15, 0x2

    if-eqz v0, :cond_1

    move-object/from16 v12, p3

    iget-object v0, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    move-object/from16 v6, p5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-object/from16 v11, p6

    invoke-virtual {v6, v11, v13}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v9, v0, 0x1

    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;

    move-object/from16 v7, p10

    invoke-direct {v8, v7, v11, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    const-string v0, "applying expanded view"

    invoke-virtual {v7, v11, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v4, v22

    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v14

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    move-object/from16 v22, v4

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v17, v8

    move-object/from16 v8, p7

    move/from16 v18, v10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, v22

    move-object/from16 v13, v16

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, p10

    invoke-static/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    goto :goto_1

    :cond_1
    const/16 v18, 0x1

    :goto_1
    move/from16 v15, p4

    and-int/lit16 v0, v15, 0x80

    if-eqz v0, :cond_2

    move-object/from16 v11, p3

    iget-object v0, v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPromotedOngoingView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;

    move-object/from16 v16, v0

    move-object/from16 v10, p6

    move-object/from16 v8, p10

    invoke-direct {v0, v8, v10, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    const-string v0, "applying promoted ongoing view"

    invoke-virtual {v8, v10, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v5, 0x80

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v15, v20

    move-object/from16 v17, p10

    invoke-static/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_2
    const/4 v0, 0x4

    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_3

    move-object/from16 v15, p3

    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    move-object/from16 v6, p5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-object/from16 v13, p6

    invoke-virtual {v6, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    new-instance v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;

    move-object/from16 v11, p10

    invoke-direct {v12, v11, v13, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    const-string v0, "applying heads up view"

    invoke-virtual {v11, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v10, v22

    iget-object v8, v10, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v14

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v15, v20

    move-object/from16 v16, v19

    move-object/from16 v17, p10

    invoke-static/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_3
    const/16 v0, 0x8

    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_4

    move-object/from16 v15, p3

    iget-object v1, v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    move-object/from16 v6, p5

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    move-object/from16 v13, p6

    invoke-virtual {v6, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    new-instance v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;

    move-object/from16 v11, p10

    invoke-direct {v12, v11, v13, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    const-string v0, "applying public view"

    invoke-virtual {v11, v13, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object/from16 v10, v21

    iget-object v8, v10, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v14

    const/16 v5, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    move-object/from16 v8, p7

    move-object/from16 v17, v10

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v15, v20

    move-object/from16 v16, v18

    move-object/from16 v17, p10

    invoke-static/range {v0 .. v17}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    :cond_4
    sget v0, Lcom/android/systemui/statusbar/notification/row/shared/AsyncGroupHeaderViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, v20

    move-object/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda0;

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, v20

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v0
.end method

.method public static applyRemoteView(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "ZZ",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Z",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v3, p7

    move-object/from16 v15, p10

    move-object/from16 v14, p13

    move-object/from16 v13, p15

    invoke-virtual/range {p16 .. p16}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v12

    if-eqz p1, :cond_3

    if-eqz p9, :cond_1

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v11, p12

    invoke-virtual {v12, v0, v11, v15}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v9, p16

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v2, p8

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    invoke-virtual {v12, v0, v14, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    invoke-virtual/range {p8 .. p8}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v14, v3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v5, "applying view synchronously"

    move-object/from16 v0, p15

    move-object/from16 v3, p11

    move-object/from16 v4, p17

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_3
    move-object/from16 v2, p8

    move-object/from16 v11, p12

    move-object/from16 v9, p16

    new-instance v19, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;

    move-object/from16 v1, v19

    move-object/from16 v3, p7

    move-object/from16 v4, p15

    move-object/from16 v5, p11

    move-object/from16 v6, p17

    move/from16 v7, p5

    move/from16 v8, p9

    move-object/from16 v10, p14

    move-object/from16 v11, p3

    move-object/from16 v20, v12

    move/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p13

    move-object/from16 v16, v20

    move-object/from16 v17, p12

    move-object/from16 v18, p10

    invoke-direct/range {v1 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$8;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;IZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Landroid/view/View;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)V

    if-eqz p9, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v2, p12

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v2, p13

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    :goto_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p15

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne p0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Z
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    const/4 v3, 0x0

    if-nez p3, :cond_0

    return v3

    :cond_0
    iget-object p3, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v4, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const-string v5, "finishing"

    invoke-virtual {p7, p5, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_2

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    if-eqz p7, :cond_1

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    move-object v5, p2

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v5, p5, v2, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v2}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_2
    :goto_0
    iget-object p7, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p7

    iget-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v6, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p7, v5, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p7

    iput-boolean p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    and-int/lit8 p7, p1, 0x2

    const/4 v5, 0x0

    if-eqz p7, :cond_9

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    if-eqz p7, :cond_3

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    move-object v6, p2

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v6, p5, v1, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_1

    :cond_3
    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    if-nez p7, :cond_4

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    :cond_4
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v1, v6}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_5
    :goto_1
    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    if-eqz p7, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    iput-object v1, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    if-nez v1, :cond_7

    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    goto :goto_2

    :cond_6
    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    iput-object v5, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedSmartReplyView:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    :cond_7
    :goto_2
    if-eqz p7, :cond_8

    move p7, v2

    goto :goto_3

    :cond_8
    move p7, v3

    :goto_3
    iput-boolean p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandable:Z

    iget-object p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpandable$1()Z

    move-result v1

    invoke-virtual {p7, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->updateExpandButtonsDuringLayout(ZZ)V

    iget-object p7, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p7

    iget-object v1, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v3, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {p7, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p7

    iput-boolean p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomBigNotification:Z

    :cond_9
    and-int/lit16 p7, p1, 0x80

    if-eqz p7, :cond_a

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedPromotedOngoingView:Landroid/view/View;

    if-eqz p7, :cond_a

    iput-object p7, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mPromotedOngoingView:Landroid/view/View;

    :cond_a
    and-int/lit8 p7, p1, 0x4

    if-eqz p7, :cond_f

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    if-eqz p7, :cond_b

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {v1, p5, v0, p7}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_4

    :cond_b
    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    if-nez p7, :cond_c

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_4

    :cond_c
    move-object p7, p2

    check-cast p7, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p7, p5, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    invoke-virtual {p7, p5, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_d
    :goto_4
    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    if-eqz p7, :cond_e

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    invoke-virtual {p3, p7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    :goto_5
    iget-object p7, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p7

    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    iget-object v1, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {p7, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p7

    iput-boolean p7, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomHeadsUpNotification:Z

    :cond_f
    sget p7, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    iput-object p7, p3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    const/16 p3, 0x8

    and-int/2addr p1, p3

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    if-eqz p1, :cond_10

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p2, p5, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_6

    :cond_10
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    invoke-virtual {p2, p5, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p5, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    :cond_11
    :goto_6
    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz p1, :cond_12

    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object p2, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object p3, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p1

    iput-boolean p1, p6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomPublicNotification:Z

    :cond_12
    sget p1, Lcom/android/systemui/statusbar/notification/row/shared/AsyncGroupHeaderViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncGroupHeaderInflation()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarText:Ljava/lang/CharSequence;

    sget p2, Lcom/android/systemui/statusbar/notification/row/shared/NotificationRowContentBinderRefactor;->$r8$clinit:I

    sget-object p2, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget-object p2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHeadsUpStatusBarText:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mHeadsUpStatusBarTextPublic:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    const-string p0, "NotificationContentInflater#apply"

    invoke-static {p6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    if-eqz p4, :cond_13

    invoke-interface {p4, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_13
    return v2
.end method

.method public static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p4, p2, p5, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p4, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V
    .locals 8

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const-string p1, "inflating contracted smart reply state"

    invoke-virtual {p7, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    move-object p1, p6

    check-cast p1, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    :cond_4
    if-eqz v3, :cond_5

    const-string p1, "inflating expanded smart reply state"

    invoke-virtual {p7, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-object v2, p6

    check-cast v2, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->expandedInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_5
    if-eqz v1, :cond_6

    const-string p1, "inflating heads up smart reply state"

    invoke-virtual {p7, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskProgress(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->inflatedSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-object v0, p6

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->headsUpInflatedSmartReplies:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_6
    return-void
.end method

.method public static isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    const-class v2, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p2, 0x10205fb

    if-eq p0, p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x1020451

    if-eq p0, p1, :cond_4

    :cond_3
    :goto_1
    move v0, v1

    :cond_4
    return v0
.end method

.method public static isValidView(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "NotificationContentInflater#satisfiesMinHeightRequirement"

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const v3, 0x7f070bc1

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->measure(II)V

    const v1, 0x7f070bc0

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p0, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const-string p0, "inflated notification does not meet minimum height requirement"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    throw p0
.end method


# virtual methods
.method public final bindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v4, p3

    move-object/from16 v1, p4

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v9, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logBinding$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logBinding$2;

    const-string v10, "NotificationRowContentBinder"

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v7, v9, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    check-cast v10, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v9, v10, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v4, v10, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v5, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v7, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->preloadImages(Landroid/app/Notification;)V

    if-eqz p5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :cond_1
    :goto_0
    and-int/lit8 v5, v4, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v5, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_2
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_3
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_4

    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_4
    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_5

    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_5
    sget v2, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    move-result v2

    move/from16 v19, v2

    goto :goto_1

    :cond_6
    move/from16 v19, v12

    :goto_1
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v15, v5, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsMediaInQS:Z

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    move-object/from16 v20, v15

    move-object v15, v12

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object/from16 v18, v12

    move v12, v1

    move-object v1, v11

    move/from16 v4, p3

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 p1, v11

    move v11, v12

    move-object/from16 v12, p6

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    invoke-direct/range {v1 .. v19}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;Z)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Void;

    sget v0, Lcom/android/app/tracing/TraceUtils;->$r8$clinit:I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "NotificationContentInflater.AsyncInflationTask#doInBackground"

    invoke-static {v0}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackgroundInternal()Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, p1

    :try_start_1
    iput-object v2, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v5, "inflating"

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->logAsyncTaskException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, v21

    :goto_2
    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_8
    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_9
    throw v0

    :cond_a
    move-object/from16 v3, p1

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_4
    return-void
.end method

.method public final cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

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

.method public inflateNotificationViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZILandroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    move-result v2

    :goto_0
    move v12, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-boolean v9, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v11, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mHeadsUpStyleProvider:Lcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mNotifLayoutInflaterFactoryProvider:Lcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;

    move-object v3, v2

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v14, p7

    invoke-direct/range {v3 .. v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;ZLandroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/notification/row/HeadsUpStyleProvider;ZZLcom/android/systemui/statusbar/notification/row/NotifLayoutInflaterFactory$Provider;Landroid/content/Context;)V

    sget v3, Lcom/android/app/tracing/TraceUtils;->$r8$clinit:I

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "NotificationContentInflater.createRemoteViews"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v3, p2

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mCurrentSmartReplyState:Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    move-object v4, v2

    move/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)V

    sget v4, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflationExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isMinimized:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v12, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/4 v13, 0x0

    move/from16 v5, p4

    move-object v7, v2

    move/from16 v8, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static/range {v4 .. v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(Ljava/util/concurrent/Executor;ZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;)Landroid/os/CancellationSignal;

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    throw v1
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    return-void
.end method

.method public final unbindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logUnbinding$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger$logUnbinding$2;

    const-string v6, "NotificationRowContentBinder"

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p3, v6, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    move v3, v2

    :goto_0
    if-eqz p3, :cond_6

    and-int v4, p3, v3

    if-eqz v4, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v0, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    sget v4, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    goto :goto_1

    :cond_1
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;

    const/4 v6, 0x3

    invoke-direct {v5, p0, p2, p1, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, p1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    new-instance v5, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    :cond_5
    :goto_1
    not-int v4, v3

    and-int/2addr p3, v4

    shl-int/2addr v3, v2

    goto :goto_0

    :cond_6
    return-void
.end method
